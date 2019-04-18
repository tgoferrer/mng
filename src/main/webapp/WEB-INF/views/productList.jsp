<%--
Created by IntelliJ IDEA.
User: tiagoferrer
Date: 2019-04-01
Time: 23:27
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/> " rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/resources/css/sb-admin-2.min.css"/>" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="<c:url value="resources/vendor/datatables/dataTables.bootstrap4.min.css"/> " rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <c:import url="template/sidebar.jsp"/>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <c:import url="template/topbar.jsp"/>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Produtos / Serviços</h1>
            <!-- Table options -->
              <!-- Button trigger modal -->
              <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#productTableOptions">
                Opções de visualização
              </button>

              <!-- Modal -->
              <div class="modal fade" id="productTableOptions" tabindex="-1" role="dialog" aria-labelledby="productTableOptions" aria-hidden="true">
                <div class="modal-dialog" role="form">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="productTableOptionsl">Opções de visualização</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productId">
                      <label class="form-check-label" for="productId"> Id</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productName">
                      <label class="form-check-label" for="productName"> Identificação</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productDescription">
                      <label class="form-check-label" for="productDescription"> Descrição</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productManufacturer">
                      <label class="form-check-label" for="productManufacturer"> Fabricante</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productUnitInStock">
                      <label class="form-check-label" for="productUnitInStock"> Unidades disponíveis</label>
                      </div>
                      <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="productPrice">
                      <label class="form-check-label" for="productPrice"> Preço</label>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                      <button type="button" class="btn btn-primary">Aplicar</button>
                    </div>
                  </div>
                </div>
              </div>

            <!-- End of Table options -->

          </div>

          <!-- DataTables -->
          <div class="card shadow mb-4 justify-content-between">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Produtos > Consultar / Editar / Remover </h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                  <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Fabricante</th>
                    <th>Status</th>
                    <th>Ação</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${products}" var="product">
                  <tr>
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.productManufacturer}</td>
                    <td>${product.productStatus}</td>
                    <td><center>
                      <a class="fas fa-fw fa-file-invoice" href="<spring:url value="/productList/productView/${product.productId}-${product.supplier.supplierId}"/>"/>
                      <a class="fas fa-fw fa-edit"/>
                      <a class="fas fa-fw fa-trash" data-toggle="modal" data-target="#productDelete" href=""></a>
                        <!-- Modal Product Delete Import-->
                        <c:import url="template/productDeleteConfirmationModal.jsp"/>
                      </center></td>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- Actions bar-->
      <div class="d-sm-flex align-items-center justify-content-center mb-4">
        <a href="<c:url value="productList"/>" class="d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Gerar relatório de produto</a>
      </div>

      <!-- End of Main Content -->

      <!-- Import Footer -->

      <c:import url="template/footer.jsp"/>

      <!-- End of import Footer -->
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

<c:import url="template/logoutModal.jsp"/>

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/> "></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/resources/js/sb-admin-2.min.js"/>"></script>

  <!-- Page level plugins -->
  <script src="<c:url value="/resources/vendor/datatables/jquery.dataTables.min.js"/>"></script>
  <script src="<c:url value="/resources/vendor/datatables/dataTables.bootstrap4.min.js"/> "></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value="/resources/js/demo/datatables-demo.js"/> "></script>


</body>

</html>
