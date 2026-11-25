<?php

require_once 'DAO/UsuarioDAO.php';

if(isset($_POST['btnAcessar'])){
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $rep_senha = $_POST['rep_senha'];

    $objdao = new UsuarioDAO();
    $ret = $objdao->ValidarCadastro($nome, $email, $senha, $rep_senha);
}

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<?php include_once '_head.php'; ?>

<body>
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <br /><br />
                <?php include_once '_msg.php'; ?>
                <h2> Cadastrar uma Conta.</h2>
                <h5>(Faça seu cadastro de conta aqui)</h5>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <strong> Preencha os dados solicitados </strong>
                    </div>
                    <div class="panel-body">
                        <br />
                        <form method="post" action="cadastrar.php">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-circle-o-notch"></i></span>
                                <input type="text" class="form-control" placeholder="Digite seu Nome aqui..." name="nome" id="nome" />
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">@</i></span>
                                <input type="email" class="form-control" placeholder="Digitte seu E-mail aqui..." name="email" id="email" />
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" placeholder="Digite sua Senha aqui..." name="senha" id="senha" />
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" placeholder="Repita sua Senha aqui..." name="rep_senha" id="rep_senha" />
                            </div>
                            <button type="submit" class="btn btn-primary" name="btnAcessar" onclick="return ValidarCadastro()">Cadastrar</button>
                        </form>
                        <hr />
                        <Span>Já possui uma Conta? </Span><a href="login.php">Clique aqui</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>