<?php
session_start();
require_once 'connectdb.php';
$conn = new mysqli($hn, $un, $pw, $db);
if($conn -> connect_errno) die("Connect DB error");

// echo <<<_END
// <form action = "register.php" method = "POST"><pre>
// Name            <input type="text" name="name" required><br>
// Password        <input type="password" name="password" required><br>
// Config password <input type="password" name="cpassword" required><br>
// Email           <input type="email" name="email" required><br>
//                 <button type="submit" value="Login" name="login"><a href="login.php">Login</a></button> <input type="submit" value="Register" name="register">               
// </pre></form>
// _END;

if (isset($_POST['register']))
{
    $name = $_POST['name'];
    $pass = $_POST['password'];
    $cpass = $_POST['cpassword'];
    $email = $_POST['email'];

    if ($pass == $cpass)
    {
        $hash = password_hash($pass,PASSWORD_DEFAULT);
        $query = "select * from user where name = '$name'";
        $result = $conn->query($query);
        $rows = $result->num_rows;
        if ($rows > 0)
        {
            echo $name . ' has exits!';
        } else
            {
            $query = "insert into user values ('','$name','$hash','$email','')";
            $result = $conn->query($query);
            if ($result)
            {
                echo 'Register successfull !';
                header('location:login.php');
            }
            else echo 'Register fail !';
            }
    } else echo 'password and config password is not match !';
}

?>
<!--  -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="container d-flex align-items-center flex-column">
        <h1 class="font-weight-bold">Register</h1>

        <form action="register.php" method="post" class="form-group d-flex flex-column w-50 border p-2">
            <label for="Name">Name</label>
            <input type="text" name="name" required><br>

            <label for="Password">Password</label>
            <input type="password" name="password" required><br>

            <label for="conpass">confirm password</label>
            <input type="password" name="cpassword" required><br>

            <label for="Email">Email</label>
            <input type="email" name="email" required><br>
            <a href="login.php" class="btn">Login</a>

            <div class="box-submit">
                <a href="admin.php" class="back">Back</a>
                <input type="submit" value="Register" name="register" class="mt-3"> 
            </div>
        </form>
    </div>
</body>

</html>