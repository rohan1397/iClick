<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>iClick</title>
    
<script src="cdn-cgi/apps/head/gmXC2gL9CEI5yG32ZFrDP6Fm73k.js"></script>
<link rel="stylesheet" type="text/css" href="components/bootstrap/dist/css/bootstrap.min.css" />

<script src="js/js/demo-rtl.js"></script>


<link rel="stylesheet" type="text/css" href="components/font-awesome/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/libs/nanoscroller.css" />

<link rel="stylesheet" type="text/css" href="css/compiled/theme_styles.css" />

<link rel="stylesheet" type="text/css" href="components/select2/dist/css/select2.min.css" />

<link type="image/x-icon" href="favicon.png" rel="shortcut icon" />

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    
    <!--external css-->
    
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link href="css/widgets.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet">	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    
    <!-- =======================================================
        Theme Name: NiceAdmin
        Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
         <jsp:include page="header.jsp"></jsp:include>
     <jsp:include page="sidebar.jsp"></jsp:include>
       <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			 <div id="email-new" class="email-new-nano">
<div class="email-new-nano-content">
<div id="email-new-inner">
<div id="email-new-title" class="clearfix">
<span class="subject">Compose Mail</span>
</div>

    <form action="ComposeServlet" method="post" name="compose">
<div id="email-new-header">
<div class="row form-group">
<label for="exampleInpTo" class="col-md-2">From:</label>
<div class="col-md-10"><input type="email" multiple="multiple" name="sender" class="form-control"/>
</div>
</div>

<div class="row form-group">
<label for="exampleInpTo" class="col-md-2">To:</label>
<div class="col-md-10"><input type="email" multiple="multiple" name="receiver" class="form-control"/>
</div>
</div>
<div class="row form-group">
<label for="exampleInpCc" class="col-md-2">CC:</label>
<div class="col-md-10">
<input type="email" multiple="multiple" name="cc" class="form-control"/>
    

</div>
</div>
<div class="row form-group">
<label for="exampleInpSubject" class="col-md-2">Subject:</label>
<div class="col-md-10">
<input type="text" placeholder="Enter subject" id="exampleInpSubject" name="subject" class="form-control" />
</div>
</div>
</div>

<!--<div id="editor" class="wysiwyg-editor">
Go ahead&hellip;

</div> -->
<div class="row-form-group">
<div class="col-md-10">		
<label for="exampleInpSubject" class="col-md-2">Body:</label>		
			<textarea class="form-control label_better" name="message" placeholder="message" rows="7"></textarea>
	</div>
</div> 
</div>
</div>
</div>
<div id="email-new-footer">
<div class="row">
<div class="col-xs-12 col-md-10 col-md-offset-2">
<div class="pull-right">
<div class="btn-group">
<span class="btn btn-default"><i class="fa fa-times">
				<input type="reset" value="Cancel" class="btn btn-default"></i></span>

<!--<button type="button" class="btn btn-default"><i class="fa fa-times"></i> Cancel</button>-->
</div>
<div class="btn-group">

                
				<span class="btn btn-success"><i class="fa fa-send">
				<input type="submit" value="Send email" class="btn btn-success"></i></span>


<!-- <button type="button" class="btn btn-success"><i class="fa fa-send"></i> Send email</button>-->
</div>
</div>
</div>
</div>
</div>
</form>
    </div>
    </div>
    </div>
    
          </section>
      </section>
      </section>

          
          <script>
          
    <script src="components/jquery/dist/jquery.min.js"></script>
<script src="components/bootstrap/dist/js/bootstrap.js"></script>
<script src="components/nanoscroller/bin/javascripts/jquery.nanoscroller.min.js"></script>
<script src="components/select2/dist/js/select2.min.js"></script>
<script src="js/js/demo.js"></script> 

<script src="components/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="components/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>

<script src="js/scripts1.js"></script>
<script src="components/PACE/pace.min.js"></script>


  </body>
</html>