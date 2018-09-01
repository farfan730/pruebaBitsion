<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<BitsionProyect.Models.Documento>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Editar</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>Documento</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdDocumento) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IdDocumento) %>
                <%: Html.ValidationMessageFor(model => model.IdDocumento) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCompania) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IdCompania) %>
                <%: Html.ValidationMessageFor(model => model.IdCompania) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdPersona) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IdPersona) %>
                <%: Html.ValidationMessageFor(model => model.IdPersona) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NumeroDocumento) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.NumeroDocumento) %>
                <%: Html.ValidationMessageFor(model => model.NumeroDocumento) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NumeroDocumentoOrigen) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.NumeroDocumentoOrigen) %>
                <%: Html.ValidationMessageFor(model => model.NumeroDocumentoOrigen) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CodigoBarra) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.CodigoBarra) %>
                <%: Html.ValidationMessageFor(model => model.CodigoBarra) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FechaDocumento) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.FechaDocumento) %>
                <%: Html.ValidationMessageFor(model => model.FechaDocumento) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FechaVencimiento) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.FechaVencimiento) %>
                <%: Html.ValidationMessageFor(model => model.FechaVencimiento) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Importe) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Importe) %>
                <%: Html.ValidationMessageFor(model => model.Importe) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Impuesto) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Impuesto) %>
                <%: Html.ValidationMessageFor(model => model.Impuesto) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Subtotal) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Subtotal) %>
                <%: Html.ValidationMessageFor(model => model.Subtotal) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Rubro) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Rubro) %>
                <%: Html.ValidationMessageFor(model => model.Rubro) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Moneda) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Moneda) %>
                <%: Html.ValidationMessageFor(model => model.Moneda) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdEstadoCobro) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IdEstadoCobro) %>
                <%: Html.ValidationMessageFor(model => model.IdEstadoCobro) %>
            </div>
    
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
