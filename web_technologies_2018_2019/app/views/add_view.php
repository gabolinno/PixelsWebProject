<!DOCTYPE html>
<html lang="bg">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add your pixel</title>

    <style>
        <?php 
           
            $path = dirname(dirname(dirname(__FILE__)));
            $path .= "/public/css/reg_style.css";
            include($path);
        ?>
    </style>
</head>

<body class="reg">
    <article>
        <div class="add-page">
            <div class="form">
                <form method="POST" action="./add?id=<?php echo $_GET['id']; ?>" enctype="multipart/form-data">
                    <legend>Information:</legend>
                    <input type="text" id="link" name="link" placeholder="URL">
                    <input type="text" id="text"  name="text" placeholder="Additional text">
                    <input type="file" name="img" id="img" class="inputfile">
                
                    <input type="submit" name="submit" value="Add" class="button">
                </form>
                <p class="message"><a href="./home">Return</a></p>
            </div>
        </div>
    </article>
</body>

</html>