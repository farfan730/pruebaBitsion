<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BitsionProyect.Models.Documento>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Detalle </title>
</head>
<body>
    <fieldset>
        <legend>Documento</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.IdDocumento) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.IdDocumento) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.IdCompania) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.IdCompania) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.IdPersona) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.IdPersona) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.NumeroDocumento) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.NumeroDocumento) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.NumeroDocumentoOrigen) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.NumeroDocumentoOrigen) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.CodigoBarra) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.CodigoBarra) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.FechaDocumento) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.FechaDocumento) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.FechaVencimiento) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.FechaVencimiento) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Importe) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Importe) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Impuesto) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Impuesto) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Subtotal) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Subtotal) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Rubro) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Rubro) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Moneda) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Moneda) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.IdEstadoCobro) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.IdEstadoCobro) %>
        </div>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new {  id=Model.IdDocumento }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
