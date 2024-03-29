<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="fragment/header.jsp"%>

<div class="container">
    <section class="row">
        <div class="col mt-4">
            <div class="col mt-4">
                <h4>Lịch sử mua hàng</h4>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-striped table-inverse">
                            <thead class="thead-inverse">
                            <tr>
                                <th>ID</th>
                                <th>Tài khoản</th>
                                <th>Ngày tạo</th>
                                <th>Địa chỉ</th>
                                <th>Trạng thái</th>
                                <th colspan="2"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${lstOrder}" var="orders">
                                <tr>
                                    <td scope="row" disabled>${orders.id}</td>
                                    <td>${orders.acc_id.userName}</td>
                                    <td>${ orders.createdate}</td>
                                    <td>${ orders.acc_id.address}</td>
                                    <td>${ orders.status}</td>
                                    <td>
                                        <a href="/detail_history/${orders.id}"><button
                                            class="btn btn-warning">Detail</button>
                                        </a>
                                        <c:if test='${"NEW".equals(orders.status)}'>
                                        <a href="/customer/cancel-order/${orders.id}"><button
                                                class="btn btn-danger">Hủy</button>
                                        </a>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<%@include file="fragment/footer.jsp"%>
