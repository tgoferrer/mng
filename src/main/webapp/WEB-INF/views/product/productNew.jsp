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
  <link href="<c:url value="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"/> " rel="stylesheet">

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
                  <h6 class="m-0 font-weight-bold text-primary">Produtos > Novo</h6>
                </div>
                <div class="card-body">
                  <h5>Dados do Produto</h5>
                  <br/>




                  <div class=" col-md-6 col-md-offset-3">
                    <c:set var="bindingResult" value="${requestScope['org.springframework.validation.BindingResult.product']}"/>

                    <form action='<c:url value="/product/productNew"/>' method="post">
                      <input type="hidden" name="id" value="${productForm.productFormId}">
                      <input type="hidden" name="id" value="${productForm.productId}">

                      <div class="form-group">
                        <label for="name">Nome:</label>
                        <input id="name" type="text" name="productName" class="form-control" value="${productForm.productName}">
                        <c:forEach items="${bindingResult.getFieldErrors('productName')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <label for="description">Descrição:</label>
                        <input id="description" type="text" name="productDescription" class="form-control" value="${productForm.productDescription}">
                        <c:forEach items="${bindingResult.getFieldErrors('productDescription')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <label for="category">Categoria:</label>
                        <input id="category" type="text" name="productCategory" class="form-control"
                               value="${productForm.productCategory}">
                        <c:forEach items="${bindingResult.getFieldErrors('productCategory')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <label for="manufacturer">Fabricante:</label>
                        <input id="manufacturer" type="text" name="productManufacturer" class="form-control" value="${productForm.productManufacturer}">
                        <c:forEach items="${bindingResult.getFieldErrors('productManufacturer')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <label for="unitInStock">Unidades no estoque:</label>
                        <input id="unitInStock" type="text" name="productUnitInStock" class="form-control" value="${productForm.productUnitInStock}">
                        <c:forEach items="${bindingResult.getFieldErrors('productUnitInStock')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="productAvailable" value="${productForm.productAvailable}" id="productAvailable">
                          <label class="form-check-label" for="productAvailable">
                            Produto disponível
                          </label>
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="price">Preço:</label>
                        <input id="price" type="text" name="productPrice" class="form-control" value="${productForm.productPrice}">
                        <c:forEach items="${bindingResult.getFieldErrors('price')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <div class="form-group">
                        <label for="supplier">Fornecedor:</label>
                        <select id="supplier" name="supplierId" class="form-control">
                          <option value="">Selecione o fornecedor</option>
                          <c:forEach var="suppliers" items="${suppliers}">
                            <option value="${suppliers.supplierId}" ${suppliers.supplierId.equals(productForm.supplierId)? "selected": ""}>${suppliers.supplierName}</option>
                          </c:forEach>
                        </select>
                        <c:forEach items="${bindingResult.getFieldErrors('supplierId')}" var="error">
                          <span class="text-danger">${error.defaultMessage}</span>
                        </c:forEach>
                      </div>

                      <button type="submit" class="btn btn-primary">Salvar</button>
                    </form>
                  <br/>


                </div>
              </div>

            </div>
          </div>

          </div>
        <!-- /.container-fluid -->
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
