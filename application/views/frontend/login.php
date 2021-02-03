<?php $this->load->view('frontend/header'); ?>

   <section class="banner inner-page">
        	<div class="banner-img"><img src="<?php echo base_url(); ?>assets/frontend/images/banner/register-bannerImg.jpg" alt=""></div>
            <div class="page-title">	
	            <div class="container">
                    <h1>Login</h1>
                </div>
            </div>
        </section>
        <section class="breadcrumb">
        	<div class="container">
            	<ul>
                	<li><a href="#">Home</a></li>
                    <li><a href="#">Admin Login </a></li>
                </ul>
            </div>
        </section>
        <section class="login-view">
        	<div class="container">
            	<div class="row">
                    <div class="col-sm-3">
                    </div>
                	<div class="col-sm-6">
                    	<div class="section-title">
                        	<h2>Admin Login</h2>
                            <p>Login to your account below</p>
                        </div>
                        <div class="section-title">
                            <?php if($this->session->flashdata('error')): ?>

                                <div class="alert alert-danger">

                                   <button type="button" class="close" data-close="alert"></button>

                                   <?php echo $this->session->flashdata('error'); ?>

                                </div>

                                <?php endif; ?>
                        </div>
                        <form method="post" autocomplete="off">
                        <div class="input-box">
                            <input type="text" placeholder="Email" name="email">

     

        <span><?php echo form_error("email","<span class='label label-danger'>","</span>")?></span>

                        </div>
                        <div class="input-box">
                        	<input type="password" placeholder="Password" name="password">
                            <span><?php echo form_error("password","<span class='label label-danger'>","</span>")?></span>
                        </div>
                    
                        <div class="submit-slide">
                        	<input type="submit" value="Login" name="Login" onclick="login();" class="btn">
                            
                        </div>
                        </form>
                    </div>
                    <div class="col-sm-3">
                    </div>
                   
                </div>
                <div class="sosiyal-login">
                	<div class="row">
                    	<div class="col-sm-3 col-md-3">
                        	<a href="#" class="facebook"><i class="fa fa-facebook"></i>Facebook</a>
                        </div>
                        <div class="col-sm-3 col-md-3">
                            <a href="#" class="google-pluse"><i class="fa fa-google-plus"></i>Google</a>
                        </div>
                        <div class="col-sm-3 col-md-3">
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i>Twitter</a>
                        </div>
                        <div class="col-sm-3 col-md-3">
                            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i>Linkedin</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
      <script type="text/javascript">
        function login() {
             $.ajax({    //create an ajax request to display.php
                    type: "GET",
                    url: "http://localhost/exam/frontend/quize/loginStatus",
                    data:{id:id},             
                    dataType: "json",   //expect html to be returned                
                    success: function(response)
                    {   
                        if(response.status==true)
                        {
                           swal({
                               title: 'Congrats..!',
                               text: response.message
                            });
                        }                 
                    }
                });
        }
          
      </script>>  
<?php $this->load->view('frontend/footer'); ?>