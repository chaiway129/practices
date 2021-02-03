<?php $this->load->view('frontend/header'); ?>
<style>
/** {
  margin: 0px;
  padding: 0px;
  font: 16px 'Source Sans Pro', sans-serif;
  border: none;
  box-sizing: border-box;
}

html, body {
  background: #2E706C;
  text-align: center;
  width: 50%;
  height: 50%;
  margin: 5rem;
  bottom: 2rem;
  right: 2rem;
}

html {
  display: table;
}

body {
  display: table-cell;
  vertical-align: middle;
}
*/
#quiz h1{
    font-size: 20px;
    color: #5d5454;
    line-height: 60px;
    text-transform: uppercase;
}
#quiz {
  margin: -20px 50px 0px;
  position: relative;
  width: calc(100% - 100px);
}

/*#quiz h1 {
  color: #FAFAFA;
  font-weight: 600;
  font-size: 36px;
  text-transform: uppercase;
  text-align: left;
  line-height: 44px;
}*/

#quiz button {
 float: left;
    margin: 19px 0px 19px 9px;
    padding: 6px 10px;
    background: #06a9da;
    color: #fff;
    font-size: 14px;
    cursor: pointer;
    outline: none;
    font-weight: bold;

}

#quiz button:hover {
  background: #36a39c;
  color: #FFF;
}

#quiz button:disabled {
 opacity: 0.5;
    background: #06a9da;
    color: #fff;
    cursor: default;
    font-weight: bold;
}

#question {
  padding: 40px;
  background: #FAFAFA;
  text-align: center;
}

#question h2 {
  margin-bottom: 16px;
  font-weight: 600;
  font-size: 20px;
}

#question input[type=radio] {
  display: none;
}

#question label {
  display: inline-block;
  margin: 4px;
  padding: 8px;
  background: #FAE3BB;
  color: #4C3000;
  width: calc(50% - 8px);
  min-width: 50px;
  cursor: pointer;
}

#question label:hover {
  background: #EBBB67;
}

#question input[type=radio]:checked + label {
  background: #CB8306;
  color: #FAFAFA;
}

#quiz-results {
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: absolute;
  top: 44px;
  left: 0px;
  background: #FAFAFA;
  width: 100%;
  height: calc(100% - 44px);
}

#quiz-results-message {
  display: block;
  color: #00403C;
  font-size: 20px;
  font-weight: bold;
}

#quiz-results-score {
  display: block;
  color: #31706c;
  font-size: 20px;
}

#quiz-results-score b {
  color: #00403C;
  font-weight: 600;
  font-size: 20px;
}

#quiz-retry-button {

  float: left;
  margin: 8px 0px 0px 8px;
  padding: 4px 8px;
  background: #9ACFCC;
  color: #00403C;
  font-size: 14px;
  cursor: pointer;
  outline: none;
  
}
/*old*/
/*
    .content-box{ display:none;}
.active-content,.active-content-new{  display:block;}

.left-section ul li a {
    display: block;
    padding: 6px;
    background: #5f5858;
    color: #fff;
    margin-bottom: 7px;
   
    text-align: center;
    font-size: 20px;
    }
.right-section {
    padding: 40px;
    background: #f5f5f5;
}
.active-tab-menu a,.active-tab-menu-new a {
  
    background: #10c5ec !important;
}
.left-section ul li{ list-style-type:none;}
.left-section ul{ padding:0px; margin:0px;}
.custom-button-section a {
    display: block;
    padding: 10px;
    float: left;
  
   background: #10c5ec;
    color: #fff;
    margin-right: 10px;
    width: 100px;
    text-align: center;
    font-weight: bold;

}
.button-row:after {
    content: "";
    clear: both;
    display: block;
}
.button-row {
    margin-top: 36px;
}
.Hide-this{ display:none;}
.content-box h1{
        font-size: 20px;
    color: #5d5454;
    line-height: 60px;
    text-transform: uppercase;
}*/

    </style>

        <section class="banner inner-page">
            <div class="banner-img"><img src="images/banner/quiz.jpg" alt=""></div>
            <div class="page-title">    
                <div class="container">
                    <h1>Guests Data</h1>
                </div>
            </div>
        </section>
        <section class="breadcrumb white-bg">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Guests Data</a></li>
                </ul>
            </div>
        </section>
  <div class="container">
<div class="row">

   <div class="col-lg-12">

      <div class="ibox ">

         <br>

         <div class="ibox-title">

            <?php if($this->session->flashdata('message')): ?>

            <div class="alert alert-success">

               <button type="button" class="close" data-close="alert"></button>

               <?php echo $this->session->flashdata('message'); ?>

            </div>

            <?php endif; ?>

        
            <div class="form-group pull-right">

            </div>

            <form method="GET" action="<?php echo base_url().'guest/index'; ?>" class="form-inline ibox-content">

               <div class="form-group">

                  <select name="searchBy" class="form-control" readonly>

                  <option value="name" <?php echo $searchBy=="name"?'selected="selected"':""; ?>>Name</option>

                  </select>

               </div>

               <div class="form-group">

                  <input type="text" name="searchValue" id="searchValue" class="form-control" value="<?php echo $searchValue; ?>">

               </div>

               <input type="submit" name="search" value="Search" class="btn btn-info">

               <div class="form-group pull-right">

                  <select name="per_page" class="form-control" onchange="this.form.submit()">

                     <option value="5" <?php echo $per_page=="5"?'selected="selected"':""; ?>>5</option>

                     <option value="10" <?php echo $per_page=="10"?'selected="selected"':""; ?>>10</option>

                     <option value="20" <?php echo $per_page=="20"?'selected="selected"':""; ?>>20</option>

                     <option value="50" <?php echo $per_page=="50"?'selected="selected"':""; ?>>50</option>

                     <option value="100" <?php echo $per_page=="100"?'selected="selected"':""; ?>>100</option>

                  </select>

               </div>

            </form>

         </div>

         <div class="ibox-content">

         <div class="table table-responsive">

            <table class="table table-striped table-bordered table-hover Tax" >

               <thead>

                  <tr>

                     
                     <th> Sr No. </th>

                     <?php $sortSym=isset($_GET["order"]) && $_GET["order"]=="asc" ? "up" : "down"; ?>

        <?php $symbol = isset($_GET["sortBy"]) && $_GET["sortBy"]=="name"?"<i class='fa fa-sort-$sortSym' aria-hidden='true'></i>": "<i class='fa fa-sort' aria-hidden='true'></i>"; ?>

        <th> <a href="<?php echo $fields_links["name"]; ?>" class="link_css"> Name <?php echo $symbol ?></a></th>

            

        <?php $symbol = isset($_GET["sortBy"]) && $_GET["sortBy"]=="email"?"<i class='fa fa-sort-$sortSym' aria-hidden='true'></i>": "<i class='fa fa-sort' aria-hidden='true'></i>"; ?>

        <th> <a href="<?php echo $fields_links["email"]; ?>" class="link_css"> Email <?php echo $symbol ?></a></th>

            <th> <a href="<?php echo $fields_links["score"]; ?>" class="link_css"> Score <?php echo $symbol ?></a></th>

                  </tr>

               </thead>

               <tbody>

                  <?php if(isset($results) and !empty($results))

                     { $count=1; ?>

                  <?php foreach ($results as $key => $value) { ?>

                  <tr  id="hide<?php echo $value->id; ?>" >

            <th><?php if(!empty($value->id)){ echo $count; $count++; }?></th>
            <th><?php if(!empty($value->name)){?><?php echo $value->name;?><?php }?></th>

                <th><?php echo  $value->email; ?></th>
                <th><?php echo  $value->score; ?></th>

                </tr>

                  <?php 

                     }

                     

                     

                     } else{

                     echo '<tr><td colspan="100"><h3 align="center" class="text-danger">No Record found!</center</td></tr>';

                     } ?>  

               </tbody>

            </table>

            </div>

            <?php echo $links; ?>

         </div>

      </div>

      <img onclick="callme('','item','')" src="<?php echo $this->config->item('accet_url')?>/img/mac-trashcan_full-new.png" id="recycle" style="width:90px;  display:none; position:fixed; bottom: 50px; right: 50px;"/>

   </div>

</div>

 </div>


<?php $this->load->view('frontend/footer'); ?>

