<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ログイン</title>
</head>
<body>
<!-- ここから下に記載していく -->
    <header>
            <nav>
                <div">
                    <div>
                        <a class="navbar-brand" href="index.php">候補者情報の登録</a>
                    </div>
                </div>
            </nav>
    </header>
    
    <form name="form1" action="login_act.php" method="post">
        ID:<input type="text" name="lid" />
        PW:<input type="password" name="lpw" />
        <input type="submit" value="ログイン" />
    </form>

<!-- ここから上に記載する -->
</body>
</html>