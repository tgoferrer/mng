<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="productDelete" tabindex="-1" role="dialog" aria-labelledby="productDelete" aria-hidden="true">
    <div class="modal-dialog" role="">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" ><center><b>Confirme se o produto descrito abaixo deve ser deletado</b></center></h6>
            </div>
            <form action="<c:url value="/product/productView/${product.productId}/delete"/>" method="post">
            <div class="modal-body">
                <p class="text-left"><b>Id:</b> ${product.productId}<br/>
                    <b>Identificação do produto:</b> ${product.productName}<br/>
                    <b>Fabricante:</b> ${product.productManufacturer}<br/>
                    <b>Descrição: </b> ${product.productDescription}<br/>
                    <b>Unidades disponíveis:</b> ${product.productUnitInStock}</p>
                    <br/>
                    <b><center>ATENÇÃO: Ao confirmar a exclusão desses dados não há como recupera-lós futuramente!<center></center></b>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="submit"   class="btn btn-danger">Deletar</button>
                </form>
            </div>
        </div>
    </div>
</div>
