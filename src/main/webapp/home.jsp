<%-- 
    Document   : home
    Created on : 01/08/2016, 19:44:27
    Author     : Joseph
--%>

<%@page import="br.com.pirassununga.projetosites.value.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página inicial</title>
    </head>
    <body>

        <jsp:include page="cabecalho.jsp"></jsp:include>
        <% 
        
            Usuario usuarioAutenticado=(Usuario)session.getAttribute("usuarioAutenticado");
        %>        
        <!--Construindo o Slide-Show-->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="http://placehold.it/1200x400?text=Banco da Gente" alt="Image">
                    <div class="carousel-caption">
                        <h3>Seja Bem-Vindo <label>Olá <%= usuarioAutenticado.getNome() %></label></h3>
                        <p>Bom Dia</p>
                    </div>
                </div>

                <div class="item">
                    <img src="http://placehold.it/1200x400?text=Another Image Maybe" alt="Image">
                    <div class="carousel-caption">
                        <h3>More Sell $</h3>
                        <p>Lorem ipsum...</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!--Estilo CSS para uso do Slide-Show-->
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {

                padding: 30px;
            }

            .carousel-inner img {
                width: 100% ; /* Set width to 100% */
                margin: auto;
                min-height:200px;
            }

            /* Hide the carousel text when the screen is less than 600 pixels wide */
            @media (max-width: 600px) {
                .carousel-caption {
                    display: none;
                }
            }

            #rodape a{
                margin-top: 10px;
                font-size: large;
                color: chartreuse
            }
        </style>
    <br>
    
    <!--Construindo o Rodapé-->
    <footer class="container-fluid text-center navbar-inverse" id="rodape">
        <a href="index.html"><h3>Banco da Gente &copy;</h3></a>

    </footer>
</body>
</html>