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

                  <c:if test="${not empty requestScope['org.springframework.validation.BindingResult.productForm'].allErrors}">
                    <c:import url="../template/alerts/alertErroAddDB.jsp" />
                  </c:if>

                    <form class="needs-validation" novalidate action='<c:url value="/product/productNew"/>' method="post">

                      <c:set var="bindingResult" value="${requestScope['org.springframework.validation.BindingResult.productForm']}"/>

                      <input type="hidden" name="id" value="${productForm.productFormId}">
                      <input type="hidden" name="id" value="${productForm.productId}">

                      <div class="form-row">
                        <div class="col-md-7 mb-2">
                          <label for="productFormName">Nome do produto</label>
                          <input type="text" name="productName" class="form-control" id="productFormName" placeholder="Nome do produto" value="${productForm.productName}" required>
                          <c:forEach items="${bindingResult.getFieldErrors('productName')}" var="error">
                            <span class="text-danger">${error.defaultMessage}</span>
                          </c:forEach>
                        </div>
                        <div class="col-md-5 mb-2">
                          <label for="productFormManufacturer">Fabricante</label>
                          <input type="text" name="productManufacturer" class="form-control" id="productFormManufacturer" placeholder="Fabricante" value="${productForm.productManufacturer}" required>
                          <c:forEach items="${bindingResult.getFieldErrors('productManufacturer')}" var="error">
                            <span class="text-danger">${error.defaultMessage}</span>
                          </c:forEach>
                        </div>
                      </div>

                      <div class="form-row">
                        <div class="col-md-8 mb-2">
                          <label for="productFormDescription">Descrição</label>
                          <input type="text" name="productDescription" class="form-control" id="productFormDescription" placeholder="Descrição"
                                 value="${productForm.productDescription}" required>
                          <c:forEach items="${bindingResult.getFieldErrors('productDescription')}" var="error">
                            <span class="text-danger">${error.defaultMessage}</span>
                          </c:forEach>
                        </div>
                        <div class="col-md-4 mb-2">
                          <label for="productFormCategory">Categoria</label>
                          <input type="text" name="productCategory" class="form-control" id="productFormCategory" placeholder="Categoria"
                                 value="${productForm.productCategory}" required>
                          <c:forEach items="${bindingResult.getFieldErrors('productCategory')}" var="error">
                            <span class="text-danger">${error.defaultMessage}</span>
                          </c:forEach>
                        </div>
                      </div>


                      <div class="form-row">

                        <div class="col-md-2 mb-3">
                        <label for="productFormUnitInStock">Quantidade</label>
                        <input type="text" name="productUnitInStock" class="form-control" id="productFormUnitInStock" placeholder="0"
                               value="${productForm.productUnitInStock}" required>
                          <c:forEach items="${bindingResult.getFieldErrors('productUnitInStock')}" var="error">
                            <span class="text-danger">Ops.. insira um valor <b>inteiro</b> válido!</span>
                          </c:forEach>
                      </div>
                        <div class="col-md-4 mb-3">
                          <label for="productFormPrice">Preço</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                              <span class="input-group-text">R$</span>
                            </div>
                            <input type="text" name="productPrice" class="form-control" id="productFormPrice" placeholder="0.00" value="${productForm.productPrice}"  required>
                            <c:forEach items="${bindingResult.getFieldErrors('productPrice')}" var="error">
                              <span class="text-danger">${error.defaultMessage}</span>
                            </c:forEach>
                          </div>
                        </div>



                        <div class="col-md-6 mb-3">
                          <label for="supplier">Fornecedor:</label>
                          <select id="supplier" name="supplierId" class="form-control">
                            <option value="">Selecione o fornecedor</option>
                            <c:forEach var="suppliers" items="${suppliers}">
                              <option value="${suppliers.supplierId}" ${suppliers.supplierId.equals(productForm.supplierId)? "selected": ""}>${suppliers.supplierId} - ${suppliers.supplierName} (CNPJ: ${suppliers.supplierCNPJ})</option>
                            </c:forEach>
                          </select>
                          <c:forEach items="${bindingResult.getFieldErrors('supplierId')}" var="error">
                            <span class="text-danger">${error.defaultMessage}</span>
                          </c:forEach>
                        </div>
                      </div>
                      <div class="d-flex justify-content-end">
                      <button type="reset" class="btn btn-danger" >Apagar tudo</button>&nbsp;
                        <button type="submit" class="btn btn-primary" >Salvar</button>
                      </div>
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

      </div>
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
