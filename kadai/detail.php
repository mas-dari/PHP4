<?php

// session_start();
require_once('funcs.php');
loginCheck();
$pdo = db_conn();
$id = $_GET['id']; //?id~**を受け取る

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM gs_an_table WHERE id=:id;');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
if ($status == false) {
    sql_error($stmt);
} else {
    $row = $stmt->fetch();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>候補者情報の一覧</title>
</head>
<body>
<!-- ここから下に記載していく -->

<header>
    <nav>
        <div>
            <div><a href="select.php">候補者情報の一覧</a></div>
        </div>
    </nav>
</header>

<form method="POST" action="update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>候補者情報を更新</legend>
                <label>名前：<input type="text" name="name" value="<?= $row['name'] ?>"></label><br>
                <label>メールアドレス：<input type="text" name="mail" value="<?= $row['mail'] ?>"></label><br>
                <label>候補者の現在の職種：<input type="text" name="occupation" value="<?= $row['occupation'] ?>"></label><br>
                <label>候補者の現在の会社：<input type="text" name="company" value="<?= $row['company'] ?>"></label><br>
                <label>取得期限：<input type="date" name="deadline" value="<?= $row['deadline'] ?>"></label><br>
                <label>メモ：<textArea name="memo" rows="4" cols="40"><?= $row['memo'] ?></textArea></label><br>
                <input type="submit" value="更新">
                <input type="hidden" name="id" value="<?= $id ?>">
            </fieldset>
        </div>
    </form>


<!-- ここから上に記載する -->
</body>
</html>