<?php
// ここから下に記載していく

require_once('funcs.php');
$pdo = db_conn();

//POSTデータ取得
$name   = $_POST['name'];
$mail  = $_POST['mail'];
$occupation = $_POST['occupation'];
$company    = $_POST['company'];
$deadline    = $_POST['deadline'];
$memo    = $_POST['memo'];
// $deadline = date('Y-m-d', strtotime($_POST['deadline']));



//データ登録SQL作成
$stmt = $pdo->prepare('INSERT INTO gs_an_table(name,mail,occupation,company,deadline,memo)VALUES(:name,:mail,:occupation,:company,:deadline,:memo);');
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':mail', $mail, PDO::PARAM_STR);
$stmt->bindValue(':occupation', $occupation, PDO::PARAM_STR);
$stmt->bindValue(':company', $company, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':memo', $memo, PDO::PARAM_STR);
$status = $stmt->execute(); //実行

//データ登録処理後
if ($status == false) {
    sql_error($stmt);
} else {
    redirect('index.php');
};