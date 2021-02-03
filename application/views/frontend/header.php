<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from 115.160.244.10:8084/themeforest/academy/html/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 26 Jun 2019 10:53:00 GMT -->
<head>
    <!-- Meta information -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"><!-- Mobile Specific Metas -->
    
    <!-- Title -->
    <title>Academy</title>
    
    <!-- favicon icon -->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/frontend/images/Favicon.ico">
    
    <!-- CSS Stylesheet -->
    <link href="<?php echo base_url(); ?>assets/frontend/css/bootstrap.css" rel="stylesheet"><!-- bootstrap css -->
   
    
    <link href="<?php echo base_url(); ?>assets/frontend/css/owl.carousel.css" rel="stylesheet"><!-- carousel Slider -->
    <link href="<?php echo base_url(); ?>assets/frontend/css/font-awesome.css" rel="stylesheet"><!-- font awesome -->
    <link href="<?php echo base_url(); ?>assets/frontend/css/loader.css" rel="stylesheet"><!--  loader css -->
     <link href="<?php echo base_url(); ?>assets/frontend/css/jquery.countdown.css" rel="stylesheet"> <!--   count-down  -->
    <link href="<?php echo base_url(); ?>assets/frontend/css/docs.css" rel="stylesheet"><!--  template structure css -->
     <link href="<?php echo base_url(); ?>assets/frontend/css/notification.css" rel="stylesheet">
   <link href="<?php echo base_url(); ?>assets/frontend/css/sweetalert2.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/frontend/css/sweetalert.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>assets/frontend/css/custom-sweetalert.css" rel="stylesheet">

     
    
    <link href="https://fonts.googleapis.com/css?family=Arima+Madurai:100,200,300,400,500,700,800,900%7CPT+Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
    
<body>
    <div class="wapper">
    	<div id="loader-wrapper">
			<div id="loader"></div>
			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
		</div>
        <div class="quck-nav">
        	<div class="container">
            	<div class="contact-no"><a href="#"><i class="fa fa-map-marker"></i>Brooklyn, NY 10036, United States</a></div>
        		<div class="contact-no"><a href="#"><i class="fa fa-phone"></i>+299 97 39 82</a></div>
                <div class="contact-no"><a href="#"><i class="fa fa-globe"></i>academy.com</a></div>
                <div class="quck-right">
                	<div class="right-link"><a href="#"><i class="fa fa-handshake-o"></i>Help Center</a></div>
                    <div class="right-link"><a href="#"><i class="fa fa-headphones"></i>Online Support</a></div>
                    <div class="right-link language-select">
                    	<a href="javascript:void(0);"><i class="fa fa-language"></i>English</a>
                        <ul class="language-list">
                        	<li><a href="#">Guyana</a></li>
                            <li><a href="#">Haiti</a></li>
                            <li><a href="#">Honduras</a></li>
                            <li><a href="#">Andorra</a></li>
                            <li><a href="#">Armenia</a></li>
                            <li><a href="#">Bahrain</a></li>
                        </ul>
                    </div>
                    <?php $session = $this->session->userdata();?>
                    <?php if(isset($session) && empty($session['id'])){ ?>
                        <div class="right-link"><a href="<?=base_url();?>login"><i class="fa  fa-user"></i>Admin Login</a></div>
                   <?php }else{ ?>
                    <div class="right-link"><a href="<?=base_url();?>logout"><i class="fa  fa-user"></i>Logout</a></div>
                   <?php } ?>
                    
                </div>
            </div>
        </div>
        <header id="header">
        	<div class="container">
                <nav id="nav-main">
                    <div class="navbar navbar-inverse">
                        <div class="navbar-header">
                            <a href="index-2.html" class="navbar-brand"><img src="<?php echo base_url(); ?>assets/frontend/images/logo.png" alt=""></a>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="cart-box">
                        	<a href="#"><i class="fa fa-shopping-basket"></i></a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active sub-menu">
                                	<a href="index-2.html">Home </a>
                            
                                </li>
                                 <li class="sub-menu">
                                    <a href="<?php echo  base_url(); ?>welcome/quize">Quiz</a>
                            
                                </li>
                              <!--   <li class="mega-menu sub-menu">
                                	<a href="courses-list.html">Courses</a>
                                    <div class="menu-view">
                                    	<div class="row">
                                        	<div class="col-sm-4">
                                            	<div class="menu-title">Courses Page</div>
                                            	<ul>
                                                	<li><a href="courses-gride.html">Courses Grid</a></li>
                                                    <li><a href="courses-gride-sideBar.html">Courses Grid SideBar</a></li>
                                                    <li><a href="courses-list.html">Courses List</a></li>
                                                    <li><a href="courses-list-sideBar.html">Courses List SideBar</a></li>
                                                    <li><a href="course-details.html">Course Details</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4">
                                            	<div class="menu-title">Quiz Page</div>
                                            	<ul>
                                                	<li><a href="quiz-intro.html">Quiz Intro</a></li>
                                                    <li><a href="quiz.html">Quiz</a></li>
                                                    <li><a href="quiz-result.html">Quiz Result</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 menu-courses">
                                            	<div class="menu-title">Popular Courses</div>
                                                <div class="courses-slide">
                                                	<div class="img"><img src="<?php echo base_url(); ?>assets/frontend/images/blog/post-img1.jpg" alt=""></div>
                                                    <div class="name"><a href="courses-gride.html">Business Management</a></div>
                                                    <div class="price">$500</div>
                                                </div>
                                                <div class="courses-slide">
                                                	<div class="img"><img src="<?php echo base_url(); ?>assets/frontend/images/blog/post-img2.jpg" alt=""></div>
                                                    <div class="name"><a href="courses-gride.html">Computing Science</a></div>
                                                    <div class="price">$255</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li> -->
                            <!--     <li class="sub-menu mega-menu"> 
                                	<a href="#">Pages </a>
                                    <div class="menu-view">
                                    	<div class="row">
                                        	<div class="col-sm-4">
                                            	<div class="menu-title">Pages</div>
                                            	<ul>
                                        			<li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                    <li><a href="cart.html">Cart</a></li>
                                                    <li><a href="check-out.html">Check Out</a></li>
                                                    <li><a href="instructors.html">Instructors</a></li>
                                        			<li><a href="instructor-profile.html">Instructor Profile</a></li>
                                                    <li><a href="faq.html">Faq</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4">
                                            	<div class="menu-title"></div>
                                            	<ul>
                                                	<li><a href="course-details-free.html">Course Details Free</a></li>
                                        			<li><a href="course-lessons.html">Course Lessons</a></li>
                                                    <li><a href="gallery.html">Gallery</a></li>
                                                    <li><a href="thank-you.html">Thank You</a></li>
                                                    <li><a href="coming-soon.html">Comming Soon</a>
                                                    <li><a href="page-404.html">404 Page</a></li>
                                                    <li><a href="certificate.html">Certificate</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4">
                                            	<div class="menu-title">After Login</div>
                                            	<ul>
                                                	
                                                    <li><a href="login-register.html">Login Register</a></li>
                                                    <li><a href="account-settings.html">Account Settings</a></li>
                                                    <li><a href="my-courses.html">My Courses</a></li>
                                                    <li><a href="course-progress.html">Course Progress</a></li>
                                                    <li><a href="course-home.html">Course Home</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li> -->
                              <!--   <li class="sub-menu">
                                	<a href="#">Features</a>
                                    <ul>
                                    	<li><a href="typography.html">Typography</a></li>
                                        <li><a href="price-plan.html">Price Plan</a></li>
                                        <li><a href="testimonial.html">Testimonial</a></li>
                                    </ul>
                                </li> -->
                                <li><a href="about-us.html">About Us</a></li>
                              <!--   <li class="sub-menu">
                                	<a href="event.html">Event</a>
                                    <ul>
                                    	<li><a href="event.html">Event</a></li>
                                        <li><a href="event-details.html">Event Details</a></li>
                                        <li><a href="event-details2.html">Event Details2</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu mega-menu">
                                	<a href="forums.html">Forums</a>
                                    <div class="menu-view">
                                    	<div class="row">
                                        	<div class="col-sm-4">
                                            	<div class="menu-title">Forums</div>
                                                <ul>
                                                	<li><a href="forums-detail.html">Forums Detail</a></li>
                                                    <li><a href="forums-group.html">Forums Group</a></li>
                                                    <li><a href="forums-group-details.html">Forums Group Details</a></li>
                                                    <li><a href="forums-group-member.html">Forums Group Member</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4">
                                            	<div class="menu-title"></div>
                                                <ul>
                                                	<li><a href="forum-single-topic.html">Forum Single Topic</a></li>
                                                    <li><a href="forums-members.html">Forums Members</a></li>
                                                    <li><a href="forums-profile.html">Forums Profile</a></li>
                                                    <li><a href="forums-profile-activity.html">Forums Profile Activity</a></li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4">
                                            	<div class="menu-title"></div>
                                                <ul>
                                                	<li><a href="forums-profile-forums.html">Forums Profile Forums</a></li>
                                                    <li><a href="forums-profile-friends.html">Forums Profile Friends</a></li>
                                                    <li><a href="forums-profile-groups.html">Forums Profile Groups</a></li>
                                                    <li><a href="forums-single-profile.html">Forums Single Profile</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li> -->
                                <li><a href="contact-us.html">Contact Us </a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
