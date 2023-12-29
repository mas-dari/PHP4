<?php
session_start();
require_once('funcs.php');
loginCheck();

$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM gs_an_table;');
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status === false) {
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        //GETデータ送信リンク作成
        // <a>で囲う。
        $view .= '<p>';

            $view .= '<a href="detail.php?id='.$result['id'].'">';
            $view .= $result['id']." ".$result['name']." ".$result['deadline'];;
            $view .= '</a>';

            // $view .= '<a href="delete.php?id='.$result['id'].'">';
            // $view .= ' : [削除]';
            // $view .= '</a>';

        $view .= '</p>';
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>候補者情報の一覧</title>
</head>

<body id="main">
    <!-- Head[Start] -->
    <header>
        <nav>
            <div>
                <div>
                    <a href="index.php">データ登録</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <div>
        <div>
            <a href="detail.php"></a>
            <?= $view ?>
        </div>
    </div>
    <!-- Main[End] -->

</body>

</html>