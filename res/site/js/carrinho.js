$('#produtos tr td a.excluir').click(function (e) {
    e.preventDefault();
    var elemento = $(this).parent().parent();
    var id = $(this).attr("data-id");
    ExcluirProd(id, elemento);
})

function ExcluirProd(id, elemento) {
    $.ajax({
        type: "POST",
        url: "/cart/remove",
        data: { id: id }
    }).done(function (data) {
        console.log(data);
        var obj = jQuery.parseJSON(data);
        $(elemento).fadeOut();
        $('#cart-total').html(formatarMoeda(obj.vltotal));
        $('#subtotal').html(formatarMoeda(obj.vlsubtotal));
        $('#frete').html(formatarMoeda(obj.vlfreight));
        $('#carrinhoTotalHeader').html(formatarMoeda(obj.vltotal));
        $('#quantidadeProdutoHeader').html(obj.nrqtd);
        if (obj.nrdays > 0) {
            var dias = "teste";
            $('#dias').html(dias);  
        }
    });
}


function AumentarProd(id) {
    $.ajax({
        type: "POST",
        url: "/cart/add",
        data: { id: id, }
    }).done(function (data) {
        var obj = jQuery.parseJSON(data);
        $('#cart-total').html(formatarMoeda(obj.carrinho.vltotal));
        $('#subtotal').html(formatarMoeda(obj.carrinho.vlsubtotal));
        $('#totalItem-' + obj.produtos[0].idproduct).html(formatarMoeda(obj.produtos[0].vltotal));
        $('#input-id-' + obj.produtos[0].idproduct).val(obj.produtos[0].nrqtd);
        $('#carrinhoTotalHeader').html(formatarMoeda(obj.carrinho.vltotal));
        $('#quantidadeProdutoHeader').html(obj.carrinho.nrqtd);
    });
}

function DiminuirProd(id) {
    var elemento = $('#item-prod-'+id);
    var QuantidadeProd = $("#input-id-" + id).val();
    if (QuantidadeProd == 1) {
        ExcluirProd(id, elemento);
    } else {
        DiminuirQtdProd(id);
    }
}

function DiminuirQtdProd(id) {
    $.ajax({
        type: "POST",
        url: "/cart/minus",
        data: { id: id, }
    }).done(function (data) {
        var obj = jQuery.parseJSON(data);
        $('#cart-total').html(formatarMoeda(obj.carrinho.vltotal));
        $('#subtotal').html(formatarMoeda(obj.carrinho.vlsubtotal));
        $('#totalItem-' + obj.produtos[0].idproduct).html(formatarMoeda(obj.produtos[0].vltotal));
        $('#input-id-' + obj.produtos[0].idproduct).val(obj.produtos[0].nrqtd);
        $('#carrinhoTotalHeader').html(formatarMoeda(obj.carrinho.vltotal));
        $('#quantidadeProdutoHeader').html(obj.carrinho.nrqtd);
    });
}


function formatarMoeda(valor) {
    var numero = (valor === null) ? 0 : valor;
    return Intl.NumberFormat('pt-BR', {style: 'currency',currency: 'BRL', minimumFractionDigits: 2}).format(numero);
}