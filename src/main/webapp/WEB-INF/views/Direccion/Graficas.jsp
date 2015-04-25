<%-- 
    Document   : template1
    Created on : 7/02/2015, 02:34:44 AM
    Author     : omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPito</title>
        <%@include file="direccionHead.jsp" %>
        <script src="../resources/js/direccion/Chart.js"></script>
        <!--estilo operaciones-->
        <style>
            body{
                padding: 0;
                margin: 0;
            }
            #canvas-holder{
                width:40%;
            }
        </style>
    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <%@include file="dirNavs.jsp" %>

            <!-- Page Content -->
            <div id="page-wrapper" >
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Gráficas
                            </h1>                        
                        </div>
                    </div>   


                    <div id="canvas-holder"align="left" >
                        <canvas id="chart-area" width="200" height="200" align="right"/>
                        <script src="../resources/js/direccion/rh.js"></script>
                    </div>


                    <div id="canvas-holder"align="right" >
                        <canvas id="chart-area" width="200" height="200" align="right"/>
                        <script src="../resources/js/direccion/operaciones.js"></script>
                    </div>




                </div><!-- Fin del tag del contenedor-->                            
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->




        <!-- jQuery -->
        <script src="../resources/js/libs/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../resources/js/libs/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="../resources/js/libs/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="../resources/js/libs/sb-admin-2.js"></script>

    </body>

</html>


