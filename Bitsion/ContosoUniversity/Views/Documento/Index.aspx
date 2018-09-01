<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BitsionProyect.Models.Documento>>" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
    <!-- Bootstrap core CSS -->  
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="description" content="">
    <meta name="author" content="Julian">

    <title>Listar</title>


   

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

  </head>   

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">BITSION</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="../">Inicio
                
              </a>
            </li>         
            <li class="nav-item">
              <a class="nav-link" href="../Documento">Documento</a>
                <span class="sr-only">(current)</span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contacto</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>


 <div class="container">
     <div class="row">
             Index
         </div>
     </div>


    <!-- Page Content -->
    <div class="container">   	  
      <div class="row">

        <div class="col-lg-12">
		  <div id="boton"></div>

          <h1 class="my-4">Proyecto Prueba</h1>
          <div class="list-group">
              <a href="../Documento" class="list-group-item">Inicio</a>             
         </div>


            <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.IdDocumento) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.IdCompania) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.IdPersona) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.NumeroDocumento) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.NumeroDocumentoOrigen) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.CodigoBarra) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.FechaDocumento) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.FechaVencimiento) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Importe) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Impuesto) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Subtotal) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Rubro) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Moneda) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.IdEstadoCobro) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.IdDocumento) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.IdCompania) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.IdPersona) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.NumeroDocumento) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.NumeroDocumentoOrigen) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.CodigoBarra) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.FechaDocumento) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.FechaVencimiento) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Importe) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Impuesto) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Subtotal) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Rubro) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Moneda) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.IdEstadoCobro) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new {  id=item.IdDocumento  }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.IdDocumento }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.IdDocumento }) %>
            </td>
        </tr>
    <% } %>
    
    </table>


        </div>
        <!-- /.col-lg-3 -->

        
        

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>






