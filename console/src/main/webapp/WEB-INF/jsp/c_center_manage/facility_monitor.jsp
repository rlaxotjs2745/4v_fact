<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">실증 기자재 현황</h4>


    <div class="card-deck">
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">1. 구동기 시험장비</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-outline-primary">대기중</button>
                </div>
                <div><p class="">토크 : </p></div>
                <div><p class="">회전수 : </p></div>
                <div><p class="">전류 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">2. 센서 연속 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">현재온도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">3. 복합 진동 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">설정 온도 : </p></div>
                <div><p class="">설정 습도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">4. 먼지 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">부유 주기 : </p></div>
                <div><p class="">부유 횟수 : </p></div>
                <div><p class="">기류 시간 : </p></div>
            </div>
        </div>
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">5. 열충격 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">현재 온도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">6. Walk-in 챔버</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">현재 온도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">7. EC 센서 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">설정 온도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">8. O2 센서 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">설정 온도 : </p></div>

            </div>
        </div>
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">9. 토양수분장력 센서 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">설정 온도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">10. 강우침수 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">진행 시간 : </p></div>
                <div><p class="">분사 압력 : </p></div>
                <div><p class="">회전 속도 : </p></div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">11. 양액 장치 유량 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
            </div>
        </div>
        <div class="card dark-style mb-3">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">12. 자동 급이 시험기</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline" class="card-img-top" style="height: 200px"></div>
            <div class="card-body">
                <div class="">
                    <button type="button" class="btn btn-xs btn-outline-primary">시험중</button>
                    <button type="button" class="btn btn-xs btn-primary">대기중</button>
                </div>
                <div><p class="">현재 온도 : </p></div>
            </div>
        </div>
    </div>
</div>
<!-- / Page content -->
