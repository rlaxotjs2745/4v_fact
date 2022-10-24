<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:08 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">센서별 정보</h4>
    <div class="card">
        <div class="card-datatable table-responsive pt-0 pb-3">
            <div class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="tb_console_notice" class="table table-bordered table-hover dataTable no-footer mt-0" role="grid" aria-describedby="article-list_info" style="">
                            <thead class="bg-success">
                            <tr role="row">
                                <th class="text-center px-2" style="width:6%">No</th>
                                <th class="text-center px-2" style="width:10%">온실</th>
                                <th class="text-center px-2" style="width:6%">천창-좌</th>
                                <th class="text-center px-2" style="width:6%">천창-우</th>
                                <th class="text-center px-2" style="width:6%">외부 차광망</th>
                                <th class="text-center px-2" style="width:6%">측창-좌</th>
                                <th class="text-center px-2" style="width:6%">측창-우</th>
                                <th class="text-center px-2" style="width:6%">전면측창-좌</th>
                                <th class="text-center px-2" style="width:6%">전면측창-우</th>
                                <th class="text-center px-2" style="width:6%">스크린-좌</th>
                                <th class="text-center px-2" style="width:6%">스크린-우</th>
                                <th class="text-center px-2" style="width:6%">전면스크린-좌</th>
                                <th class="text-center px-2" style="width:6%">전면스크린-우</th>
                                <th class="text-center px-2" style="width:6%">일중커튼</th>
                                <th class="text-center px-2" style="width:6%">이중커튼</th>
                                <th class="text-center px-2" style="width:6%">유동팬</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="">
                                <td class="text-center align-middle">1</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">2</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">3</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">4</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">5</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">6</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">7</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">8</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">9</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">10</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">11</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">12</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">13</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">14</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">15</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">16</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">17</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">18</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">19</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">20</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>
                            <tr class="">
                                <td class="text-center align-middle">21</td>
                                <td class="text-center align-middle">유리온실</td>
                                <td class="text-center align-middle">24%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">50%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">60%</td>
                                <td class="text-center align-middle">20%</td>
                                <td class="text-center align-middle">34%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">26%</td>
                                <td class="text-center align-middle">0%</td>
                                <td class="text-center align-middle">100%</td>
                                <td class="text-center align-middle">100%</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- / Page content -->
