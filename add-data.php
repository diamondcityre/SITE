<?php include 'include/connection.php'; ?>
                        <?php
                if(isset($_POST['submit'])){
                    $id = $_POST['subject'];
                    $f_name = $_POST['f_name'];
                    $l_name = $_POST['l_name'];
                    $email = $_POST['email'];
                    $phones = $_POST['phones'];
                    $message = $_POST['message'];
                    
                    $query2 = "INSERT INTO `contact` (`id`, `f_name`,`l_name`,`email`, `phone`, `message`) VALUES ('$id','$f_name','$l_name','$email', '$phones', '$message')";
                    $result =  mysqli_query($conn, $query2);
                    if($result){
                        echo header("location: contact.php");
                    }

                    else{
                        echo $error = mysqli_connect_error();
                        $error = mysqli_error($conn);
                        echo '<script>alert("'.$error.'");</script>';
                    }
                }
            // }

            
            ?>