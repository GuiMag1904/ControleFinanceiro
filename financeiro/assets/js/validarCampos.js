function ValidarLogin() {
    if ($("#email").val().trim() == "") {
        alert("Preencha o campo obrigatório E-MAIL!");
        $("#email").focus();
        return false;
    }
    if ($("#senha").val().trim() == "") {
        alert("Preencha o campo obrigatório SENHA!");
        $("#senha").focus();
        return false;
    }
    if (
        $("#senha").val().trim().length < 6 ||
        $("#senha").val().trim().length > 8
    ) {
        alert("A SENHA deve conter entre 6 e 8 caracteres!");
        $("#senha").focus();
        return false;
    }
}

function ValidarCadastro() {
    if ($("#nome").val().trim() == "") {
        alert("Preencha o campo obrigatório NOME!");
        $("#nome").focus();
        return false;
    }
    if ($("#email").val().trim() == "") {
        alert("Preencha o campo obrigatório E-MAIL!");
        $("#email").focus();
        return false;
    }
    if ($("#senha").val().trim() == "") {
        alert("Preencha o campo obrigatório SENHA!");
        $("#senha").focus();
        return false;
    }
    if (
        $("#senha").val().trim().length < 6 ||
        $("#senha").val().trim().length > 8
    ) {
        alert("A SENHA deve conter entre 6 e 8 caracteres!");
        $("#senha").focus();
        return false;
    }
    if ($("#senha").val().trim() != $("#rep_senha").val().trim()) {
        alert("ASENHA digitada deve ser igual no campo REPETIR SENHA!");
        $("#rep_senha").focus();
        return false;
    }
}

function ValidarMeusDados() {
    if ($("#nome").val().trim() == "") {
        alert("Preenche o campo obrigatório NOME");
        $("#nome").focus();
        return false;
    }
    if ($("#email").val().trim() == "") {
        alert("Preencha o campo obrigatório E-MAIL!");
        $("#email").focus();
        return false;
    }
    if ($("#senha").val().trim() == "") {
        alert("Preencha o campo obrigatório SENHA!");
        $("#senha").focus();
        return false;
    }
    if (
        $("#senha").val().trim().length < 6 ||
        $("#senha").val().trim().length > 8
    ) {
        alert("A SENHA deve conter entre 6 e 8 caracteres!");
        $("#senha").focus();
        return false;
    }
}

function ValidarCategoria(){
    if($("#nomeCat").val().trim() == ''){
        alert("Preencha o campo NOME DA CATEGORIA!");
        $("#nomeCat").focus();
        return false;
    }
}

function ValidarEmpresa(){
    if($("#nomeEmp").val().trim() == ''){
        alert("Preencha o campo NOME DA EMPRESA!");
        $("#nomeEmp").focus();
        return false;
    }
    if($("#telefone").val().trim() == ''){
        alert("Preencha o campo TELEFONE!");
        $("#telefone").focus();
        return false;
    }
    if($("#endereco").val().trim() == ''){
        alert("Preencha o campo ENDEREÇO!");
        $("#endereco").focus();
        return false;
    }
}

function ValidarConta(){
    if($("#banco").val().trim() == ''){
        alert("Preencha o campo NOME DO BANCO!");
        $("#banco").focus();
        return false;
    }
    if($("#agencia").val().trim() == ''){
        alert("Preencha o campo NÚMERO DA AGÊNCIA");
        $("#agencia").focus();
        return false;
    }
    if($("#numero").val().trim() == ''){
        alert("Preencha o campo NÚMERO DA CONTA!");
        $("#numero").focus();
        return false;
    }
    if($("#saldo").val().trim() == ''){
        alert("Preencha o campo SALDO (R$)!");
        $("#numero").focus();
        return false;
    }
}

function ValidarMovimentos(){
    if($("#tipo").val() == ''){
        alert("Selecione um TIPO DE MOVIMENTO!");
        $("#tipo").focus();
        return false;
    }
    if($("#data").val() == ''){
        alert("Selecione um DATA!");
        $("#data").focus();
        return false;
    }
    if($("#valor").val().trim() == ''){
        alert("Preencha o campo VALOR (R$)!");
        $("#data").focus();
        return false;
    }
    if($("#categoria").val() == ''){
        alert("Preencha o campo CATEGORIA FINANCEIRA!");
        $("#categoria").focus();
        return false;
    }
    if($("#empresa").val() == ''){
        alert("Selecione uma EMPRESA!");
        $("#empresa").focus();
        return false;
    }
    if($("#conta").val() == ''){
        alert("Selecione uma CONTA BANCÁRIA!");
        $("#conta").focus();
        return false;
    }
}

function ValidarConsultaMovimento(){
    if($("#tipoMov").val().trim() == ''){
        alert("Selecione um TIPO DE MOVIMENTO!");
        $("#tipoMov").focus();
        return false;
    }
    if($("#dtInicio").val().trim() == ''){
        alert("Selecione uma DATA DE INÍCIO!");
        $("#dtInicio").focus();
        return false;
    }
    if($("#dtFinal").val().trim() == ''){
        alert("Selecione uma DATA FINAL!");
        $("#dtFinal").focus();
        return false;
    }
}