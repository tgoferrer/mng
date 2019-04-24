<%--
Created by IntelliJ IDEA.
User: tiagoferrer
Date: 2019-04-01
Time: 23:27
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> use3w - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value="/resources/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/> "
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <c:import url="../template/sidebar.jsp"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <c:import url="../template/topbar.jsp"/>

            <!-- Begin Page Content -->
            <div class="container-fluid">


                <!-- Page Heading -->

                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Produtos / Serviços</h1>
                </div>


                <!-- Content Row -->
                <div class="row">

                    <!-- Content Column -->
                    <div class="col-lg mb-4">

                        <div class="col-lg mb-4">

                            <!-- Product View-->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Produtos > Consultar / Editar /
                                        Remover > ${product.productName}</h6>
                                </div>
                                <div class="card-body">

                                    <c:if test="${newProductAlert == 'true'}">
                                        <c:import url="../template/alerts/alertSucessAddDB.jsp"/>
                                    </c:if>


                                    <h5>Dados do Produto</h5>
                                    <br/>

                                    <div class="row">
                                        <div class="col-md-1 mb-2">
                                            <h6><b>ID </b></h6>
                                            <p>${product.productId}</p>
                                        </div>
                                        <div class="col-md-5 mb-2">
                                            <h6><b>Nome do produto </b></h6>
                                            <p>${product.productName}</p>
                                        </div>
                                        <div class="col-md-6 mb-2">
                                            <h6><b>Fabricante</b></h6>
                                            <p>${product.productManufacturer}</p>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-md-12 mb-2">
                                            <h6><b>Descrição </b></h6>
                                            <p>${product.productDescription}</p>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-2">
                                            <h6><b>Categoria </b></h6>
                                            <p>${product.productCategory}</p>
                                        </div>

                                        <div class="col-md-2 mb-2">
                                            <h6><b>Quantidade</b></h6>
                                            <p>${product.productUnitInStock}</p>
                                        </div>
                                        <div class="col-md-4 mb-2">
                                            <h6><b>Preço</b></h6>
                                            <p>R$${product.productPrice}</p>
                                        </div>
                                    </div>

                                    <br/>
                                    <h5>Dados do fornecedor</h5>
                                    <br/>
                                    <div class="row">
                                        <div class="col-md-1 mb-2">
                                            <h6><b>ID </b></h6>
                                            <p>${supplier.supplierId}</p>
                                        </div>
                                        <div class="col-md-5 mb-2">
                                            <h6><b>Razão Social </b></h6>
                                            <p>${supplier.supplierName}</p>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <h6><b>CNPJ</b></h6>
                                            <p>${supplier.supplierCNPJ}</p>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <h6><b>Telefone</b></h6>
                                            <p>${supplier.supplierPhone}</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 mb-2">
                                            <h6><b>Endereço </b></h6>
                                            <p>${supplier.supplierAddress}</p>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <h6><b>CPE</b></h6>
                                            <p>${supplier.supplierCPE}</p>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <h6><b>E-mail</b></h6>
                                            <p>${supplier.supplierEmail}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
            </div>

            <!-- Actions bar-->
            <div class="d-sm-flex align-items-center justify-content-center mb-4">
                <a href="<c:url value="/product/productView/${product.productId}/update"/>"
                   class="d-sm-inline-block btn btn-sm btn-warning shadow-sm"><i
                        class="fas fa-edit fa-sm text-white-50"></i> Editar</a> &nbsp
                <a href="<c:url value=""/>" class="d-sm-inline-block btn btn-sm btn-danger shadow-sm"
                   data-toggle="modal" data-target="#productDelete"><i class="fas fa-trash fa-sm text-white-50"></i>
                    Remover</a> &nbsp
                <!-- Modal Product Delete Import-->
                <c:import url="../template/productDeleteConfirmationModal.jsp"/>
                <a href="<c:url value="productList"/>" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                        class="fas fa-download fa-sm text-white-50"></i> Gerar relatório de produto</a>
            </div>


            <!-- End of actions bar-->


            <!-- End of Main Content -->

            <c:import url="../template/footer.jsp"/>

        </div>
        <!-- End of Content Wrapper -->

    </div>

    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <c:import url="../template/logoutModal.jsp"/>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/> "></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

    <!-- Page level plugins -->
    <script src="<c:url value="/resources/vendor/chart.js/Chart.min.js"/> "></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value="/resources/js/demo/chart-area-demo.js"/> "></script>
    <script src="<c:url value="/resources/js/demo/chart-pie-demo.js"/> "></script>

</body>

</html>
