

<?php
/* Template Name:  Contact Template
 */
<a herf="http://localhost/FDL/index.php/contacter/"</a>


    if (isset($_POST["submit"])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];
        $téléphone = intval($_POST['téléphone']);
        $from = $_POST['email'];
        $to = 'abdulrahman.rasho@gmail.com';
        $subject = 'Message de client ';
        
        $body = "From: $name\n E-Mail: $email\n Message:\n $message";

        //si le champs nom est vide
        if (!$_POST['name']) {
            $errName = 'enterez votre nom';
        }
        
        // si l'email est pas valide
        if (!$_POST['email'] || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $errEmail = 'entrerz un email valide';
        }
        
        //Check if message has been entered
        if (!$_POST['message']) {
            $errMessage = 'entrerez votre message';
        }
        

// If there are no errors, send the email
if (!$errName && !$errEmail && !$errMessage) {
    if (mail ($to, $subject, $body, $from)) {
        $result='<div class="alert alert-success">  votre email a été bien envoyé</div>';
    } else {
        $result='<div class="alert alert-danger">désolé votre email n'a pas été envoyé</div>';
    }
}
    }
?>


