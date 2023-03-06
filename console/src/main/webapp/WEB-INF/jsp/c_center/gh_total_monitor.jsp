<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <c:forEach var = "loop" begin = "1" end = "20">


    <c:if test="${loop eq 1 || loop eq 6 || loop eq 11 || loop eq 16 || loop eq 21}">
    <div class="card-deck">
    </c:if>
<c:choose>
    <c:when test="${loop > lisfOfFarmListVO.size()}">
        <div class="card card-empty dark-style mb-3 h-75">
        </div>
    </c:when>
    <c:otherwise>


<c:set var="farmSectorVO" value="${userDemoFarmSectorVOList.get(loop-1)}"/>
<c:set var="farmVO" value="${curFarmVOList.get(loop-1)}"/>

        <div class="card dark-style mb-3 h-75 <c:if test="${farmSectorVO.user_demo_type eq 1}">border border-secondary</c:if> ">
            <div class="card-header with-elements">
                <span class="card-header-title ">${farmSectorVO.guyok}. ${fn:replace(farmSectorVO.sector_title,'^2','<sup>2</sup>')}</span>
                <div class="card-header-elements ml-md-auto">
                    <%--<button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>--%>
                    <button type="button" class="btn btn-sm icon-btn btn-outline-secondary dropdown-toggle hide-arrow" data-toggle="dropdown" data-trigger="hover" aria-haspopup="true" aria-expanded="false"><span class="ion ion-md-menu"></span></button>
                    <div class="dropdown-menu dropdown-menu-right">
                            <button id="btn_sensor${farmSectorVO.guyok}_1" onclick="onDataButtonClick(${farmSectorVO.guyok}, 1);" type="button" class="btn icon-btn btn-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="온도"><span class="fas fa-temperature-high"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_2" onclick="onDataButtonClick(${farmSectorVO.guyok}, 2);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="습도"><span class="fas fa-tint"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_3" onclick="onDataButtonClick(${farmSectorVO.guyok}, 3);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="CO²">CO²</button>
                             <button id="btn_sensor${farmSectorVO.guyok}_4" onclick="onDataButtonClick(${farmSectorVO.guyok}, 4);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="난방"><span class="ion ion-md-flame"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_5" onclick="onDataButtonClick(${farmSectorVO.guyok}, 5);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="광량"><span class="fas fa-lightbulb"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_6" onclick="onDataButtonClick(${farmSectorVO.guyok}, 6);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="수분"><span class="fas fa-faucet"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_7" onclick="onDataButtonClick(${farmSectorVO.guyok}, 7);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="차광"><span class="oi oi-expand-up"></span></button>
                            <button id="btn_sensor${farmSectorVO.guyok}_8" onclick="onDataButtonClick(${farmSectorVO.guyok}, 8);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="천창"><span class="fab fa-think-peaks"></span></button>
                            <button id="btn_sensor${farmSectorVO.guyok}_9" onclick="onDataButtonClick(${farmSectorVO.guyok}, 9);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="EC"><span class="fab fa-pagelines"></span></button>
                             <button id="btn_sensor${farmSectorVO.guyok}_10" onclick="onDataButtonClick(${farmSectorVO.guyok}, 10);" type="button" class="btn icon-btn btn-outline-secondary btn_sensor${farmSectorVO.guyok}" data-toggle="tooltip" data-placement="bottom" data-state="success" title="PH"><span class="fas fa-eye-dropper"></span></button>
                             <button type="button" class="btn icon-btn btn-outline-success"><span class="ion ion-ios-more"></span></button>

                    </div>
                </div>
            </div>
            <div id="pl-graph${farmSectorVO.guyok}" class="card-img-top" style="height: 200px">

            </div>
            <div class="card-img-overlay inline text-right mt-5" style="padding: 0.5rem;height: 200px;">
                <span class="text-muted small mr-1"><i class="fas fa-circle <c:if test="${farmVO.xheaterrun eq 1}">text-danger</c:if>"></i> 냉난방기</span>
                <br>
                <span class="text-muted small mr-1"><i class="fas fa-circle <c:if test="${farmVO.xpumprun eq 1}">text-success</c:if>"></i> 순환펌프</span>
                <br>
                <span class="text-muted small mr-2"><i class="fas fa-circle <c:if test="${farmVO.xfan1run eq 1}">text-warning</c:if>"></i> 유동팬&nbsp;&nbsp;</span>
                <br>
                <span class="text-muted small text- mr-1"><i class="fas fa-circle <c:if test="${farmVO.xsprayrun eq 1}">text-primary</c:if>"></i> 분무작동</span>
            </div>
<%--            <p class="text-center mt-2">
                <button type="button" class="btn btn-xs btn-outline-secondary"><span class="ion ion-md-add"></span> 상세보기</button>
            </p>--%>

        </div>


    </c:otherwise>
</c:choose>
       <%-- <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">2. 실증 온실(비닐,과채류C)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="pl-graph2" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
                </p>
            </div>
        </div>
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">2. 실증 온실(비닐,과채류C)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="pl-graph3" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
                </p>
            </div>
        </div>
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">3. 실증 온실(비닐,과채류C)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-graph3" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
                </p>
            </div>
        </div>
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">4. 실증 온실(비닐,엽채류C)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="pl-graph4" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-primary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
                </p>
            </div>
        </div>--%>
<c:if test="${loop eq 5 || loop eq 10 || loop eq 15 || loop eq 20}">
    </div>
</c:if>

</c:forEach>
    <%--

        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">20. 실증 온실(유리,플랜트)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="pl-graph20" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
               </p>
            </div>
        </div>
    </div>--%>

</div>
<script src="resources/assets/vendor/libs/d3/d3.js"></script>
<link rel="stylesheet" href="resources/assets/vendor/libs/c3/c3.css">
<script src="resources/assets/vendor/libs/c3/c3.js"></script>
<script>

    var isDark = true;
    var gridColor = isDark ? '#989898' : '#aaaaaa';
    var gridBorder = isDark ? '#383b40' : '#eeeeee';
    var tickFill = isDark ? '#383b40' : '#f5f5f5';
    var transparent = isDark ? '#00000000' : '#00000000';
/*    arrXouttemp
    arrXwinddirec
    arrXwindsp
    arrXsunvol
    arrXsunadd*/
    var datas=[];

    $(function() {


<c:forEach items="${lisfOfFarmListVO}" var="farmVOS" varStatus="status1">

        var data=new Array();
        //온도1
        var arr1Xintemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xintemp1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xintemp']=arr1Xintemp${status1.count};
        //온도2
        var arr2Xintemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xintemp2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xintemp']=arr2Xintemp${status1.count};
        //지온
        var arrXgndtemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xgndtemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXgndtemp']=arrXgndtemp${status1.count};
        //환기온도
        var arrXventtemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xventtemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXventtemp']=arrXventtemp${status1.count};
        //난방설정온도
        var arrXheattemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xheattemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXheattemp']=arrXheattemp${status1.count};

        //습도1
        var arr1Xinhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xinhum1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xinhum']=arr1Xinhum${status1.count};

        //지습
        var arrXgndhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xgndhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXgndhum']=arrXgndhum${status1.count};

        //co2
        var arrXco${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xco2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXco']=arrXco${status1.count};

        //난방수온도
        var arrXwatertemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xwatertemp}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXwatertemp']=arrXwatertemp${status1.count};
        //난방수온도2
        var arr2Xwatertemp${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xwatertemp2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xwatertemp']=arr2Xwatertemp${status1.count};
        //이슬점
        var arrXdhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xdhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXdhum']=arrXdhum${status1.count};
        //이슬점
        var arrXdhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xdhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXdhum']=arrXdhum${status1.count};
        //절대습도
        var arrXabhum${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xabhum}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXabhum']=arrXabhum${status1.count};
        //천창개폐율1
        var arr1Xskyvol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xskyvol1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xskyvol']=arr1Xskyvol${status1.count};
        //천창개폐율2
        var arr2Xskyvol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xskyvol2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xskyvol']=arr2Xskyvol${status1.count};
        //커튼 개폐율1
        var arrXcur1vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur1vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur1vol']=arrXcur1vol${status1.count};
        //커튼 개폐율2
        var arrXcur2vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur2vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur2vol']=arrXcur2vol${status1.count};
        //커튼 개폐율3
        var arrXcur3vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xcur3vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrXcur3vol']=arrXcur3vol${status1.count};
        //온실밸브1 개폐율
        var arrX3way1vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.x3way1vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrX3way1vol']=arrX3way1vol${status1.count};
        //온실밸브2 개폐율
        var arrX3way2vol${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.x3way2vol}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arrX3way2vol']=arrX3way2vol${status1.count};
        //EC 1
        var arr1Xec${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xec1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xec']=arr1Xec${status1.count};
        //EC 2
        var arr2Xec${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xec2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xec']=arr2Xec${status1.count};
        //PH 1
        var arr1Xph${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xph1}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr1Xph']=arr1Xph${status1.count};
        //PH 2
        var arr2Xph${status1.count}=[
            <c:forEach items="${farmVOS}" var="farmVO" varStatus="status2">
            [Date.parse('${farmVO.dt} ${farmVO.hhmm}:00'), ${farmVO.xph2}]<c:if test="${status2.index ne farmVOS.size()-1}">,</c:if>
            </c:forEach>
        ];
        data['arr2Xph']=arr2Xph${status1.count};

        datas.push(data);

        $.plot($('#pl-graph${status1.count}'), [
            {
                label: '온도',
                data: datas[${status1.count-1}]['arr1Xintemp']
            },
            {
                label: '환기설정온도',
                data: datas[${status1.count-1}]['arrXventtemp']
            },
            {
                label: '난방설정온도',
                data: datas[${status1.count-1}]['arrXheattemp']
            },
        ], {
            yaxis: {
                show:true,
                color: gridBorder,
                position: 'left'
            },
            xaxis: {
                show:true,
                color: gridBorder,
                mode: "time",
                timeBase: "milliseconds",
                timeformat: "%H:%M"
            },
            legend: {
                show: true,
                position: 'sw',
                backgroundColor: null,
            },
            colors: [ '#6ebdc5', '#ccbf7b', '#a284bd','#f65886', '#826be7']

        });



        </c:forEach>


    });

    function onDataButtonClick(guyok_num, sensor_num){

        $(".btn_sensor"+guyok_num).each(function () {
            if($(this).hasClass("btn-secondary")){
                $(this).addClass("btn-outline-secondary");
            }
            $(this).removeClass('btn-secondary');
        });
        $("#btn_sensor"+guyok_num+"_"+sensor_num).removeClass("btn-outline-secondary");
        $("#btn_sensor"+guyok_num+"_"+sensor_num).addClass("btn-secondary");

        var label = "";
        if(sensor_num==1){
            var arrD = [
                {
                    label: '온도',
                    data: datas[guyok_num]['arr1Xintemp']
                },
                {
                    label: '환기설정온도',
                    data: datas[guyok_num]['arrXventtemp']
                },
                {
                    label: '난방설정온도',
                    data: datas[guyok_num]['arrXheattemp']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==2){
            var arrD = [
                {
                    label: '습도',
                    data: datas[guyok_num]['arr1Xinhum']
                },
                {
                    label: '이슬점',
                    data: datas[guyok_num]['arrXdhum']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==3){
            var arrD = [
                {
                    label: 'CO²',
                    data: datas[guyok_num]['arrXco']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==4){
            var arrD = [


                {
                    label: '온수공급1',
                    data: datas[guyok_num]['arrXwatertemp']
                },
                {
                    label: '온수공급2',
                    data: datas[guyok_num]['arr2Xwatertemp']
                },
                {
                    label: '실내온도',
                    data: datas[guyok_num]['arr1Xintemp']
                },
                {
                    label: '난방설정온도',
                    data: datas[guyok_num]['arrXheattemp']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==5){
            var arrD = [
                {
                    label: '조도',
                    data: []
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==6){
            var arrD = [
                {
                    label: '난방밸브1',
                    data: datas[guyok_num]['arrX3way1vol']
                },
                {
                    label: '난방밸브2',
                    data: datas[guyok_num]['arrX3way2vol']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==7){
            var arrD = [
                {
                    label: '차광커튼1',
                    data: datas[guyok_num]['arrXcur1vol']
                },
                {
                    label: '차광커튼2',
                    data: datas[guyok_num]['arrXcur2vol']
                },
                {
                    label: '차광커튼3',
                    data: datas[guyok_num]['arrXcur3vol']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==8){
            var arrD = [
                {
                    label: '왼쪽 천창',
                    data: datas[guyok_num]['arr1Xskyvol']
                },
                {
                    label: '오른쪽 천창',
                    data: datas[guyok_num]['arr2Xskyvol']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==9){
            var arrD = [
                {
                    label: 'EC1',
                    data: datas[guyok_num]['arr1Xec']
                },
                {
                    label: 'EC2',
                    data: datas[guyok_num]['arr2Xec']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
        else if(sensor_num==10){
            var arrD = [
                {
                    label: 'pH1',
                    data: datas[guyok_num]['arr1Xph']
                },
                {
                    label: 'pH2',
                    data: datas[guyok_num]['arr2Xph']
                },
            ];
            drawPlotGraph(guyok_num,arrD);
        }
    }
    function drawPlotGraph(guyok_num,arrData){
        $.plot($('#pl-graph'+guyok_num), arrData, {
            yaxis: {
                show:true,
                color: gridBorder,
                position: 'left'
            },
            xaxis: {
                show:true,
                color: gridBorder,
                mode: "time",
                timeBase: "milliseconds",
                timeformat: "%H:%M"
            },
            legend: {
                show: true,
                position: 'sw',
                backgroundColor: null,
            },
            colors: [ '#6ebdc5', '#ccbf7b', '#a284bd','#f65886', '#826be7']

        });

    }
</script>
<!-- / Page content -->
