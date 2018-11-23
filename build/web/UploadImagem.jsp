

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" scr="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    </head>
    <body>
      <div id="UploadImagem">
        <form enctype="application/x-www-form-urlencoded">
        <input type="file" id="file" name="file" onchange="uploadFile();" />
      
        <img alt="imagem" src="" id="target" width="200" height="200"><br> 
        </form>
      </div>
    </body>
    <script type="text/javascript">
        
        function uploadFile(){
                 
        
        var target = document.querySelector('img');
        var file = document.querySelector('input[type=file]').files[0];
        
        var reader = new FileReader();
        
        reader.onloadend = function() {
            target.src = reader.result;
            
            
             $.ajax({
                method: "POST", 
                url : "Upload",
                data: {Upload : reader.result}
            }).done(function(response){
                alert("Sucesso: " + response);   
            
            }).fail(function(xhr, status, errorThrown){
            alert("Error: " + xhr.responseText);
            });
            
        };
        
        if(file){ 
              reader.readAsDataURL(file);   
      
    }else{
        target.src= "";
    }
   
    }

    </script>
</html>