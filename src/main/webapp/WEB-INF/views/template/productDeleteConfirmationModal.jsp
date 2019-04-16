<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="productDelete" tabindex="-1" role="dialog" aria-labelledby="productDelete" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="productDelete">Confirme se o produto descrito abaixo deve ser deletado</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="text-left"><b>Id:</b> ${product.productId}<br/>
                    <b>Identificação do produto:</b> ${product.productName}<br/>
                    <b>Fabricante:</b> ${product.productManufacturer}<br/>
                    <b>Descrição: </b> ${product.productDescription}<br/>
                    <b>Unidades disponíveis:</b> ${product.productUnitInStock}</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-danger">Deletar</button>
            </div>
        </div>
    </div>
</div>
