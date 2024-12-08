<?php
session_start();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>import excel</title>
</head>
<body>
    <form action="code1.php" method="POST" enctype="multipart/form-data">
        <input type="file" name="import_file" class="tapas">
        <br>
        <button type="submit" name="save_excel_data" class="btn">Import</button>

    </form>
    <h3>
        <?php
        if(isset($_SESSION['status']))
        {
            echo $_SESSION['status'];
            unset($_SESSION['status']);
        }

        ?>
    </h3>
</body>
</html>