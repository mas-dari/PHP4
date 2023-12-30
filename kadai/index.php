<?php
session_start();
require_once('funcs.php');
loginCheck();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<!-- ここから下に記載していく -->
<div><a href="select.php">データ一覧</a></div>
<form method="POST" action="insert.php">
    <div>
        <fieldset>
            <legend>候補者を登録</legend>
            <label>名前：<input type="text" name="name"></label><br>
            <label>メールアドレス：<input type="text" name="mail"></label><br>
            <label>候補者の現在の職種：<input type="text" name="occupation"></label><br>
            <label>候補者の現在の会社：<input type="text" name="company"></label><br>
            <label>取得期限：<input type="date" name="deadline"></label><br>
            <label>メモ：<textArea name="memo" rows="4" cols="40"></textArea></label><br>
            <input type="submit" value="送信">
        </fieldset>
    </div>
</form>

<!-- ここから上に記載する -->
</body>
</html>