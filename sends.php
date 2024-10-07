<?php
    require('phpmailer/PHPMailerAutoload.php');
    $f_name = trim($_POST['f_name']);
    $l_name = trim($_POST['l_name']);
    $phones = trim($_POST['phones']);
    $subject = trim($_POST['subject']);
    $email = trim($_POST['email']);
    // $interest = $_POST['interest'];
    $message = trim($_POST['message']);
    $project = trim($_POST['setproject']);

    if($f_name || $l_name || $phones || $subject || $email || $message){
  		if($phone=="")
  		{
        $isSuccess = false;
        $msg = 'Invalid phone. Please check';
      }
      else{
          // Format the checkbox values
        //   $interest_message = '';
        //   for ($i = 0; $i < count($interest); $i++) {
        //     // if ($i === count($interest) - 1) {
        //     //   $interest_message .= $interest[$i];
        //     // } 
        //     // else {
        //     //   $interest_message .= $interest[$i] . ', ';
        //     // }
        //   }

          $mail = new PHPMailer;
          $mail->isSMTP();                                      // Set mailer to use SMTP
          $mail->Host = 'mail.313solution.com';  // Specify main and backup SMTP servers
          $mail->SMTPAuth = true;                               // Enable SMTP authentication
          $mail->Username = 'no-reply@313solution.com';                 // SMTP username
          $mail->Password = '9*L+cid~8Yx{';                           // SMTP password
          $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
          $mail->Port = 465;                                    // TCP port to connect to

          $mail->setFrom('no-reply@dre.313solution.com', 'DRE');
          // $mail->addAddress('developer@diamondcityre.com', 'Developer Diaomond City');     // Add a recipient
          $mail->addAddress('marketing@daimondcityre.com', 'Developer Diaomond City');     // Add a recipient
          $mail->addAddress('muhammadkhalidmakki@gmail.com', 'Developer Test');     // Add a recipient
          $mail->addReplyTo($email, $name);
          $mail->addBcc($email);
          $mail->isHTML(true);                                  // Set email format to HTML

        //   $mail->Subject = 'New enquiry for ' . $subject . 'by' .$name;
        $mail->Subject = $subject;
          $mail->Body    = 'Name: ' . $name . ' <br />Phone: ' . $phone . ' <br />Email: ' . $email . '<br />Message: ' . $message;

          if(!$mail->send()) {
              echo 'Message could not be sent.';
              echo 'Mailer Error: ' . $mail->ErrorInfo;
          } else {
              $isSuccess = true;
              $msg = '<span class="success">Form submitted</span>';
          }
      }
    }
    else{
        $isSuccess = false;
        $msg = '<span class="alert">Please fill in all the fields.</span>';
    }
    $data = array(
        'isSuccess' => $isSuccess,
        'msg' => $msg
    );

    echo json_encode($data);
?>
