<?php
session_start();
include('../admin/includes/database.php');
include('../admin/includes/functions.php');

$conn = new Functions();

if(!empty($_POST['username'])){
    $username = $_POST['username'];
    $designation  = $_POST['designation'];
    $phone_no = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $religion = $_POST['religion'];
    $settings_id = $_POST['settings_id'];

    //perform validations

    $sql = "SELECT * FROM teachers WHERE phone =:phoneno AND phone != '' AND id !=:settings_id";
    $conn->query($sql);
    $conn->bind(":phoneno", $phone_no);
    $conn->bind(":settings_id", $settings_id);
    if($conn->rowCount() > 0){
        echo "<script>
                toastr['error']('Phone number already exists.');
             </script>";
        return false;
    }

    $sql = "SELECT * FROM teachers WHERE email =:email AND email != ''  AND id !=:settings_id";
    $conn->query($sql);
    $conn->bind(":email", $email);
    $conn->bind(":settings_id", $settings_id);
    if($conn->rowCount() > 0){
        echo "<script>
              toastr['error']('The email already exists.');
             </script>";
        return false;
    }else{

        //process  updating of data into database
        $sql = "UPDATE teachers SET designation =:designation, phone =:phoneno, email =:email, 
        address =:address, dob =:dob, gender =:gender, religion =:religion 
        WHERE username =:username";
          $conn->query($sql);
          $conn->bind(":username", $username);
          $conn->bind(":designation", $designation);
          $conn->bind(":phoneno", $phone_no);
          $conn->bind(":email", $email);
          $conn->bind(":address", $address);
          $conn->bind(":dob", $dob);
          $conn->bind(":gender", $gender);
          $conn->bind(":religion", $religion);

        $send = $conn->execute();
        if ($send) {
            echo "<script>
                 toastr['success']('Your Settings have been updated successfully.');
             </script><meta http-equiv='refresh' content='3; settings'>";

        } else {
            echo "<script>
                toastr['error']('An error occurred while updating data');
             </script><meta http-equiv='refresh' content='3; settings'>";
        }
    
    }
}else{
    echo "<script>
        toastr['error']('All fields are required.');
        </script>";
}


// <?php
// session_start();
// include "../admin/includes/database.php";
// include "../admin/includes/functions.php";

$conn= new Functions();
$redirect = $conn->teacher_url();
if(!empty($_POST['old_password']) && !empty($_POST['new_password'])){

    $old_password = $_POST['old_password'];
    $new_password = $_POST['new_password'];
    $student = $_POST['username'];

    $sql ="SELECT * FROM teacher WHERE username =:student";
    $conn->query($sql);
    $conn->bind(":teacher", $teacher);
    $result = $conn->fetchSingle();
    $db_password = $result->password;
    $existing_password = $conn->password_check($old_password, $db_password);
    $crypt_new_password = $conn->password_check($new_password, $db_password);

    //check if entered password matches with db
    if(!$existing_password){
        echo "<script>
               toastr['error']('Old password is wrong');
           </script>";
    }elseif($crypt_new_password == $new_password){
        echo "<script>
               toastr['error']('You cannot use the same password');
           </script>";
    }else{
        //all checks passed, update users password
        $sql = "UPDATE teacher SET password =:password WHERE username =:student";
        $conn->query($sql);
        $conn->bind(":password", $conn->Password_Encryption($new_password));
        $conn->bind(":teacher", $student);

        try{
            //execute
            $conn->execute();
            echo "<script>
              toastr['success']('Password Updated Successfully. Redirecting to Account Dashboard...');
        </script> <meta http-equiv='refresh' content='3; $redirect'>";

        }catch (PDOException $err){
            $error= $err->getMessage();
            echo "<script>
               toastr['error']('An error occurred $error');
           </script>";
        }

    }

}else{
    echo "<script>
              toastr['error']('Both fields are required.');
        </script>";
}
