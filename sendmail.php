<?php

//$_Host = 'email26.secureserver.net';// 'https://email26.secureserver.net/'; //mail.diamondcityre.com
$_Host = 'smtp.office365.com';
$_Username = 'marketing@diamondcityre.com';                 // SMTP username
$_Password = 'Zasu#5252#'; 
$_port = 587;//465;


$to = $email = "mwaqas2024@gmail.com"; // Recipient's email address
$name="waqas";
$subject = "Hello, World!"; // Email subject
$message = "This is a test email sent from PHP."; // Email message
$headers = "From: no-reply@dre.313solution.com"; // Sender's email address
//$headers = "From: no-reply@test.com"; // Sender's email address


//Host : https://email26.secureserver.net/
//user : marketing@diamondcityre.com
//Pass : Zasu#5252#

require('phpmailer/PHPMailerAutoload.php');
$mail = new PHPMailer;
//$mail->SMTPDebug = 2;
$mail->isSMTP();                                      // Set mailer to use SMTP
//$mail->Host = 'mail.313solution.com';  // Specify main and backup SMTP servers
$mail->Host = $_Host; //'https://dcre.crowntechsol.com';
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = $_Username;                 // SMTP username
$mail->Password = $_Password;                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = $_port;                                    // TCP port to connect to


$mail->setFrom('marketing@diamondcityre.com', 'Your Name'); // Replace with your name
$mail->addAddress('recipient@example.com', 'Recipient Name'); // Replace with recipient's email and name

//Content
$mail->isHTML(true); // Set to false for plain text
$mail->Subject = $subject;
$mail->Body    = $message;


if(!$mail->send()) {
   echo 'Message could not be sent.';
   echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
   $isSuccess = true;
   echo '<span class="success">Form submitted</span>';
}

?>