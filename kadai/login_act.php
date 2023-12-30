<?php

session_start();
$mail = $_POST['mail'];
$password = $_POST['password'];

require_once('funcs.php');
$pdo = db_conn();

// gs_user_tableに、IDとWPがあるか確認する。
// $stmt = $pdo->prepare('SELECT * FROM gs_user_table WHERE mail = :mail AND password = :password; ');
$stmt = $pdo->prepare('SELECT * FROM gs_user_table WHERE mail = :mail');
$stmt->bindValue(':mail', $mail, PDO::PARAM_STR);
// $stmt->bindValue(':password', $password, PDO::PARAM_STR);
$status = $stmt->execute();

//3. SQL実行時にエラーがある場合STOP
if($status === false) {
    sql_error($stmt);
}

//4. 抽出データ数を取得
$val = $stmt->fetch();

if($val['id'] != '' &&  password_verify($password, $val['password'])) { //* PasswordがHash化の場合はこっちのIFを使う
    //Login成功時 該当レコードがあればSESSIONに値を代入
    $_SESSION['chk_ssid'] = session_id();
    $_SESSION['kanri_flg'] = $val['kanri_flg'];
    header('Location: select.php');
} else {
    //Login失敗時(Logout経由)
    header('Location: login.php');
}
exit();