<%-- 
    Document   : administrarEmpleados
    Created on : 16/02/2015, 03:46:44 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->
        <title>JSP Page</title>
    </head>
    <body>

        <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Administrar Empleados
                    </h1>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-left">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Datos del Departamento</h3>
                            </div>
                            <div class="panel-body">          
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                        <label>Seleccione el departamento</label>
                                        <div class="form-group input-group">
                                            <select id="departamentosLista" class="form-control selectpicker show-tick show-menu-arrow listaDepa">
                                                <option>Recursos Humanos</option>
                                                <option>Contabilidad</option>
                                                <option>Ventas</option>
                                                <option>Compras</option>
                                                <option>Dirección</option>
                                                <option>Almacén</option>                                
                                                <option>Activos fijos</option>
                                                <option>Operaciones</option> 
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 text-left">
                                    <div class="form-group">
                                        <label>Seleccione el puesto</label>
                                        <div class="form-group input-group">
                                            <select id="disabledSelect" class="form-control selectpicker show-tick show-menu-arrow listaPuesto">

                                                <option>Director General</option>
                                                <option>Subdirectos General</option>
                                                <option>Director de Departamento</option>
                                                <option>Jefe de Departamento</option>
                                                <option>Jefe Operativo</option>
                                                <option>Empleado</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Empleados</h3>
                            </div>
                            <div class="panel-body">
                                <div class="input-group">
                                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                                    <input class="form-control" id="system-search" name="q" placeholder="Busqueda" required>
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </div>
                            <table class="table table-list-search">
                                <thead>
                                    <tr>
                                        <th>Curp</th>
                                        <th>Nombre</th>
                                        <th>Edad</th>
                                        <th>Detalles</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>BADD110313HCMLNS12</td>
                                        <td>Roberto Hernandez Gomez</td>
                                        <td>34</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                    <tr>
                                        <td>JOSD110313HCMLPL87</td>
                                        <td>Jesus Montes Cruz</td>
                                        <td>23</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                    <tr>
                                        <td>PODD110313HCSER781</td>
                                        <td>Samantha Flores Ruiz</td>
                                        <td>38</td>
                                        <td><p data-placement="top" data-toggle="tooltip" title="Detalles"><a href="#"><i class="btn  btn-warning fa fa-user" data-toggle="modal" data-target="#myModal"></i></a></p></td>
                                    </tr>
                                </tbody>
                            </table>   
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">Historial del usuario actual</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <h3>Roberto Hernandez Gomez</h3>
                                            <a href="#" ><i class="btn  btn-warning fa fa-edit" data-toggle="modal" data-target="#myModal">  Editar</i></a>
                                            <a href="#" ><i class="btn  btn-warning fa fa-eraser" data-toggle="modal" data-target="#myModal">  Baja</i></a>
                                            <div>
                                            </div><!-- /col-sm-12 -->
                                        </div><!-- /row -->
                                        <div class="row">
                                            <div class="col-sm-1">
                                                <div class="thumbnail">
                                                    <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
                                                </div><!-- /thumbnail -->
                                            </div><!-- /col-sm-1 -->

                                            <div class="col-sm-5">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <strong>Datos</strong> <span class="text-muted">:</span>
                                                    </div>
                                                    <div class="panel-body">
                                                        <table class="table table-striped">
                                                            <tbody>
                                                                <tr>
                                                                    <td>Departamento</td>
                                                                    <td>Finanzas</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Jefe inmediato</td>
                                                                    <td>GERARDO ARIZMENDI ECHEGARAY</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Puesto</td>
                                                                    <td>Empleado</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Nombre(s)</td>
                                                                    <td>Roberto</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Apellido Paterno</td>
                                                                    <td>Hernandez</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Apellido Materno</td>
                                                                    <td>Gomez</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>RFC</td>
                                                                    <td>CUPU800825569</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Fecha de contrataciÃ³n</td>
                                                                    <td>05/06/2013</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Fecha de baja</td>
                                                                    <td>18/09/2014</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Motivo de la baja</td>
                                                                    <td>No cumplir con los requerimientos de productividad</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Periodos de Vacaciones</td>
                                                                    <td>01/01/2014 - 05/04/2014</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Incapacidades</td>
                                                                    <td>Ninguna</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>RFC</td>
                                                                    <td>CUPU800825569</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Sexo</td>
                                                                    <td>Femenino</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Fecha de Nacimiento</td>
                                                                    <td>12/12/1981</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Calle</td>
                                                                    <td>Carranza</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Colonia</td>
                                                                    <td>Centro</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Ciudad</td>
                                                                    <td>Toluca</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>CÃ³digo Postal</td>
                                                                    <td>50478</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>NÃºmero</td>
                                                                    <td>104</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>PoblaciÃ³n</td>
                                                                    <td>Estado de MÃ©xico</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div><!-- /panel-body -->
                                                </div><!-- /panel panel-default -->
                                            </div><!-- /col-sm-5 -->                  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
                        <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
                        </body>
                        </html>