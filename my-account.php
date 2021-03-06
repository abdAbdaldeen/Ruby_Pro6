<?php include('includes/publicHeader.php'); ?>
<?php  
 include ('includes/db_connection.php');
  $conn = OpenCon();
  if( $_SESSION['loginUser'] ){
    $sql="SELECT name,email,img_name FROM users WHERE user_id={$_SESSION['loginUser']["id"]} ";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
  }
?>
<!--== Page Title Area Start ==-->
<div id="page-title-area">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">
        <div class="page-title-content">
          <h1>Profile</h1>
          <ul class="breadcrumb">
            <li><a href="index.php">Home</a></li>
            <li><a href="login.php" class="active">Profile</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<!--== Page Title Area End ==-->

<!--== Page Content Wrapper Start ==-->
<div id="page-content-wrapper" class="p-9">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <!-- My Account Page Start -->
        <div class="myaccount-page-wrapper">
          <!-- My Account Tab Menu Start -->
          <div class="row">
            <div class="col-lg-3">
              <div class="myaccount-tab-menu nav" role="tablist">
                <a href="#dashboad" class="active"><i class="fa fa-dashboard"></i>
                  Profile</a>

                <a href="editaccount.php"><i class="fa fa-user"></i> Change Account Details</a>

                <a href="./logout.php"><i class="fa fa-sign-out"></i>Logout</a>
              </div>
            </div>
            <!-- My Account Tab Menu End -->

            <!-- My Account Tab Content Start -->
            <div class="col-lg-9 mt-5 mt-lg-0">
              <div class="tab-content" id="myaccountContent">
                <!-- Single Tab Content Start -->
                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                  <div class="myaccount-content">
                    <h3> <?php echo "Welcome {$row['name']}"?></h3>
                    <div class="Welcome">


                      <?php 	echo "<img src='images/{$row['img_name']}'  alt='myimage' style='width:17rem; height:20;'>";
                                          
                                          ?>


                      <?php    print_r( $row['email'] );  
                                             ?>



                    </div>

                  </div>
                </div>
                <!-- Single Tab Content End -->

                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="orders" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Orders</h3>

                    <div class="myaccount-table table-responsive text-center">
                      <table class="table table-bordered">
                        <thead class="thead-light">
                          <tr>
                            <th>Order</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Total</th>
                            <th>Action</th>
                          </tr>
                        </thead>

                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>Aug 22, 2018</td>
                            <td>Pending</td>
                            <td>$3000</td>
                            <td><a href="cart.html" class="btn-add-to-cart">View</a></td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td>July 22, 2018</td>
                            <td>Approved</td>
                            <td>$200</td>
                            <td><a href="cart.html" class="btn-add-to-cart">View</a></td>
                          </tr>
                          <tr>
                            <td>3</td>
                            <td>June 12, 2017</td>
                            <td>On Hold</td>
                            <td>$990</td>
                            <td><a href="cart.html" class="btn-add-to-cart">View</a></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                <!-- Single Tab Content End -->

                <!-- Single Tab Content Start -->
                <div class="tab-pane fade" id="account-info" role="tabpanel">
                  <div class="myaccount-content">
                    <h3>Change Account Details</h3>

                    <div class="account-details-form">
                      <form action="#">

                        <div class="single-input-item">
                          <label for="display-name" class="required">New Full Name</label>
                          <input type="text" id="display-name" placeholder="Display Name" />
                        </div>

                        <div class="single-input-item">
                          <label for="email" class="required">New Email Addres</label>
                          <input type="email" id="email" placeholder="Email Address" />
                        </div>


                        <div class="single-input-item">
                          <label for="current-pwd" class="required">Current
                            Password</label>
                          <input type="password" id="current-pwd" placeholder="Current Password" />
                        </div>
                        <div class="single-input-item">
                          <label for="current-pwd" class="required">New
                            Password</label>
                          <input type="password" id="current-pwd" placeholder="Current Password" />
                        </div>



                        <div class="single-input-item">
                          <button class="btn-login btn-add-to-cart">Save Changes</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <!-- Single Tab Content End -->
              </div>
            </div>
            <!-- My Account Tab Content End -->
          </div>
        </div>
        <!-- My Account Page End -->
      </div>
    </div>
  </div>
</div>
<!--== Page Content Wrapper End ==-->



<?php include('includes/publicFooter.php'); ?>