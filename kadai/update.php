<?php

//1. POSTデータ取得
$name   = $_POST['name'];
$mail  = $_POST['mail'];
$occupation = $_POST['occupation'];
$company    = $_POST['company'];
$deadline    = $_POST['deadline'];
$memo    = $_POST['memo'];
$id     = $_POST['id'];

//2. DB接続します
require_once('funcs.php');
$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare('UPDATE gs_an_table SET name=:name,mail=:mail,occupation=:occupation,company=:company,deadline=:deadline,memo=:memo WHERE id=:id;');
$stmt->bindValue(':name',   $name,   PDO::PARAM_STR);
$stmt->bindValue(':mail',  $mail,  PDO::PARAM_STR);
$stmt->bindValue(':occupation',    $occupation,    PDO::PARAM_STR);
$stmt->bindValue(':company', $company, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':memo',     $memo,     PDO::PARAM_STR);
$stmt->bindValue(':id',     $id,     PDO::PARAM_INT);
$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    sql_error($stmt);
} else {
    redirect('select.php');
}
