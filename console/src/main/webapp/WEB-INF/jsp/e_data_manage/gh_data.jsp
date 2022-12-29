<%--
  Created by IntelliJ IDEA.
  User: abeki
  Date: 2021/10/11
  Time: 5:13 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Page content -->
<div class="container-fluid flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">온실 데이터</h4>

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
                                <th class="text-center px-2" style="width:6%">온도</th>
                                <th class="text-center px-2" style="width:6%">습도</th>
                                <th class="text-center px-2" style="width:6%">Co2농도</th>
                                <th class="text-center px-2" style="width:6%">일사량</th>
                                <th class="text-center px-2" style="width:6%">광량</th>
                                <th class="text-center px-2" style="width:6%">수분</th>
                                <th class="text-center px-2" style="width:6%">EC</th>
                                <th class="text-center px-2" style="width:6%">PH</th>
                                <th class="text-center px-2" style="width:6%">지온</th>
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
