<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title> Classifique sua experiência</title>
    <meta charset="UTF-8">

    <script>
        function empresaClassificada() {
            $link = "C:\Users\rodri\Pictures\Wallpapers\Guitar.jpg";
            $nomeEmpresa = "Nome da Empresa";

            document.getElementById("empresa").innerHTML = "<img src=" + $link + ">" + $nomeEmpresa;// $nomeEmpresa;
        }

        function moveEstrela($nota) {
            document.getElementsById($nota).innerHTML = $nota;
        }
    </script>
</head>

<img src="" alt="">

<body onload="empresaClassificada()">
    <div id="empresa">
    </div>
    <form action=""method="post">
        <div class="slidercontainer" id="nota">
            <input type="range" min="0" max="5" class="slider" id="nota" value="3" onchange="moveEstrela(this.value)"><br>
            <input type="text" placeholder="Comentários sobre a experiência"><br>
            <input type="submit" name="" value="Salvar" id="">
            <a href="menu-cliente.html"><input type="button" value="Sair"></a>
        </div>

    </form>
</body>

</html>
