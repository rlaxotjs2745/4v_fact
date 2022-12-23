//bootstable.js
/*
Bootstable
 @description  Javascript library to make HMTL tables editable, using Bootstrap
 @version 1.1
 @autor Tito Hinostroza
*/
"use strict";
//Global variables
var params = null;  		//Parameters
var colsEdi =null;
var newColHtml = '<div class="btn-group pull-right">'+
    '<button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);">' +
    '<span class="fas fa-pen" > </span>'+
    '</button>'+
    '<button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);">' +
    '<span class="fas fa-trash-alt" > </span>'+
    '</button>'+
    '<button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);">' +
    '<span class="fas fa-check" > </span>'+
    '</button>'+
    '<button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);">' +
    '<span class="far fa-window-close" > </span>'+
    '</button>'+
    '<button id="bSet" type="button" class="btn btn-sm btn-default" onclick="rowApllySet(this);">' +
    '<span class="fas fa-check" > </span>'+
    '</button>'+
    '</div>';
var colEdicHtml = '<td name="buttons">'+newColHtml+'</td>';

$.fn.SetEditable = function (options) {
    var defaults = {
        columnsEd: null,         //Index to editable columns. If null all td editables. Ex.: "1,2,3,4,5"
        $addButton: null,        //Jquery object of "Add" button
        onEdit: function() {},   //Called after edition
        onBeforeDelete: function() {}, //Called before deletion
        onDelete: function() {}, //Called after deletion
        onAdd: function() {}     //Called when added a new row
    };
    params = $.extend(defaults, options);
    this.find('thead tr').append('<td name="buttons" class="text-center px-2" style="width:8%">변경</td>');  //encabezado vacío
    this.find('tbody tr').append(colEdicHtml);
    var $tabedi = this;   //Read reference to the current table, to resolve "this" here.
    //Process "addButton" parameter
    if (params.$addButton != null) {
        //Se proporcionó parámetro
        params.$addButton.click(function() {
            rowAddNew($tabedi.attr("id"));
        });
    }
    //Process "columnsEd" parameter
    if (params.columnsEd != null) {
        //Extract felds
        colsEdi = params.columnsEd.split(',');
    }
};
function IterarCamposEdit($cols, tarea) {
//Itera por los campos editables de una fila
    var n = 0;
    $cols.each(function() {
        n++;
        if ($(this).attr('data-type')=='buttons') return;
        if ($(this).attr('name')=='buttons') return;  //excluye columna de botones
        if ($(this).attr('name')=='checkbox') return;
        if (!EsEditable(n-1)) return;   //noe s campo editable
        tarea($(this));
    });

    function EsEditable(idx) {
        //Indica si la columna pasada está configurada para ser editable
        if (colsEdi==null) {  //no se definió
            return true;  //todas son editable
        } else {  //hay filtro de campos
//alert('verificando: ' + idx);
            for (var i = 0; i < colsEdi.length; i++) {
                if (idx == colsEdi[i]) return true;
            }
            return false;  //no se encontró
        }
    }
}
function FijModoNormal(but) {
    $(but).parent().find('#bAcep').hide();
    $(but).parent().find('#bCanc').hide();
    $(but).parent().find('#bEdit').show();
    $(but).parent().find('#bElim').show();
    $(but).parent().find('#bSet').show();
    var $row = $(but).parents('tr');  //accede a la fila
    $row.attr('id', '');  //quita marca
}
function FijModoEdit(but) {
    $(but).parent().find('#bSet').hide();
    $(but).parent().find('#bAcep').show();
    $(but).parent().find('#bCanc').show();
    $(but).parent().find('#bEdit').hide();
    $(but).parent().find('#bElim').hide();
    var $row = $(but).parents('tr');  //accede a la fila
    $row.attr('id', 'editing');  //indica que está en edición
}
function ModoEdicion($row) {
    if ($row.attr('id')=='editing') {
        return true;
    } else {
        return false;
    }
}
function rowAcep(but) {
//Acepta los cambios de la edición

    var $row = $(but).parents('tr');  //accede a la fila
    var $cols = $row.find('td');  //lee campos
    if (!ModoEdicion($row)) return;  //Ya está en edición
    //Está en edición. Hay que finalizar la edición
    IterarCamposEdit($cols, function($td) {  //itera por la columnas
        var cont = $td.find('input').val(); //lee contenido del input
        $td.html(cont);  //fija contenido y elimina controles
    });
    FijModoNormal(but);
    params.onEdit($row);

    let param = {
        idx_homepage_info:$row.attr('data-idx'), //idx 값
        homepage_admin:$cols[0].textContent,
        homepage_admin_pnum:$cols[1].textContent,
        email:$cols[2].textContent
    }

    console.log(param);
    $.ajax({
        type: 'post',
        url :'modify_homepage_info', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param),//보내는 데이터
        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
        dataType:'json',//받는 데이터 타입
        success: function(result){
            //작업이 성공적으로 발생했을 경우
            console.log(result);
            alert(result.result_str);
            if (result.result_code === "SUCCESS") {
                alert("수정 했습니다.");
                pageLoad('c80_site_mng',{page_num:1},'사이트 정보관리');
            }
            else {

            }
        },
        error:function(){
            //에러가 났을 경우 실행시킬 코드
        }
    });
}
function rowCancel(but) {
//Rechaza los cambios de la edición
    var $row = $(but).parents('tr');  //accede a la fila
    var $cols = $row.find('td');  //lee campos
    if (!ModoEdicion($row)) return;  //Ya está en edición
    //Está en edición. Hay que finalizar la edición
    IterarCamposEdit($cols, function($td) {  //itera por la columnas
        var cont = $td.find('div').html(); //lee contenido del div
        $td.html(cont);  //fija contenido y elimina controles
    });
    FijModoNormal(but);
}
function rowEdit(but) {  //Inicia la edición de una fila
    var $row = $(but).parents('tr');  //accede a la fila
    var $cols = $row.find('td');  //lee campos
    if (ModoEdicion($row)) return;  //Ya está en edición
    //Pone en modo de edición
    IterarCamposEdit($cols, function($td) {  //itera por la columnas
        var cont = $td.html(); //lee contenido
        var div = '<div style="display: none;">' + cont + '</div>';  //guarda contenido
        var input = '<input class="form-control input-sm"  value="' + cont + '">';
        $td.html(div + input);  //fija contenido
    });
    FijModoEdit(but);
}
function rowElim(but) {  //Elimina la fila actual
    let $row = $(but).parents('tr');  //accede a la fila

    let param = {
        idx_homepage_info:$row.attr('data-idx'), //idx 값
    }

    console.log(param);
    $.ajax({
        type: 'post',
        url :'delete_homepage_info', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param),//보내는 데이터
        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
        dataType:'json',//받는 데이터 타입
        success: function(result){
            //작업이 성공적으로 발생했을 경우
            console.log(result);
            if (result.result_code === "SUCCESS") {
                alert(result.result_str);
                pageLoad('c80_site_mng',{page_num:1},'사이트 정보관리');
                // params.onBeforeDelete($row);
                // $row.remove();
                // params.onDelete();
            }
            else {
                alert(result.result_str);
            }
        },
        error:function(err){
            console.log(err);
            console.log('확인점 잘 안되여..')
            //에러가 났을 경우 실행시킬 코드
        }
    });

    // params.onBeforeDelete($row);
    // $row.remove();
    // params.onDelete();
}

function rowApllySet(but) {  //Elimina la fila actual
    let $row = $(but).parents('tr');  //accede a la fila
    console.log($row)

    let param = {
        idx_homepage_info:$row.attr('data-idx'), //idx 값
    }

    $.ajax({
        type: 'post',
        url :'set_homepage_info', //데이터를 주고받을 파일 주소 입력
        data: JSON.stringify(param),//보내는 데이터
        contentType:"application/json; charset=utf-8;",//보내는 데이터 타입
        dataType:'json',//받는 데이터 타입
        success: function(result){
            //작업이 성공적으로 발생했을 경우
            console.log(result);
            if (result.result_code === "SUCCESS") {
                alert(result.result_str);
                pageLoad('c80_site_mng',{page_num:1},'사이트 정보관리');
                // params.onBeforeDelete($row);
                // $row.remove();
                // params.onDelete();
            }
            else {
                alert(result.result_str);
            }
        },
        error:function(err){
            console.log(err);
            //에러가 났을 경우 실행시킬 코드
        }
    });

    // params.onBeforeDelete($row);
    // $row.remove();
    // params.onDelete();
}



function rowAddNew(tabId) {  //Agrega fila a la tabla indicada.
    var $tab_en_edic = $("#" + tabId);  //Table to edit
    var $filas = $tab_en_edic.find('tbody tr');
    if ($filas.length==0) {
        //No hay filas de datos. Hay que crearlas completas
        var $row = $tab_en_edic.find('thead tr');  //encabezado
        var $cols = $row.find('th');  //lee campos
        //construye html
        var htmlDat = '';
        $cols.each(function() {
            if ($(this).attr('name')=='buttons') {
                //Es columna de botones
                htmlDat = htmlDat + colEdicHtml;  //agrega botones
            } else {
                htmlDat = htmlDat + '<td></td>';
            }
        });
        $tab_en_edic.find('tbody').append('<tr>'+htmlDat+'</tr>');
    } else {
        //Hay otras filas, podemos clonar la última fila, para copiar los botones
        var $ultFila = $tab_en_edic.find('tr:last');
        $ultFila.clone().appendTo($ultFila.parent());
        $ultFila = $tab_en_edic.find('tr:last');
        var $cols = $ultFila.find('td');  //lee campos
        $cols.each(function() {
            if ($(this).attr('name')=='buttons') {
                //Es columna de botones
            } else {
                $(this).html('');  //limpia contenido
            }
        });
    }
    params.onAdd();
}



function TableToCSV(tabId, separator) {  //Convierte tabla a CSV
    var datFil = '';
    var tmp = '';
    var $tab_en_edic = $("#" + tabId);  //Table source
    $tab_en_edic.find('tbody tr').each(function() {
        //Termina la edición si es que existe
        if (ModoEdicion($(this))) {
            $(this).find('#bAcep').click();  //acepta edición
        }
        var $cols = $(this).find('td');  //lee campos
        datFil = '';
        $cols.each(function() {
            if ($(this).attr('name')=='buttons') {
                //Es columna de botones
            } else {
                datFil = datFil + $(this).html() + separator;
            }
        });
        if (datFil!='') {
            datFil = datFil.substr(0, datFil.length-separator.length);
        }
        tmp = tmp + datFil + '\n';
    });
    return tmp;
}

//apply
$("#table-list").SetEditable({
    $addButton: $('#add')
});