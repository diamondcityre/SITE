<?php
require('phpmailer/PHPMailerAutoload.php');

// Retrieve and sanitize input data
function sanitizeInput($data)
{
   return strip_tags(trim($data));
}

// Retrieve and sanitize input data
$subject = sanitizeInput($_POST['subject']);
$f_name = sanitizeInput($_POST['f_name']);
$email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
$phone = (!empty($_POST['phone'])) ? sanitizeInput($_POST['phone']):'-';
$message = sanitizeInput($_POST['message']);

$isSuccess = false;
$msg = '';

if ($subject && $f_name && $email && $message)
{
   include_once 'include/helper/helper.php';
   $config = get_email_config();

   $mail = new PHPMailer;
   $mail->isSMTP();

   $mail->Host = $config['_Host'];
   $mail->Username = $config['_Username'];
   $mail->Password = $config['_Password'];
   $mail->SMTPSecure = $config['SMTPSecure'];
   $mail->Port = $config['_port'];

   $mail->setFrom($config['from_email'], $config['from_name']);
   $mail->addAddress('marketing@daimondcityre.com', 'Developer Diamond City');
   $mail->addAddress('amir.nisar715@gmail.com', 'Amir');
    $mail->addAddress('leads.diamondcity@gmail.com', 'Website Leads');
   $mail->addAddress('mahajbq95@gmail.com', 'Enquiry - Website Leads');

   $mail->SMTPAuth = true;
   $mail->isHTML(true);
   $mail->Subject = $subject;
   $mail->Body = 'Name: ' . $f_name . '<br />Phone: ' . $phone . '<br />Email: ' . $email . '<br />Message: ' . $message;

   if ($mail->send())
   {
      $isSuccess = true;
      $msg = '<span class="success">Form submitted</span>';
   }
   else
   {
      $msg = 'Message could not be sent. Mailer Error: ' . $mail->ErrorInfo;
   }
} else
{
   $msg = '<span class="alert">Please fill in all the fields.</span>';
}

$data = array(
   'isSuccess' => $isSuccess,
   'msg' => $msg
);

echo json_encode($data);
?>
