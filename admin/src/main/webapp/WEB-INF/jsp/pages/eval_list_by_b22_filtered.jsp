<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2022/05/01
  Time: 5:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h6 class="card-header with-elements">
    <div class="card-header-title">총 XXX개 신청 <span class="normal">사용승인 : <strong>70</strong>건</span><span>사용불가 : <strong>70</strong>건</span><span>미 심사 : <strong>70</strong>건</span></div>
    <div class="card-header-elements ml-auto">
        <div class="btn-group btn-group-sm btn-group-toggle ml-2" data-toggle="buttons">
            <label class="btn btn-secondary">
                <input type="radio" name="btn-radio" checked="">전체
            </label>
            <label class="btn btn-secondary">
                <input type="radio" name="btn-radio"> 미 심사
            </label>
            <label class="btn btn-secondary ">
                <input type="radio" name="btn-radio"> 심사 완료
            </label>
        </div>
    </div>
</h6>
<div class="card-datatable table-responsive pt-0 pb-3">
    <div id="" class="dataTables_wrapper dt-bootstrap4 no-footer">

        <div class="row">
            <div class="col-sm-12">
                <table id="" class="table table-bordered table-hover  no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                    <thead>
                    <tr role="row">
                        <th class="text-center " style="width:60px">No</th>
                        <th class="text-center " style="width:80px">신청서</th>
                        <th class="text-center " style="width:80px">신청서 검토</th>
                        <th class="text-center " style="width:60px">구분</th>
                        <th class="text-center " style="width:200px">신청자이름</th>
                        <th class="text-center " style="width:300px">기업정보</th>
                        <th class="text-center " style="width:100px">심의종류</th>
                        <th class="text-center " style="width:100px">사전상담</th>
                        <th class="text-center " style="width:100px">실증책임자</th>
                        <th class="text-center " style="width:100px">선정평가서</th>
                        <th class="text-center " style="width:100px">종합의견서</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="">
                        <td class="text-center">1</td>
                        <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm" data-toggle="modal" data-target="#modals-application-write">입력하기</a></td>
                        <td class="text-center">미발송</td>
                        <td class="text-center">신규</td>
                        <td class="text-center">행복한 농장(주)</td>
                        <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                        <td class="text-center">서면심사</td>
                        <td class="text-center">김상담</td>
                        <td class="text-center">미지정</td>
                        <td class="text-center">미등록</td>
                        <td class="text-center">미등록</td>
                    </tr>
                    <tr class="">
                        <td class="text-center">2</td>
                        <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">사용하기</a></td>
                        <td class="text-center">미발송</td>
                        <td class="text-center">신규</td>
                        <td class="text-center">데이터 중심 농업(주)</td>
                        <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                        <td class="text-center">서면심사</td>
                        <td class="text-center">김상담</td>
                        <td class="text-center">미지정</td>
                        <td class="text-center">등록완료</td>
                        <td class="text-center">등록완료</td>
                    </tr>
                    <tr class="">
                        <td class="text-center">3</td>
                        <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                        <td class="text-center">발송</td>
                        <td class="text-center">추가</td>
                        <td class="text-center">기관명</td>
                        <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                        <td class="text-center">서면심사</td>
                        <td class="text-center">-</td>
                        <td class="text-center">-</td>
                        <td class="text-center">등록완료</td>
                        <td class="text-center">등록완료</td>
                    </tr>
                    <tr class="">
                        <td class="text-center">4</td>
                        <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                        <td class="text-center">발송</td>
                        <td class="text-center">추가</td>
                        <td class="text-center">기관명</td>
                        <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                        <td class="text-center">서면심사</td>
                        <td class="text-center">김상담</td>
                        <td class="text-center">미지정</td>
                        <td class="text-center">등록완료</td>
                        <td class="text-center">등록완료</td>
                    </tr>
                    <tr class="">
                        <td class="text-center">5</td>
                        <td class="text-center"><a href="#none" class="btn btn-outline-default  btn-sm">내려받기</a></td>
                        <td class="text-center">발송</td>
                        <td class="text-center">신규</td>
                        <td class="text-center">기관명</td>
                        <td class="text-center">대표자 홍길동, 02-0000-0000</td>
                        <td class="text-center">서면심사</td>
                        <td class="text-center">김상담</td>
                        <td class="text-center">미지정</td>
                        <td class="text-center">등록완료</td>
                        <td class="text-center">등록완료</td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="row">
            <div class="col-sm-12 col-md-5">
                <div class="dataTables_info" id="" role="status" aria-live="polite">Showing 1 to 10 of 50 entries</div>
            </div>
            <div class="col-sm-12 col-md-7">
                <div class="dataTables_paginate paging_simple_numbers" id="article-list_paginate">
                    <ul class="pagination">
                        <li class="paginate_button page-item previous disabled" id="article-list_previous"><a href="#" aria-controls="article-list" data-dt-idx="0" tabindex="0" class="page-link"><i class="fas fa-angle-double-left d-block"></i></a></li>
                        <li class="paginate_button page-item active"><a href="#" aria-controls="article-list" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="article-list" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                        <li class="paginate_button page-item next" id="article-list_next"><a href="#" aria-controls="article-list" data-dt-idx="6" tabindex="0" class="page-link"><i class="fas fa-angle-double-right d-block"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('input:checkbox[name="btn-radio"]').on('click',function() {
        let filter1 =$(this).value();
        getUserApplList(${idx_demo_business},1,${filter1});
    });

    function popup_apple_manage(idx_user_demo_bs){

        let param = {
            idx_user_demo_bs: idx_user_demo_bs
        }
        $.ajax({
            type: 'post',
            url: 'get_user_demo_bs_info', //데이터를 주고받을 파일 주소 입력
            data: JSON.stringify(param),//보내는 데이터
            contentType: "application/json; charset=utf-8;",//보내는 데이터 타입
            dataType: 'text',//받는 데이터 타입
            success: function (result) {

//작업이 성공적으로 발생했을 경우
                console.log(result);


                var data = JSON.parse(result);


                console.log(data["userDemoBsVO"].corp_name);


                $("#corp_name").val(data["userDemoBsVO"].corp_name);
                $("#corp_reg_num").val(data["userDemoBsVO"].corp_reg_num);
                $("#corp_num").val(data["userDemoBsVO"].corp_num);
                $("#corp_addr").val(data["userDemoBsVO"].corp_addr);
                $("#corp_addr2").val(data["userDemoBsVO"].corp_addr2);
                $("#corp_phone").val(data["userDemoBsVO"].corp_phone);
                $("#email").val(data["userDemoBsVO"].email);
                $("#homepage").val(data["userDemoBsVO"].homepage);
                $("#ceo_name").val(data["userDemoBsVO"].ceo_name);
                $("#ceo_mnumber").val(data["userDemoBsVO"].ceo_mnumber);
                $("#ceo_email").val(data["userDemoBsVO"].ceo_email);
                $("#man_name").val(data["userDemoBsVO"].man_name);
                $("#man_mnumber").val(data["userDemoBsVO"].man_mnumber);
                $("#demo_subject").val(data["userDemoBsVO"].demo_subject);
                $("#demo_bs_applicaion_code").val(data["userDemoBsVO"].demo_bs_applicaion_code);
                $("#applicaion_reg_date").val(data["userDemoBsVO"].applicaion_reg_date);


                //let corpInfoVO = data["userDemoBsVO"].corpInfoVO;

                console.log(data["userDemoBsVO"]["corpInfoVO"].idx_corp_info);

                $("#idx_corp_info").val(data["userDemoBsVO"]["corpInfoVO"].idx_corp_info);
                $("#is_saved").val(data["userDemoBsVO"]["corpInfoVO"].is_saved);

                if($("#is_saved").val()!=0)
                {
                    $("#btn_corp_save").html("기업 정보 수정");
                }


                $('#modals-application-view').modal('show');




//STATUS_001 :
            },
            error: function () {
//에러가 났을 경우 실행시킬 코드
            }
        });
    }
</script>