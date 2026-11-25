<?php
require_once 'Conexao.php';
require_once 'UtilDAO.php';

class CategoriaDAO extends Conexao {
    public function CadastrarCategoria($nome) {
        if($nome == '') {
            return 0;
        } else {
            // 1 passo: Criar uma variável que receberá o obj de conexao
            $conexao = parent::retornarConexao();
            // 2 passo: Criar uma variável que receberá o texto do comando SQL que deverá ser executado no BD
            $comando_sql = 'INSERT INTO tb_categoria(nome_categoria, id_usuario) VALUES(?, ?)';
            // 3 passo: Criar um obj que será configurado e levado no BD para ser executado
            $sql = new PDOStatement();
            // 4 passo: Colocar dentro do obj $sql a conexao preparada para executar o comando_sql
            $sql = $conexao->prepare($comando_sql);
            // 5 passo: Verificar se no comando_sql eu tenho ? para ser configurado. Se tiver, configurar os bindValues
            $sql->bindValue(1, $nome);
            $sql->bindValue(2, UtilDAO::UsuarioLogado());

            try {
                $sql->execute();
                return 1;
            } catch(Exception $ex) {
                echo $ex->getMessage();
                return -1;
            }
        }
    }
    public function ConsultarCategoria() {
            $conexao = parent::retornarConexao();

            $comando_sql = 'select id_categoria, nome_categoria from tb_categoria where id_usuario = ? order by nome_categoria ASC;';

            $sql = new PDOStatement();

            $sql = $conexao->prepare($comando_sql);

            $sql->bindValue(1, UtilDAO::UsuarioLogado());

            $sql->setFetchMode(PDO::FETCH_ASSOC);

            $sql->execute();

            return $sql->fetchAll();
    }
    
    public function DetalharCategoria($idCategoria) {
        if($idCategoria == '') {
            return 0;
        } else {
            $conexao = parent::retornarConexao();
            $comando_sql = 'SELECT id_categoria, nome_categoria FROM tb_categoria WHERE id_categoria = ? AND id_usuario = ?;';
            $sql = new PDOStatement();
            $sql = $conexao->prepare($comando_sql);
            $sql->bindValue(1, $idCategoria);
            $sql->bindValue(2, UtilDAO::UsuarioLogado());
            $sql->setFetchMode(PDO::FETCH_ASSOC);
            $sql->execute();
            return $sql->fetchAll();
        }
    }
    public function AlterarCategoria($nomeCat, $idCategoria) {
        if($nomeCat == '') {
            return 0;
        } else {
            $conexao = parent::retornarConexao();
            $comando_sql = 'UPDATE tb_categoria SET nome_categoria = ? WHERE id_categoria = ? AND id_usuario = ?;';
            $sql = new PDOStatement();
            $sql = $conexao->prepare($comando_sql);
            $sql->bindValue(1, $nomeCat);
            $sql->bindValue(2, $idCategoria);
            $sql->bindValue(3, UtilDAO::UsuarioLogado());

            try {
                $sql->execute();
                return 1;
            } catch(Exception $ex) {
                echo $ex->getMessage();
                return -1;
            }
        }
    }
    public function ExcluirCategoria($idCategoria) {
        if($idCategoria == ''){
            return 0;
        } else {
            $conexao = parent::retornarConexao();
            $comando_sql = 'DELETE FROM tb_categoria WHERE id_categoria = ? AND id_usuario = ?;';
            $sql = new PDOStatement();
            $sql = $conexao->prepare($comando_sql);
            $sql->bindValue(1, $idCategoria);
            $sql->bindValue(2, UtilDAO::UsuarioLogado());

            try {
                $sql->execute();
                return 1;
            } catch(Exception $ex){
                echo $ex->getMessage();
                return -4;
            }
        }
    }
}