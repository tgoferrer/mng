<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-use3w sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/"/>">
        <div class="sidebar-brand-icon">
               <img src="<c:url value="/resources/img/use3wlogo.png"/>"/>
        </div>
        <%--<div class="sidebar-brand-text mx-3"> use3w </div>--%>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="">
            <i class="fas fa-fw fa-atom"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Interface
    </div>

    <!-- Nav Item - Clientes e Fornecedores Collapse Menu-->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClienteFornecedor" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-user-tag"></i>
            <span>Cliente / Fornecedor</span>
        </a>
        <div id="collapseClienteFornecedor" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h5 class="collapse-header">Clientes:</h5>
                <a class="collapse-item" href="cNovo.html">Novo</a>
                <a class="collapse-item" href="cEditarRemover.html">Editar / Remover</a>
                <a class="collapse-item" href="cConsultar.html">Consultar</a>
                <h5 class="collapse-header">Fornecedores:</h5>
                <a class="collapse-item" href="fNovo.html">Novo</a>
                <a class="collapse-item" href="fAtualizarRemover.html">Editar / remover</a>
                <a class="collapse-item" href="fConsultar.html">Consultar</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Produtos e Serviços Collapse Menu-->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseEstoque" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-toolbox"></i>
            <span>Produtos / Serviços</span>
        </a>
        <div id="collapseEstoque" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h5 class="collapse-header">Produto:</h5>
                <a class="collapse-item" href="<c:url value="/product/productNew"/>">Novo</a>
                <a class="collapse-item" href="<c:url value="/product/productList"/>">Abrir/Editar/Remover</a>
                <h5 class="collapse-header">Categoria de Produtos:</h5>
                <a class="collapse-item" href="<c:url value="/product/categoryNew"/>">Nova</a>
                <a class="collapse-item" href="<c:url value="/product/categoryList"/>">Abrir/Editar/Remover</a>
                <h5 class="collapse-header">Serviços:</h5>
                <a class="collapse-item" href="<c:url value="/service/serviceNew"/>">Novo</a>
                <a class="collapse-item" href="<c:url value="/service/serviceList"/>">Abrir/Editar/Remover</a>
                <h5 class="collapse-header">Categoria de Serviços:</h5>
                <a class="collapse-item" href="<c:url value="/service/categoryNew"/>">Nova</a>
                <a class="collapse-item" href="<c:url value="/service/categoryList"/>">Abrir/Editar/Remover</a>
            </div>
        </div>
    </li>


    <!-- Nav Item - Comercial Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseComercial" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cart-arrow-down"></i>
            <span>Comercial</span>
        </a>
        <div id="collapseComercial" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h5 class="collapse-header">Venda:</h5>
                <a class="collapse-item" href="vendaNova.html">Nova</a>
                <a class="collapse-item" href="vendaEditarCancelar.html">Editar / Cancelar</a>
                <a class="collapse-item" href="vendaConsultar.html">Consultar</a>
                <h5 class="collapse-header">Ordem de Serviço:</h5>
                <a class="collapse-item" href="osNova.html">Nova</a>
                <a class="collapse-item" href="osAtualizarRemover.html">Editar / Remover</a>
                <a class="collapse-item" href="osConsultar.html">Consultar</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Contabilidade Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseContabilidade" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-hand-holding-usd"></i>
            <span>Contabilidade</span>
        </a>
        <div id="collapseContabilidade" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h5 class="collapse-header">Funcionários:</h5>
                <a class="collapse-item" href="funcionarioNovo.html">Novo</a>
                <a class="collapse-item" href="funcionarioAtualizarRemover.html">Atualizar / remover</a>
                <a class="collapse-item" href="funcionarioConsultar.html">Consultar</a>
                <h5 class="collapse-header">Despesas fixas:</h5>
                <a class="collapse-item" href="despesasFixasNovo.html">Novo</a>
                <a class="collapse-item" href="despesasFixasAtualizarRemover.html">Atualizar / remover</a>
                <a class="collapse-item" href="despesasFixasConsultar.html">Consultar</a>
                <h5 class="collapse-header">Despesas variáveis:</h5>
                <a class="collapse-item" href="despesasVarNovo.html">Novo</a>
                <a class="collapse-item" href="despesasVarAtualizarRemover.html">Atualizar / remover</a>
                <a class="collapse-item" href="despesasVarConsultar.html">Consultar</a>

            </div>
        </div>
    </li>

    <!-- Nav Item - Admin Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAdmin" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-id-card"></i>
            <span>Administração</span>
        </a>
        <div id="collapseAdmin" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="<c:url value="/settings"/>">Configurações</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Addons
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Login Screens:</h6>
                <a class="collapse-item" href="login.html">Login</a>
                <a class="collapse-item" href="register.html">Register</a>
                <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">Other Pages:</h6>
                <a class="collapse-item" href="404.html">404 Page</a>
                <a class="collapse-item" href="blank.html">Blank Page</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Charts</span></a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>Tables</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->