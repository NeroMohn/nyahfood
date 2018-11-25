<script>
    function campoNumerico(valor){
        var caracteresValidos = "0123456789";
        var ehNumero = true;
        var umCaracter;
        for (i = 0; i < valor.length && ehNumero == true; i++) {
            umCaracter = valor.charAt(i);
            if (caracteresValidos.indexOf(umCaracter) == -1) {
                ehNumero = false;
            }
        }
                return ehNumero;
    }

    function confereEmail(email){
        var countAt = 0;
        var countDot = 0;
        var checkChar
        for( var i=0; i<email.lenth; i++){
          checkChar = email.charAt(i);
          if(checkChar == "@"){
            countAt++;
          }
          if (checkChar == ".") {
            countDot++;
          }
        }
        if(countAt > 0 && countDot > 0){
          return true;
        }else {
          alert("Adicione um email válido")
          return false;
        }
    }

    function validaFormulario(email, valor){
      var e1 = email;
      var e2 = valor;
      if(e1 == true && e2 == true){
        return true;
      }else if(e1 == true && e2 == "undefined"){
        return true;
      }else if (e1 == "undefined" && e2 == true){
        return true;
      }else{
        return false;
      }
</script>
