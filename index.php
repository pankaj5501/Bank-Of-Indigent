<!-- 

Name: Pankaj Gautam
Internship: Web Development
Task: Basic Banking System
Batch: April 2021 

-->


<?php
    //connecting to db
    session_start();
    require_once('connection.php');

    //PHP script to take data out of db
    $sql = "SELECT * FROM `bank-of-indigent`.`customers`";
    $result = $conn->query($sql);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="public/CSS/styles.css">
    <script src="https://kit.fontawesome.com/2e3ffa36c7.js" crossorigin="anonymous"></script>
    <script>
        function show_customers(){
            document.getElementsByClassName('table-container')[0].style.display = 'block';
            document.getElementById('view-customer').style.display = 'none';
            document.getElementsByClassName('error-msg')[0].style.display = 'none';
        }

        function show_transaction_details(){
            location.href = 'transaction-history.php';
        }
        
        function viewBalance(i){
            let idName = 'c-balance'+i
            document.getElementById(idName).style.display='block'
            let viewBalanceButtons = document.getElementsByClassName('view-balance-btn')
            console.log(viewBalanceButtons)
            viewBalanceButtons[i-1].style.display = 'none'
        }
    </script>
</head>
<body>
    <img src="public/CSS/transactionbg.jpg" class="index-bg">
    <div class="main">

    <div class="wrapper1">
        <div class="header-text" id="head">
           <a href="index.php" class="header-text"> BANK OF INDIGENT </a>
         </div>
        <div class="t-details">
        <button class="t-details-btn" type="toggle" onclick="show_transaction_details()">Transaction History</button>
        </div>
    </div>
        <button id="view-customer" type="toggle" onclick="show_customers()">View Customers</button>
        <?php 
            if(isset($_SESSION['message'])){
                ?>
                <div class="message error-msg">
                    <?php echo $_SESSION['message']; ?>
                </div>
                <?php
                unset($_SESSION['message']);
                unset($_SESSION['message-css']);
            }
        ?>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>S. No.</th>
                        <th>Name</th>
                        <th>Account Number</th>
                        <th>IFSC Code</th>
                        <th>Email</th>
                        <th>Contact Number</th>
                        <th>Location</th>
                        <th>State</th>
                        <th>Current Balance</th>
                        <th>Operation</th>
                    </tr>
                </thead>

                <tbody>
                    <?php 
                        $i = 1;
                        while($row = $result->fetch_assoc()){
                    ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><?php echo $row['name']; ?></td>
                            <td><?php echo $row['account_num']; ?></td>
                            <td><?php echo $row['IFSC_Code']; ?></td>
                            <td><?php echo $row['email']; ?></td>
                            <td><?php echo $row['contact_num']; ?></td>
                            <td><?php echo $row['location']; ?></td>
                            <td><?php echo $row['State']; ?></td>
                            <td>
                                <span id="c-balance<?php echo $i; ?>" class="c-balance"><?php echo $row['current_balance']; ?></span>
                                <button class="view-balance-btn" onclick="viewBalance(<?php echo $i; ?>)">View Balance</button>
                            </td>
                            <!-- Link to send customer_id to the transaction page -->
                            <td><a class="button2" href="transaction.php?c_id=<?php echo $row['customer_id']; ?>" target="_blank">Tranfer money</a></td>
                        </tr>
                    <?php $i++; } ?>
                </tbody>
            
            
            </table>
        </div>
    </div>
</body>
</html>