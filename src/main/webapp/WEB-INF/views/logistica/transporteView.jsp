<%-- 
    Document   : transporteView
    Created on : 24/04/2015, 04:36:16 AM
    Author     : logistica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <%@include file="LogisticaHead.jsp" %>
    <title>SAPito - Transporte</title>
  </head>
  <body>
    <div id="wrapper">
      
      <!-- Navigation bar -->
      <%@include file="logisticaNavs.jsp" %>

      <!-- Page content -->
      
      <div id="page-wrapper">
        <div class="container-fluid has-success">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Transporte
              </h1>
            </div>
          </div>

          <!-- Buttons bar -->
          
          
          
          
          <div class="row">              
                                    <div class="col-lg-12 text-left">
                                        <div class="panel panel-success">
                                            <div class="panel-heading has-success">
                                                <h3 class="panel-title">Observaciones del Transporte</h3>
                                            </div>
                                            <div class="panel-body has-success">
                                              
                                                <form class="form-horizontal">

                                                    <div class="col-lg-12 text-center">                                                                                                        
                                                        <div class="form-group has-success">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                                            <div class="col-sm-10">
                                                                <input type="email" class="form-control " id="inputEmail3" placeholder="Email">
                                                            </div>
                                                        </div>
                                                    </div>
                                                
                                                
                                                <div class="col-lg-12 text-center">
                                                    <div class="form-group has-success">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">Obervaciones</label>
                                                        <div class="col-sm-10">
                                                            <textarea class="form-control " rows="3" placeholder="Obervaciones"></textarea>
                                                        </div>
                                                    </div>                                                    
                                                </div>
                                                    
                                                <div class="col-lg-12 text-center">
                                                    
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-10">
                                                            <button type="submit" class="btn btn-success">Enviar</button>
                                                        </div>
                                                    </div>
                                                </div>    
                                                    
                                                    
                                                    
                                                    
                                              </form>
                                                
                                            </div>
                                        </div>                                        
                                        <br/>
                                    </div>
                                </div>
          
          
          
<!--          <div class="row">              
          </div>-->

          <!-- Data table -->
          
          <table id="toperadores" class="table table-bordered table-hover table-striped table-responsive has-success" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Empresa Perteneciente</th>  
                <th>Fecha de contrato</th>
                <th>Placas</th>
                <th>Tipo</th>
                <th>Opciones</th>                
              </tr>
            </thead>
            <tbody >
              <tr>                                
                <td>Hitachi System</td>
                <td>19 abril 2011</td>
                <td>Tractocamión</td>
                <td>XVZ-45-12S</td>                
                <td style="text-align: center">                
                    <button class="btn btn-xs btn-success" type="button">Ver</button>
                    <button class="btn btn-xs btn-success" type="button">Eliminar</button>
                </td>
              </tr>                                          
            </tbody>
          </table>

        </div>
      </div>
    </div>
    
    <!-- Footer and scripts -->
    
    
    
    <%@include file="logisticaFooter.jsp" %>
    
    <script >
        $(document).ready(function () {
            activatenb('nb-operadores');
            $('#toperadores').DataTable();
        });
    </script>
  </body>
</html>
