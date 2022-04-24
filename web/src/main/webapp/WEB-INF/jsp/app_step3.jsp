<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/12/14
  Time: 11:18 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko" class="html-popup">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SMART FARM</title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.ico">
    <link rel="icon" href="<%=request.getContextPath()%>/static/assets/image/favicon_16.png">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/static/assets/image/favicon_152.png">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/assets/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <header class="header_app">
        <a href="#none" class="close_window" onclick="javascript:window.close();"><img src="<%=request.getContextPath()%>/static/assets/image/ico_close.svg" alt=""></a>
        <h1><a href="main.html"><img src="<%=request.getContextPath()%>/static/assets/image/h1_logo_gimje.png" alt="스마트팜 실증센터"></a></h1>
        <h2>신청서 작성</h2>
        <div class="app__step">
            <div class="step is-passed">
                <em>1.</em>
                <span>지원사업 선택</span>
            </div>
            <div class="step is-passed">
                <em>2.</em>
                <span>이용신청서 작성</span>
            </div>
            <div class="step is-active">
                <em>3.</em>
                <span>실증계획서 작성</span>
            </div>
            <div class="step ">
                <em>4.</em>
                <span>개인정보 수집 동의서 작성</span>
            </div>
            <div class="step ">
                <em>5.</em>
                <span>기타 서류등록</span>
            </div>
            <div class="step ">
                <em>6.</em>
                <span>신청서 확인 및 등록</span>
            </div>
        </div>
        <div class="app__business">
            <label for="select-business">지원사업 선택</label>
            <select name="business" id="select-business" disabled>
                <option value="">${demoBs.demo_subject}</option>
            </select>
        </div>
    </header>
    <div class="content_app" id="content_app">
        <!--//-->
        <div class="app__body">
            <div class="app__cnt">
                <h3>실증계획서</h3>

                <div class="table__agree"><strong>*유의사항</strong>
                    본 사업계획서의 내용은 실증단지이용자 선정 심의에 중요한 자료이므로 사실에 입각하여 정확히 기재해 주시기 바랍니다.(기재사항과 실제내용이 다를 경우에는 이용심사에 불이익을 받을 수 있습니다)
                    제출하신 자료는 반환되지 않으며 대외비로 관리됩니다.
                </div>
               <div class="table__signature">
                   <div class="app__fileupload">
                       <div class="fileupload__title">실증계획서 원본 업로드</div>
                       <input type="file" class="fileupload">
                   </div>
<%--                     이용신청인 : <input id="signature_name" type="text" value="홍길동" disabled style="width:200px;"><br>
                    <div class="checkbox checkbox--inline">
                        <input type="checkbox" id="signature-1" name="signature">
                        <label for="signature-1">동의</label>
                    </div>
                    <p>서명 대체 안내<br>
                        본 포탈에서 작성 후, 등록한 실증계획서는 수기로 작성시 날인한 것과 동일한 효과가 있습니다.<br>
                        만약, 서명 대체에 동의하지 않는 경우는 사업공고의 담당자에게 문의 후 우편이나 이메일로 접수해 주십시오.
                    </p>
                    <span class="cl-red">위 안내에 동의시, 계획서 입력이 가능합니다.</span>--%>
                </div>

                <div class="table__caption">1.기업현황</div>
                <div class="cnt__title">일반현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th class="th__left">신청기업명</th>
                            <td class="td__left" colspan="2"><input type="text" value="${userDemoBs.corp_name}" disabled></td>
                            <th class="th__left">대표자</th>
                            <td class="td__left" colspan="2"><input type="text" value="${userDemoBs.ceo_name}" disabled></td>
                        </tr>
                        <tr>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                            <th class="th__left">사업자등록번호</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left">설립일자</th>
                            <td class="td__left" colspan="2"><input type="text"></td>
                            <th class="th__left">상시근로자수</th>
                            <td class="td__left" colspan="2"><div class="input--group"><input type="text" placeholder="" style="width:100%;" class="user__input"><span class="user__text">명</span></div></td>
                        </tr>

                        <tr>
                            <th class="th__left">자본금</th>
                            <td class="td__left" colspan="2"><div class="input--group"><input type="text" placeholder="" style="width:100%; padding-right:60px;" class="user__input"><span class="user__text">백만원</span></div></td>
                            <th class="th__left">전년도 매출액</th>
                            <td class="td__left" colspan="2"><div class="input--group"><input type="text" placeholder="" style="width:100%; padding-right:60px;" class="user__input"><span class="user__text">백만원</span></div></td>
                        </tr>
                        <tr>
                            <th class="th__left" colspan="4">소재지</th>
                            <th class="th__left">전화번호</th>
                            <th class="th__left">소유여부</th>
                        </tr>
                        <tr>
                            <th class="th__left">본사</th>
                            <td class="td__left" colspan="3">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input type="text" style="width: calc(100% - 70px);">
                            </td>
                            <td class="td__left"><input type="text" placeholder=""></td>
                            <td class="td__left">
                                <div class="radio radio--inline">
                                    <input type="radio" id="have-1" name="have-range">
                                    <label for="have-1">자가</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="have-2" name="have-range">
                                    <label for="have-2">임차</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">연구소</th>
                            <td class="td__left" colspan="3">
                                <a href="#" class="btn modify btn-lg">찾기</a>
                                <input type="text" style="width: calc(100% - 70px);">
                            </td>
                            <td class="td__left"><input type="text" placeholder=""></td>
                            <td class="td__left">
                                <div class="radio radio--inline">
                                    <input type="radio" id="have2-1" name="have2-range">
                                    <label for="have2-1">자가</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="have2-2" name="have2-range">
                                    <label for="have2-2">임차</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="2">
                                <input type="text">
                            </td>
                            <th class="th__left">표준산업분류코드</th>
                            <td class="td__left" colspan="2">
                                <input type="text" placeholder="통계분류포털(kssc.kostat.go.kr)에서 검색 후 4자리 입력">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">법인등록번호</th>
                            <td class="td__left" colspan="5">
                                1.전체: <div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input"><span class="user__text">명</span></div>
                                (경영자:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input"><span class="user__text">명</span></div>, 연구/기술직:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input"><span class="user__text">명</span></div>, 기타:<div class="input--group"><input type="text" placeholder="" style="width:100px;" class="user__input"><span class="user__text">명</span></div>)
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">주요생산품</th>
                            <td class="td__left" colspan="5">
                                1. <input type="text" style="width: auto; margin: 0 15px 0 0;">
                                2. <input type="text" style="width: auto; margin: 0 15px 0 0;">
                                3. <input type="text" style="width: auto; margin: 0 15px 0 0;">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">핵심기술</th>
                            <td class="td__left" colspan="5">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="4">연구개발투자에<br>관한 사항</th>
                            <td class="td__left">연구소 설립일</td>
                            <td class="td__left" colspan="4">
                                <input type="text" class="datepicker">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">연구소 보유형태</td>
                            <td class="td__left" colspan="4">
                                <div class="radio radio--inline">
                                    <input type="radio" id="have3-1" name="have3-range">
                                    <label for="have3-1">자가</label>
                                </div>
                                <div class="radio radio--inline">
                                    <input type="radio" id="have3-2" name="have3-range">
                                    <label for="have3-2">임차</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">연구소 전담인력 수</td>
                            <td class="td__left" colspan="4">
                                <div class="input--group"><input type="text" placeholder="" style="width:100%;" class="user__input"><span class="user__text">명</span></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">연구소개발투자비율</td>
                            <td class="td__left" colspan="4">
                                연구개발비/총매출액: <div class="input--group"><input type="text" placeholder="" style="width:100%;" class="user__input"><span class="user__text">%</span></div>
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left">관계회사</th>
                            <td class="td__left" colspan="5">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="4">주요연혁
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <th class="">년월</th>
                            <th class="" colspan="4">
                                주요내용(자본 증감, 대표자변경, 상호변경 및 주요경영내용 변경 등)
                            </th>
                        </tr>
                        <tr>
                            <td class="td__left"><input type="text"></td>
                            <td class="td__left" colspan="4"><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="td__left"><input type="text"></td>
                            <td class="td__left" colspan="4"><input type="text"></td>
                        </tr>
                        <tr>
                            <td class="td__left"><input type="text"></td>
                            <td class="td__left" colspan="4"><input type="text"></td>
                        </tr>
                        <tr>
                            <th class="th__left" rowspan="4">포상현황
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <th>년월</th>
                            <th colspan="2">상장명/포상명</th>
                            <th>수여기관</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" colspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" colspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" colspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">대표자의 연구개발 주요 실정</div>
                <div class="table__unit">
                    (단위:백만원)
                </div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:22%">
                            <col style="width:20%">
                            <col style="width:18%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>개발과제명 또는<br>연구논문명</th>
                            <th>개발(연구) 기관/기업</th>
                            <th>기간</th>
                            <th>역활</th>
                            <th>주요성과</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                        <a href="#none" class="btn dark fl-left">대표자 추가</a>
                        <span class="btn__desc">*대표자가 다수인 경우 또는 경영 실권자가 있는 경우는 위 '대표자 추가'버튼을 선택하여 각각 작성해 주십시오.</span>
                    </div>
                </div>

                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:22%">
                            <col style="width:20%">
                            <col style="width:18%">
                            <col style="width:20%">
                            <col style="width:20%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>개발과제명 또는<br>연구논문명</th>
                            <th>개발(연구) 기관/기업</th>
                            <th>기간</th>
                            <th>역활</th>
                            <th>주요성과</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                        <a href="#none" class="btn dark fl-left">삭제</a>
                        <a href="#none" class="btn dark fl-left" style="margin-left: 8px;">대표자 추가</a>
                    </div>
                </div>
                <!--//-->


                <div class="cnt__title">금융거래 현황</div>
                <div class="table__unit">
                    (단위:백만원)
                </div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:18%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:16%">
                            <col style="width:18%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>대출기관</th>
                            <th>자금용도<br>(운전/시설)</th>
                            <th>대출금액</th>
                            <th>대출금리</th>
                            <th>대출만기일</th>
                            <th>담보형태<br>(신용,기업,개인)</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__title">정책자금 사용현황(최근 3년)</div>
                <div class="table__unit">
                    (단위:백만원)
                </div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:14%">
                            <col style="width:14%">
                            <col style="width:14%">
                            <col style="width:14%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>사업명</th>
                            <th>과제명</th>
                            <th>자원기관</th>
                            <th>금액</th>
                            <th>신청일</th>
                            <th>진행상황<br>(완료/예정일)</th>
                        </tr>
                        <tr>
                            <td rowspan="3">중앙 정부
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3">지자체
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">연구개발 추진 현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:55%">
                            <col style="width:30%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>내용</th>
                            <th>비고(특허,인증)</th>
                        </tr>
                        <tr>
                            <td rowspan="3">자체개발
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3">국가과제
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">지식재산권 보유 현황(특허,실용신안,상표,디자인 등)</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:16%">
                            <col style="width:18%">
                            <col style="width:18%">
                            <col style="width:15%">
                            <col style="width:18%">
                            <col style="width:15%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>출원/등록번호</th>
                            <th>명칭</th>
                            <th>츌원/등록일자</th>
                            <th>담당기관</th>
                            <th>비고</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__title">국내외 인증 보유 현황</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:22%">
                            <col style="width:28%">
                            <col style="width:28%">
                            <col style="width:22%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>출원/등록번호</th>
                            <th>명칭</th>
                            <th>츌원/등록일자</th>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__title">연구/개발인력 인적사항</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:25%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th rowspan="2">번호</th>
                            <th>성명</th>
                            <th>과학기술인<br>등록번호</th>
                            <th colspan="3">전공 및 학윈</th>
                            <th>연구담당<br>분야</th>
                            <th rowspan="2">주요 경력,연구개발 실적</th>
                        </tr>
                        <tr>
                            <th>직위</th>
                            <th>생년월일</th>
                            <th>학교</th>
                            <th>학교(학위)</th>
                            <th>취득년도</th>
                            <th>6T관련<br>기술분류</th>
                        </tr>
                        <tr>
                            <td rowspan="2">1</td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">2</td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="2">3</td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left" rowspan="2">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                    </div>
                </div>
                <!--//-->

                <div class="cnt__title">실증계획관련 보유장비 및 기자재</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:10%">
                            <col style="width:20%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:15%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>장비명</th>
                            <th>무게(kg)</th>
                            <th>크기(W x D x H)</th>
                            <th>사용전원</th>
                            <th>소비전력</th>
                            <th>용도</th>
                            <th>실증단지<br>설치여부</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>2</th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>3</th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="app__btn">
                        <span class="btn__desc fl-left">주) 1) 보유장비를 실증단지로 이동하여 설치사용하는지 여부</span>
                        <a href="#none" class="btn default fl-right" title="행추가">┼</a>
                    </div>
                </div>
                <!--//-->


                <div class="table__caption">2.실증계획</div>
                <div class="cnt__title">실증개요</div>
                <div class="editor__title">
                    <strong>실증배경, 필요성, 목표</strong> (실증을 해야하는 이유가 잘 설명되도록 작성)
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="editor__title">
                    <strong>실증관리 핵심요소</strong> (실증과정에서 가장 중요하게 관리/유지되어야 하는 사항)
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="editor__title">
                    <strong>실증결과의 활용계획</strong> (실증결과의 활용계획)
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="cnt__title">실증기간</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:80%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>세부 내용</th>
                        </tr>
                        <tr>
                            <th>실증기간</th>
                            <td class="td__left">
                                시작 <input type="text" class="datepicker"><span class="text--guide">부터 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                <input type="text" class="datepicker"> &nbsp; (00년 00개월)
                            </td>
                        </tr>
                        <tr>
                            <th>실증기간 중 작물재배기간</th>
                            <td class="td__left">
                                1)작물재배기간 <input type="text" class="datepicker"><span class="text--guide">부터 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                <input type="text" class="datepicker">
                                3)재배작기수: <input type="text" style="width:100px;"> &nbsp; 기작
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증대상</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:5%">
                            <col style="width:15%">
                            <col style="width:50%">
                            <col style="width:30%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th colspan="2">구분</th>
                            <th>실증대상 예시</th>
                            <th>실증대상</th>
                        </tr>
                        <tr>
                            <td rowspan="3">기<br>자<br>재</td>
                            <td>시설자재</td>
                            <td class="td__left">
                                - 피복자재 : 유리, 비닐, 차단막 등<br>
                                - 구조자재 : 파이프, 강재, 연결자재 등<br>
                                - 설비자재 : 관수 및 양액용 파이프, 분사노출 등<br>
                                - 기타자재 : 베드, 거터 등
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="3"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>ICT기자재</td>
                            <td class="td__left">
                                - 센서류 : 온도, 습도, CO2, 수분, 풍속/풍향 등<br>
                                - 제어기류 : 복합환경제어기, 단순제어기 등<br>
                                - 구동기류 : 천창, 측창, 환풍기, 냉/낭방기, 양액/관수기 등
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="2"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>작물보호제<br>및 비료</td>
                            <td class="td__left">
                                - 작불보호제, 영양제, 비료,  양액 등
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="1"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">스마트팜<br>SW</td>
                            <td class="td__left">
                                - 구동SW : 제어기용, 센서용, 구동기용 등<br>
                                - 관제SW : 스마트팜 통합관리용
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="1"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">로봇</td>
                            <td class="td__left">
                                - 경작기, 파종기. 접목(삽목)기, 방제기 등<br>
                                - 수확기, 선별기, 운반기 등
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="1"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">생육(모델)<br>실증</td>
                            <td class="td__left">
                                - 육모모델 생장모델, 기능성모델
                            </td>
                            <td>
                                <textarea name="" id="" cols="10" rows="1"></textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증유형</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:15%">
                            <col style="width:85%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>세부 내용</th>
                        </tr>
                        <tr>
                            <td>실증 주체</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증주체-1" name="실증주체">
                                    <label for="실증주체-1">자율실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증주체-2" name="실증주체">
                                    <label for="실증주체-2">위탁실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 시설</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-1" name="실증시설">
                                    <label for="실증시설-1">단동유리온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-2" name="실증시설">
                                    <label for="실증시설-2">연동유리온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-3" name="실증시설">
                                    <label for="실증시설-3">단동비닐온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-4" name="실증시설">
                                    <label for="실증시설-4">연동비닐온실</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-5" name="실증시설">
                                    <label for="실증시설-5">노지</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-6" name="실증시설">
                                    <label for="실증시설-6">식물공장</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증시설-7" name="실증시설">
                                    <label for="실증시설-7">육묘장</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 방법</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증방법-1" name="실증방법">
                                    <label for="실증방법-1">비교실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증방법-2" name="실증방법">
                                    <label for="실증방법-2">단순실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 목적</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증목적-1" name="실증목적">
                                    <label for="실증목적-1">성능확인실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증목적-2" name="실증목적">
                                    <label for="실증목적-2">자체평가실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 횟수</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증횟수-1" name="실증횟수">
                                    <label for="실증횟수-1">1회성실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증횟수-2" name="실증횟수">
                                    <label for="실증횟수-2">반복실증</label>
                                </div>
                                (반복횟수: <input type="text" style="width:100px;"> 회)
                            </td>
                        </tr>
                        <tr>
                            <td>실증 작물</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증작물-1" name="실증작물">
                                    <label for="실증횟수-1">비작물실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증작물-2" name="실증작물">
                                    <label for="실증횟수-2">작물대상실증</label>
                                </div>
                                (실증대상 작물명: <input type="text" style="width:200px;">)
                            </td>
                        </tr>
                        <tr>
                            <td>생육 토양</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-1" name="생육토양">
                                    <label for="생육토양-1">토경재배실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-2" name="생육토양">
                                    <label for="생육토양-2">수경재배실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="생육토양-3" name="생육토양">
                                    <label for="생육토양-3">고형배지재배실증</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>실증 조건</td>
                            <td class="td__left">
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증조건-1" name="실증조건">
                                    <label for="실증조건-1">일반환경실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증조건-2" name="실증조건">
                                    <label for="실증조건-2">특수환경실증</label>
                                </div>
                                <div class="checkbox checkbox--inline">
                                    <input type="checkbox" id="실증조건-3" name="실증조건">
                                    <label for="실증조건-3">특수기후실증</label>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증설계 <em>(자유양식에 의거 상세 작성)</em></div>

                <div class="editor__title">
                    <strong>1)온실설치</strong>
                    <ul class="editor__list">
                        <li>*노지실증의 경우에만 해당(상세자료 별첨가능)</li>
                        <li>- 온실 설치 개요도를 작성하고 설치관련 주요사항을 설명</li>
                        <li>- 비교실증인 경우 실험군과 대조군의 특성을 알 수 있게 설명</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->
                <div class="editor__title">
                    <strong>2)기자재설치</strong>
                    <ul class="editor__list">
                        <li>- 온시내외의 기계장치(센서, 제어기, 장치) 설치개요도(상세자료 별첨가능)</li>
                        <li>- 실증 목적상 필요로 하는 특정 기계장치 및 설치 특기사항</li>
                        <li>- 비교실증인 경우 실험군과 대조군의 특성을 알 수 있게 설명</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->
                <div class="editor__title">
                    <strong>3)실험,시험 분석</strong>
                    <ul class="editor__list">
                        <li>- 작물실험 : 재배작물에 대한 생육조사나 실험계획(상세자료 별첨가능, 기타 서류 등록 단계에서 첨부해 주세요.)</li>
                        <li>- 시험분석 : 기자재나 장비에 대한 검사 분석 계획 </li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->
                <div class="editor__title">
                    <strong>4)실증관리</strong>
                    <ul class="editor__list">
                        <li>- 인력계획 : 실증참여 전담인력수와 상주인력 계획</li>
                        <li>- 인전관리 : 실증과정중 예상되는 위험상황과 대응계획</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="table__caption">3.사업과 계획</div>
                <div class="cnt__title">지재권 및 인증 확보계획(해당시)</div>
                <div class="editor__title">
                    <strong>지자재,인증</strong>
                    <ul class="editor__list">
                        <li>- 실증결과 및 실증대상에 대한 지재권 확보방안</li>
                        <li>- 실증대상의 사업화에 필요한 인증과 인증확보 계획</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="cnt__title">국내외 시장성</div>
                <div class="editor__title">
                    <strong>시장현황과 전망</strong>
                    <ul class="editor__list">
                        <li>- 실증대상과 관련한 국내외 시장현황과 전망(상세자료 별첨가능, 기타 서류 등록 단계에서 첨부해 주세요.)</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="cnt__title">판매계획</div>
                <div class="editor__title">
                    <strong>판매전략과 전망</strong>
                    <ul class="editor__list">
                        <li>- 실증완료 후 실증대상의 국내외 판매전략과 매출전망(실증완료후 3년)</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->

                <div class="cnt__title">후속 연구개발 계획</div>
                <div class="editor__title">
                    <strong>연구개발계획</strong>
                    <ul class="editor__list">
                        <li>- 실증결과의 활용을 위한 후속 연구계획(있을 경우에 한함)</li>
                    </ul>
                </div>
                <div class="editor__box" style="border: 1px solid #e8e8e8;">
                    EDITOR AREA
                </div>
                <!--//-->


                <div class="table__caption">4.안전성 검토</div>
                <div class="cnt__title">반입 기자재 리스트</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:20%">
                            <col style="width:15%">
                            <col style="width:15%">
                            <col style="width:10%">
                            <col style="width:10%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>명칭</th>
                            <th>용도</th>
                            <th>단위/규격</th>
                            <th>수량</th>
                            <th>단가</th>
                            <th>금액</th>
                        </tr>
                        <tr>
                            <td>시설자재
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>ICT기자재
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>작물보호제/비료
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>스마트팜SW
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>종자/종묘
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>로봇
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">실증단지 반입 유해화학물질 목록</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:14%">
                            <col style="width:20%">
                            <col style="width:15%">
                            <col style="width:13%">
                            <col style="width:13%">
                            <col style="width:15%">
                            <col style="width:10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>물질명</th>
                            <th>화학식</th>
                            <th>예상사용량</th>
                            <th>보관함</th>
                            <th>보관장소</th>
                            <th>특이사항</th>
                        </tr>
                        <tr>
                            <th>1
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>2
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>3
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">폐기물 발생추정</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:30%">
                            <col style="width:25%">
                            <col style="width:25%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>구분</th>
                            <th>발생량</th>
                            <th>보관장소</th>
                            <th>반출계획</th>
                        </tr>
                        <tr>
                            <td>오염수
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td>폐기토양/배지
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

                <div class="cnt__title">소요 전력량 및 내역</div>
                <div class="table__type no--border">
                    <table class="table__type--app">
                        <colgroup>
                            <col style="width:12%">
                            <col style="width:22%">
                            <col style="width:22%">
                            <col style="width:22%">
                            <col style="width:22%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>번호</th>
                            <th>장비명</th>
                            <th>용도</th>
                            <th>사용전원</th>
                            <th>소비전력</th>
                        </tr>
                        <tr>
                            <th>1
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>2
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>3
                                <a href="#none" class="btn default fl-right pos-bottom" title="행추가">┼</a>
                            </th>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                            <td class="td__left">
                                <input type="text">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!--//-->

            </div>
        </div>
    </div>
    <div class="footer_app">
        <div class="footer__btn">
            <a href="#" class="btn dark btn-lg fl-left">임시저장</a>
            <a href="app_step2" class="btn info btn-lg ">이전</a>
            <a href="app_step4" class="btn submit btn-lg ">다음</a>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/lib/swiper.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/assets/js/ui.common.js" type="text/javascript"></script>
<script>
    $("#signature-1").change(function(){
        if($("#signature-1").is(":checked")){
            //alert("체크박스 체크했음!");
            $('#signature_name').attr('disabled', false);

        }else{
            $('#signature_name').attr('disabled', true);
            //alert("체크박스 체크 해제!");

        }
    });

</script>



</body>
</html>
