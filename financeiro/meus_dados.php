<?php

    require_once 'DAO/UsuarioDAO.php';

    $objdao = new UsuarioDAO();

    if (isset($_POST['btnAlterar'])) {
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $senha = $_POST['senha'];


        $ret = $objdao->GravarMeusDados($nome, $email, $senha);
    }

    $dadosUser = $objdao->CarregarMeusDados();

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Inclusão de código HTML feito pelo PHP -->
<?php include_once '_head.php'; ?>

<body>
    <div id="wrapper">
        <?php
            include_once '_topo.php';
            include_once '_menu.php';
        ?>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <?php include_once '_msg.php'?>
                        <h2>Alterar Dados Cadastrados</h2>
                        <h5>Aqui você pode alterar seus dados de cadastro</h5>
                    </div>
                </div>
                <hr />
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Digite seu Nome:</label>
                        <input type="text" class="form-control" placeholder="Digite seu Nome aqui..." name="nome" id="nome" value="<?= $dadosUser[0]['nome_usuario'] ?>" />
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Digite seu E-mail:</label>
                        <input type="email" class="form-control" placeholder="Digite seu E-mail aqui..." name="email" id="email" value="<?= $dadosUser[0]['email_usuario'] ?>" />
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Digite sue Senha: </label>
                        <input type="password" class="form-control" placeholder="Digite sua Senha aqui..." name="senha" id="senha" value="<?= $dadosUser[0]['senha_usuario'] ?>" />
                    </div>
                </div>
                <div style="text-align: center;">
                    <button type="submit" class="btn btn-success" name="btnAlterar" onclick="return ValidarMeusDados()">Alterar</button>
                </div>
            </div>
        </div>
    </div>
    <script src="./assets/js/validarCampos.js"></script>
</body>

</html>