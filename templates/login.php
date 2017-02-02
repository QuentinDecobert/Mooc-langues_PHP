<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="<?php echo $root; ?>/res/bootstrap/dist/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $root; ?>/res/css/quiz.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo $root; ?>/res/css/style.css" />
    <title>Simple Quiz :: Login</title>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="<?php echo $root; ?>/res/bootstrap/dist/assets/js/html5shiv.js"></script>
      <script src="<?php echo $root; ?>/res/bootstrap/dist/assets/js/respond.min.js"></script>
    <![endif]-->
    
</head>
<body id="body-login">
    <div class="container">
        <p class="message-error col-sm-6 col-sm-offset-3"><?php if (isset($errors['loginerror']) ) { echo $errors['loginerror']; }?></p>
        <p class="message-error col-sm-6 col-sm-offset-3"><?php if (isset($errors['registererror']) ) { echo $errors['registererror']; }?></p>
        <div class="row-fluid">
            <div class="col-sm-6 col-sm-offset-3" id="container-login-register">
                <form id="login-form" class="form-signin" method="post" action="<?php echo $root; ?>/login">
                    <div class="bouton-login-register">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Connexion</button>
                        <p><button id="register-button" class="btn btn-lg btn-primary btn-block">Inscription</button></p>
                    </div>
                    <div class="champs-login-register">
                        <input type="email" name="email" class="form-control" placeholder="Email" autofocus>
                        <input type="password" name="password" class="form-control" placeholder="Mot de passe">
                    </div>
                    <div class="just-button">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Connexion</button>
                    </div>
                </form>
                <form style="display: none" id="register-form" class="form-signin" method="post" action="<?php echo $root;
                ?>/register">
                    <div class="bouton-login-register">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Inscription</button>
                    </div>
                    <div class="champs-login-register">
                        <input type="text" name="username" class="form-control" placeholder="Username">
                        <input type="email" name="email" class="form-control" placeholder="Email" style="margin-bottom: 20px">
                        <input type="password" name="regpassword" class="form-control" placeholder="Password" style="margin-bottom: 20px">
                        <input type="password" name="regpasswordconf" class="form-control" placeholder="Confirm Password" style="margin-bottom: 20px">
                    </div>
                    <div class="just-button">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Inscription</button>
                    </div>
                </form>
            </div>
        </div>
    </div><!--container-->


    <script src="<?php echo $root; ?>/res/bootstrap/assets/js/jquery.js"></script>
    <script src="<?php echo $root; ?>/res/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo $root; ?>/res/js/login.js"></script>
</body>
</html>
