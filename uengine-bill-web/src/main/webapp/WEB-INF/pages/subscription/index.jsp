<%@ page contentType="text/html; charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="uengine" uri="http://www.uengine.io/tags" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org"
      lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>uEngine Billing | HOME</title>

    <%@include file="../template/header_js.jsp" %>
</head>

<body>
<div id="wrapper">
    <%@include file="../template/nav.jsp" %>
    <script type="text/javascript">$('[name=list-menu-subscription]').addClass('active');</script>

    <div id="page-wrapper" class="gray-bg dashbard-1">

        <%@include file="../template/header.jsp" %>

        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Subscriptions</h5>

                        <div class="ibox-tools">
                            <a href="./subscription/new" type="button" class="btn btn-primary btn-sm">New +</a>
                            <a class="dropdown-toggle btn btn-default btn-sm" data-toggle="dropdown" href="#"><i
                                    class="fa fa-bars"></i></a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">All</a>
                                </li>
                                <li><a href="#">Active</a>
                                </li>
                                <li><a href="#">Inactive</a>
                                </li>
                                <li><a href="#">Trial</a>
                                </li>
                                <li><a href="#">Canceled This Month</a>
                                </li>
                                <li><a href="#">Canceled Last Month</a>
                                </li>
                                <li><a href="#">Dunning</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="#">Export Subscriptions</a>
                                </li>
                                </li>
                                <li class="divider"></li>
                                <li><a href="#">Refresh List</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover dataTables-example">
                                <thead>
                                <tr>
                                    <th>DATE</th>
                                    <th>CUSTOMER NAME</th>
                                    <th>EMAIL</th>
                                    <th>STATUS</th>
                                    <th>PLAN NAME</th>
                                    <th>AMOUNT</th>
                                    <th>ACTIVATED ON</th>
                                    <th>LAST BILLED ON</th>
                                    <th>NEXT BILLING ON</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>20 Dec 2016</td>
                                    <td><a href="./subscription/detail">darkgodarkgo</a></td>
                                    <td>sppark@uengine.org</td>
                                    <td class="text-success">LIVE</td>
                                    <td>basic-monthly</td>
                                    <td>$33.92</td>
                                    <td>20 Dec 2016</td>
                                    <td>21 Dec 2016</td>
                                    <td>20 Jan 2017</td>
                                </tr>
                                <tr>
                                    <td>20 Dec 2016</td>
                                    <td><a href="./subscription/detail">darkgodarkgo</a></td>
                                    <td>sppark@uengine.org</td>
                                    <td class="text-success">LIVE</td>
                                    <td>basic-monthly</td>
                                    <td>$33.92</td>
                                    <td>20 Dec 2016</td>
                                    <td>21 Dec 2016</td>
                                    <td>20 Jan 2017</td>
                                </tr>
                                <tr>
                                    <td>20 Dec 2016</td>
                                    <td><a href="./subscription/detail">darkgodarkgo</a></td>
                                    <td>sppark@uengine.org</td>
                                    <td class="text-success">LIVE</td>
                                    <td>basic-monthly</td>
                                    <td>$33.92</td>
                                    <td>20 Dec 2016</td>
                                    <td>21 Dec 2016</td>
                                    <td>20 Jan 2017</td>
                                </tr>
                                <tr>
                                    <td>20 Dec 2016</td>
                                    <td><a href="./subscription/detail">darkgodarkgo</a></td>
                                    <td>sppark@uengine.org</td>
                                    <td class="text-success">LIVE</td>
                                    <td>basic-monthly</td>
                                    <td>$33.92</td>
                                    <td>20 Dec 2016</td>
                                    <td>21 Dec 2016</td>
                                    <td>20 Jan 2017</td>
                                </tr>
                                <tr>
                                    <td>20 Dec 2016</td>
                                    <td><a href="./subscription/detail">darkgodarkgo</a></td>
                                    <td>sppark@uengine.org</td>
                                    <td class="text-success">LIVE</td>
                                    <td>basic-monthly</td>
                                    <td>$33.92</td>
                                    <td>20 Dec 2016</td>
                                    <td>21 Dec 2016</td>
                                    <td>20 Jan 2017</td>
                                </tr>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>DATE</th>
                                    <th>CUSTOMER NAME</th>
                                    <th>EMAIL</th>
                                    <th>STATUS</th>
                                    <th>PLAN NAME</th>
                                    <th>AMOUNT</th>
                                    <th>ACTIVATED ON</th>
                                    <th>LAST BILLED ON</th>
                                    <th>NEXT BILLING ON</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="../template/footer.jsp" %>

    </div>
</div>
<%@include file="../template/footer_js.jsp" %>


<script>
    $(document).ready(function () {
        $('.dataTables-example').DataTable({
            pageLength: 25,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            buttons: [
                {extend: 'copy'},
                {extend: 'csv'},
                {extend: 'excel', title: 'ExampleFile'},
                {extend: 'pdf', title: 'ExampleFile'},

                {
                    extend: 'print',
                    customize: function (win) {
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                    }
                }
            ]

        });
    });
</script>
</body>
</html>
