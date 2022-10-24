<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:05 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">

    <div class="card-deck">
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">1. 실증 온실(유리,육묘장)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline1" class="card-img-top" style="height: 200px"></div>

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
            <div id="c3-spline2" class="card-img-top" style="height: 200px"></div>

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
            <div id="c3-spline4" class="card-img-top" style="height: 200px"></div>

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
        </div>
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">5. 실증 온실(비닐,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline5" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-lightbulb"></span></button>
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
                <span class="card-header-title mr-2">6. 실증 온실(비닐,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline6" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-lightbulb"></span></button>
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
                <span class="card-header-title mr-2">7. 실증 온실(비닐,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline7" class="card-img-top" style="height: 200px"></div>

            <div class="card-body">
                <p class="text-center">
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-temperature-high"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-tint"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-codiepie"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-sun"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-lightbulb"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-faucet"></span></button>
                    <button type="button" class="btn icon-btn btn-primary"><span class="fas fa-water"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fab fa-pagelines"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-eye-dropper"></span></button>
                    <button type="button" class="btn icon-btn btn-outline-secondary"><span class="fas fa-thermometer-empty"></span></button>
                </p>
            </div>
        </div>
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">8. 실증 온실(유리,엽채류B)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline8" class="card-img-top" style="height: 200px"></div>

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
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">9. 실증 온실(유리,엽채류B)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline9" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">10. 실증 온실(유리,과채륲B)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline10" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">11. 실증 온실(유리,과채류B)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline11" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">12. 실증 온실(유리,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline12" class="card-img-top" style="height: 200px"></div>

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
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">13. 실증 온실(유리,기본형 과채류F)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline13" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">14. 실증 온실(유리,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline14" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">15. 실증 온실(유리,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline15" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">16. 실증 온실(유리,온실)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline16" class="card-img-top" style="height: 200px"></div>

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
    </div>
    <div class="card-deck">
        <div class="card dark-style mb-3 h-75">
            <div class="card-header with-elements">
                <span class="card-header-title mr-2">17. 실증 온실(SP,병해충)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline17" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">18. 실증 온실(유리,과채류A)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline18" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">19. 실증 온실(유리,과채류A)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline19" class="card-img-top" style="height: 200px"></div>

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
                <span class="card-header-title mr-2">20. 실증 온실(유리,플랜트)</span>
                <div class="card-header-elements ml-md-auto">
                    <button type="button" class="btn btn-xs btn-outline-primary"><span class="ion ion-md-add"></span> 상세보기</button>
                </div>
            </div>
            <div id="c3-spline20" class="card-img-top" style="height: 200px"></div>

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
    </div>
</div>
<script src="resources/assets/vendor/libs/d3/d3.js"></script>
<link rel="stylesheet" href="resources/assets/vendor/libs/c3/c3.css">
<script src="resources/assets/vendor/libs/c3/c3.js"></script>
<script>
    $(function() {

        c3.generate({
            bindto: '#c3-spline1',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline2',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-graph3',
            color: { pattern: [ '#00BCD4', '#607D8B' ] },
            data: {
                columns: [
                    [ 'data1', 70, 48, 42, 2, 81, 35 ],
                    [ 'data2', 61, 61, 51, 94, 52, 55 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline4',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline5',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline6',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline7',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline8',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline9',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline10',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline11',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline12',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline13',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline14',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline15',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline16',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline17',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline18',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline19',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });
        c3.generate({
            bindto: '#c3-spline20',
            color: { pattern: [ '#00BCD4', '#607D8B'  ] },
            data: {
                type: 'spline',
                columns: [
                    [ '온도 1', 93, 70, 98, 44, 42, 84 ],
                    [ '온도 2', 39, 18, 90, 4, 61, 38 ]
                ],
            }
        });

    });
</script>
<!-- / Page content -->
