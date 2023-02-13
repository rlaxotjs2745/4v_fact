<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>--%>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/05/01
  Time: 5:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="card-header font-weight-bold with-elements text-white bg-success">
    <div class="card-header-title">총 ${total_count}개 신청 <span class="normal">접수 완료 : <strong>70</strong>개</span><span>보완 : <strong>70</strong>개</span><span>미 검토 : <strong>70</strong>개</span></div>
    <div class="card-header-elements ml-auto">
<%--        <button type="button" class="btn btn-sm  btn-outline-default"><i class="lnr lnr-download"></i> 신청서 전체 내려받기</button>--%>
        <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
            <label class="btn btn-secondary <c:if test="${filter1==9999}">active</c:if>" >
                <input type="radio" name="btn-radio" value="9999"  >전체
            </label>
            <label class="btn btn-secondary <c:if test="${filter1==0}">active</c:if>" >
                <input type="radio" name="btn-radio" value="0" > 검토 전
            </label>

            <label class="btn btn-secondary <c:if test="${filter1==1}">active</c:if>">
                <input type="radio" name="btn-radio" value="1"> 검토 중
            </label>

            <label class="btn btn-secondary <c:if test="${filter1==3}">active</c:if>">
                <input type="radio" name="btn-radio" value="3"> 검토완료
            </label>
        </div>
    </div>
</div>
<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead class="bg-light-dark text-white font-weight-bold">
                    <tr role="row">
                        <th class="text-center px-2" style="width:60px">No</th>
                        <th class="text-center px-2" style="width:100px">신청서</th>
<%--                        <th class="text-center px-2" style="width:100px">고객안내</th>--%>
                        <th class="text-center px-2" style="width:80px">구분</th>
                        <th class="text-center sorting" style="width:200px">신청자이름</th>
                        <th class="text-center sorting" style="width:300px">기업정보</th>
<%--                        <th class="text-center px-2" style="width:100px">사전상담</th>--%>
                    </tr>
                    </thead>
                    <tbody>

                    <c:choose>
                        <c:when test="${userDemoBsVOList eq null or userDemoBsVOList.size() eq 0}">

                            <c:forEach var = "i" begin = "1" end = "2">
                                <tr><td class="text-center empty-list" colspan="5"></td></tr>
                            </c:forEach>
                            <tr class=""><td class="text-center" colspan="5">내용이 없습니다</td></tr>
                            <c:forEach var = "i" begin = "1" end = "2">
                                <tr><td class="text-center empty-list" colspan="5"></td></tr>
                            </c:forEach>

                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${userDemoBsVOList}" var="appl_item" varStatus="status">
                                <tr class="">
                                    <td class="text-center">${cur_page > 1 ? 5 * (cur_page - 1) + status.count : status.count}</td>
                                    <td class="text-center"><button class="btn btn-outline-default btn-sm" data-toggle="modal" onclick="popup_apple_manage(${appl_item.idx_user_demo_bs});">
                                        <c:choose>
                                            <c:when test="${appl_item.user_demobs_status eq 5}">서류 검토 중</c:when>
                                            <c:when test="${appl_item.user_demobs_status eq 6}">서류 보완요청</c:when>
                                            <c:when test="${appl_item.user_demobs_status eq 7}">서류 보완 중</c:when>
                                            <c:when test="${appl_item.user_demobs_status eq 8}">서류검토완료</c:when>
                                            <c:when test="${appl_item.user_demobs_status eq 9}">서류 부적격</c:when>
                                            <c:otherwise>신규 등록</c:otherwise>
                                        </c:choose>
                                    </button></td>
                                        <%--                        <td class="text-center">${appl_item.ceo_name}</td>--%>
                                    <td class="text-center">
                                        <c:choose>
                                            <c:when test="${appl_item.user_demobs_status eq 4}">신규</c:when>
                                            <c:otherwise>검토</c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="text-center">${appl_item.man_name} / ${appl_item.corp_name}</td>
                                    <td class="text-center"> ${appl_item.corp_name} 대표자 ${appl_item.ceo_name}, 연락처 ${appl_item.ceo_mnumber}</td>
                                        <%--                        <td class="text-center">${appl_item.admin_name}</td>--%>
                                </tr>
                            </c:forEach>
                            <c:forEach var = "i" begin = "${userDemoBsVOList.size()}" end = "4">
                                <tr><td class="text-center empty-list" colspan="5"></td></tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
        <c:if test="${total_count ne 0}">
        <div class="row">
            <div class="col-sm-12 col-md-5">
                <div class="dataTables_info" id="" role="status" aria-live="polite">총 ${total_count}개 중 ${list_amount*(cur_page-1)+1}에서 ${list_amount*page_amount}까지</div>
            </div>
            <div class="col-sm-12 col-md-7">
                <div class="dataTables_paginate paging_simple_numbers" id="">
                    <ul class="pagination">

                        <c:set var="name" value="${total_count/amount}" />


                        <c:if test="${is_past eq true}"><li class="paginate_button page-item previous"><a href="javascript:getUserApplList(${idx_demo_business},1,${filter1});" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li></c:if>
                        <c:if test="${is_prev eq true}"><li class="paginate_button page-item previous"><a href="javascript:getUserApplList(${idx_demo_business},${cur_page-1},${filter1});" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-left d-block"></i></a></li></c:if>



                        <c:forEach var="i" begin="1" end="${page_amount}">
                            <li class="paginate_button page-item <c:if test="${(cur_sector-1)*page_amount+i eq cur_page}">active</c:if>"><a href="javascript:getUserApplList(${idx_demo_business},${(cur_sector-1)*page_amount+i},${filter1});" class="page-link">${(cur_sector-1)*page_amount+i}</a></li>
                        </c:forEach>

                        <c:if test="${is_next eq true}"><li class="paginate_button page-item next"><a href="javascript:getUserApplList(${idx_demo_business},${cur_page+1},${filter1});" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-right d-block"></i></a></li></c:if>
                        <c:if test="${is_last eq true}"><li class="paginate_button page-item next"><a href="javascript:getUserApplList(${idx_demo_business},${tot_page},${filter1});load('b21_demo_bs_appl_mng?page=${tot_page}','신청접수 관리');" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li></c:if>
                    </ul>
                </div>
            </div>
        </div>
        </c:if>
    </div>
</div>
<script>
    /*
    $('input:checkbox[name="btn-radio"]').on('click',function() {
        let filter1 =$(this).value();
        console.log(filter1);
        getUserApplList();
    });
    */


        $("input[name='btn-radio']").on('click',function(){
            let filter1=$(this).val();
            getUserApplList(${idx_demo_business},1,filter1);
        });



    function popup_apple_manage(idx_user_demo_bs){

        let param = {
            idx_user_demo_bs: idx_user_demo_bs
        }
        curUserDemoBsIdx = idx_user_demo_bs;
        $.ajax({
            type: 'post',
            url: 'get_user_demo_bs_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            async: false,
            success: function (result) {
            //작업이 성공적으로  발생했을 경우
                // console.log(result);
                var data = JSON.parse(result);// JSON 문자열을 JavaScript 객체로 변환

                //데이터 주입

                // Object.entries(data["userDemoBsVO"]).forEach(function(a){
                //     $("input[name=+"a[0]+"]").val(a[1]);
                // });
                //
                //
                // if(data["userDemoBsDetailVO"]!=null){
                //     Object.entries(data["userDemoBsDetailVO"]).forEach(function (b){
                //         $("input[name="+b[0]+"]").val(b[1]);
                //     });
                // }

                // $("#reg_date").val(moment(data["userDemoBsVO"].reg_date).format("YYYY-MM-DD HH:mm:ss"));
                $("input[name='user_name']").val(data["userVO"].user_name);
                $("input[name='mphone_num']").val(data["userVO"].mphone_num);
                $("input[name='demo_subject']").val(data["userDemoBsVO"].demo_subject);

                // console.log(data["UserDemoBsDetailVO"].ceo_rnd_result2);
                // for(let i=0;i<data["userBsHumanResourceVOS"].length;i++){
                //     Object.entries(data["userBsHumanResourceVOS"][i]).forEach(function(c){
                //         // $("input[name="+c[0]+"]").val(c[1]);
                //     });
                // }



                //라디오값 설정
                // console.log("user_demo_bs_type :  "  +  data["userDemoBsVO"].user_demo_bs_type);
                // console.log("is_office_ower :  "  +  data["userDemoBsVO"].is_office_ower);
                // console.log("is_lab_ower :  "  +  data["userDemoBsVO"].is_lab_ower);
                // console.log("req_facility :  "  +  data["userDemoBsVO"].req_facility);
                // console.log("user_demo_type :  "  +  data["userDemoBsVO"].user_demo_type);
                // console.log("user_demo_facility :  "  +  data["userDemoBsVO"].user_demo_facility);
                // console.log("user_demo_way :  "  +  data["userDemoBsVO"].user_demo_way);
                // console.log("user_demo_goal :  "  +  data["userDemoBsVO"].user_demo_goal);
                // console.log("user_demo_repeat :  "  +  data["userDemoBsVO"].user_demo_repeat);
                // console.log("user_demo_is_crops :  "  +  data["userDemoBsVO"].user_demo_is_crops);
                // console.log("user_demo_option :  "  +  data["userDemoBsVO"].user_demo_option);
                // console.log("culture_soil :  "  +  data["userDemoBsVO"].culture_soil);
                // console.log("demo_type :  "  +  data["userDemoBsVO"].demo_type);

                //스키마 파일 기준
                /*
                $("input:radio[name='user_demo_bs_type']:input[value='" + data["userDemoBsVO"].user_demo_bs_type + "']").prop('checked', true); // 기업형태 1:개인, 2:일반기업, 3:미등록기업(설립전), 4: 농업진흥기관, 5:선도기업, 6:외국연구기관, 7:특정연구기관, 8:정부출연연구기관, 9:스마트팜 관련 기업부설연구소 보유기업, 10: 대학교, 99:기타 단체
                $("input:radio[name='is_office_ower']:input[value='" + data["userDemoBsVO"].is_office_ower + "']").prop('checked', true); //본사보유형태  0 자가 , 1 임차
                $("input:radio[name='is_lab_ower']:input[value='" + data["userDemoBsVO"].is_lab_ower + "']").prop('checked', true); //연구소 보유형태 0,1,2
                $("input:radio[name='req_facility']:input[value='" + data["userDemoBsVO"].req_facility + "']").prop('checked', true); //이용신청시설 req_facility 1온실, 2: R&D연구실, 4:스타트업사무실, 512:기타
                $("input:radio[name='user_demo_type']:input[value='" + data["userDemoBsVO"].user_demo_type + "']").prop('checked', true); //실증 주체 1.자율 2위탁
                $("input:radio[name='user_demo_facility']:input[value='" + data["userDemoBsVO"].user_demo_facility + "']").prop('checked', true); //실증시설 1:단동, 2:연동, 4:육묘장, 8:노지, 16:단동유리, 32:연동유리, 64:식물공장
                $("input:radio[name='user_demo_way']:input[value='" + data["userDemoBsVO"].user_demo_way + "']").prop('checked', true); //실증방법  1: 단순, 2:비교
                $("input:radio[name='user_demo_goal']:input[value='" + data["userDemoBsVO"].user_demo_goal + "']").prop('checked', true); //실증 목적 1::성능확인, 2:자체평가
                $("input:radio[name='user_demo_repeat']:input[value='" + data["userDemoBsVO"].user_demo_repeat + "']").prop('checked', true); //실증횟수 1:반복 없음, 2:반복실증
                $("input:radio[name='user_demo_is_crops']:input[value='" + data["userDemoBsVO"].user_demo_is_crops + "']").prop('checked', true);//실증 작물 0:해당없음 1:비작물실증, 2: 작물대상실증
                $("input:radio[name='user_demo_option']:input[value='" + data["userDemoBsVO"].user_demo_option + "']").prop('checked', true); //실증 조건 1: 일반환경, 2:특수환경
                $("input:radio[name='culture_soil']:input[value='" + data["userDemoBsVO"].culture_soil + "']").prop('checked', true); //생육토양 1: 토경재배, 2:수경재배, 4:고형배지재배
                $("input:radio[name='demo_type']:input[value='" + data["userDemoBsVO"].demo_type + "']").prop('checked', true);//실증대상 0:해당없음, 1:시설자재, 2:ICT기자재, 4:작물보호제/비료, 8:스마트팜SW, 16:생육모델, 32:로봇, 512:기타
                    */

                //let corpInfoVO = data["userDemoBsVO"].corpInfoVO;
                //$("#idx_corp_info").val(data["userDemoBsVO"]["corpInfoVO"].idx_corp_info);
                //$("#is_saved").val(data["userDemoBsVO"]["corpInfoVO"].is_saved);

                /*
                if($("#is_saved").val()!=0)
                {
                    $("#btn_corp_save").html("기업 정보 수정");
                }


                 */
                $('input').prop('readonly',true);
                // $('#modals-application-view').modal('show');

//STATUS_001 :
            },
            error: function () {
//에러가 났을 경우 실행시킬 코드
                alert('popup_apple_manage ajax err');
            }
        }); //AJAX 끝


        $.ajax({
            type:'post',
            url:'b21_modal',
            data:JSON.stringify(param),
            contentType:"application/json; charset=utf-8;",
            dataType :'text',
            success:function (result){
                $("#b21_modal").html(result);

                // $('input').prop('readonly',true);
                $("input,textarea,select").each(function(){
                    $(this).attr("readonly",true);
                });
                $('#modals-application-view').modal('show');
            },
            error:function (){
                //에러코드
            }

        }); //AJAX 끝
    }
</script>