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
    <head>
<script src="cdn-cgi/apps/head/gmXC2gL9CEI5yG32ZFrDP6Fm73k.js"></script><link rel="stylesheet" type="text/css" href="components/bootstrap/dist/css/bootstrap.min.css" />

<script src="js/demo-rtl.js"></script>


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
<span class="subject">New Email</span>
</div>

    <form>
<div id="email-new-header">
<div class="row form-group">
<label for="exampleInpTo" class="col-md-2">To:</label>
<div class="col-md-10"><input type="email" multiple="multiple" name="email" class="form-control-s2 email-recepients"/>
</div>
</div>
<div class="row form-group">
<label for="exampleInpCc" class="col-md-2">CC:</label>
<div class="col-md-10">
<input type="email" multiple="multiple" name="cc" class="form-control-s2 email-recepients"/>
    

</div>
</div>
<div class="row form-group">
<label for="exampleInpSubject" class="col-md-2">Subject:</label>
<div class="col-md-10">
<input type="text" placeholder="Enter subject" id="exampleInpSubject" class="form-control" />
</div>
</div>
</div>
<div id="email-new-body">
<div class="row">
<label class="visible-xs">Content:</label>
<div class="col-md-12">
<div id="alerts"></div>
<div class="btn-toolbar editor-toolbar hidden-xs" data-role="editor-toolbar" data-target="#editor">
<div class="btn-group">
<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
<ul class="dropdown-menu">
</ul>
</div>
<div class="btn-group">
<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
</ul>
</div>
<div class="btn-group">
<a class="btn btn-default" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
<a class="btn btn-default" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
<a class="btn btn-default" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
<a class="btn btn-default" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
</div>
<div class="btn-group">
<a class="btn btn-default" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
<a class="btn btn-default" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
<a class="btn btn-default" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
<a class="btn btn-default" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
</div>
<div class="btn-group">
<a class="btn btn-default" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
<a class="btn btn-default" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
<a class="btn btn-default" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
<a class="btn btn-default" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
</div>
<div class="btn-group">
<a class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
<div class="dropdown-menu input-append">
<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
<button class="btn" type="button">Add</button>
</div>
<a class="btn btn-default" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
</div>
<div class="btn-group">
<a class="btn btn-default" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
</div>
<div class="btn-group">
<a class="btn btn-default" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
<a class="btn btn-default" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
</div>
<input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
</div>

<textarea class="form-control label_better" placeholder="Your feedback..." rows="7"></textarea></div>
</div>
</div>
<div id="email-new-footer">
<div class="row">
<div class="col-xs-12 col-md-10 col-md-offset-2">
<div class="pull-right">
<div class="btn-group">
 <button type="button" class="btn btn-default"><i class="fa fa-times"></i> Cancel</button>
</div>
<div class="btn-group">
<button type="button" class="btn btn-success"><i class="fa fa-send"></i> Send email</button>
</div>
</div>
</div>
</div>
</div>
</form>
    </div>
    </div>
    </div>
    

                  <div class="widget-foot">
                    <!-- Footer goes here -->
                  </div>
              <!--   </div>
              </div>
              
            </div>
                        
          </div> --> 
              <!-- project team & activity end -->

          </section>
          </section>
      </section>
      
<jsp:include page="footer.jsp"></jsp:include>
          <script>!function(e,t,r,n,c,a,l){function i(t,r){return r=e.createElement('div'),r.innerHTML='<a href="'+t.replace(/"/g,'&quot;')+'"></a>',r.childNodes[0].getAttribute('href')}function o(e,t,r,n){for(r='',n='0x'+e.substr(t,2)|0,t+=2;t<e.length;t+=2)r+=String.fromCharCode('0x'+e.substr(t,2)^n);return i(r)}try{for(c=e.getElementsByTagName('a'),l='/cdn-cgi/l/email-protection#',n=0;n<c.length;n++)try{(t=(a=c[n]).href.indexOf(l))>-1&&(a.href='mailto:'+o(a.href,t+l.length))}catch(e){}for(c=e.querySelectorAll('.__cf_email__'),n=0;n<c.length;n++)try{(a=c[n]).parentNode.replaceChild(e.createTextNode(o(a.getAttribute('data-cfemail'),0)),a)}catch(e){}}catch(e){}}(document);</script><script src="js/demo-skin-changer.js"></script> 
    <script src="components/jquery/dist/jquery.min.js"></script>
<script src="components/bootstrap/dist/js/bootstrap.js"></script>
<script src="components/nanoscroller/bin/javascripts/jquery.nanoscroller.min.js"></script>
<script src="components/select2/dist/js/select2.min.js"></script>
<script src="js/demo.js"></script> 

<script src="components/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="components/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>

<script src="js/scripts.js"></script>
<script src="components/PACE/pace.min.js"></script>

    <script>
	$(document).ready(function() {
		$('#email-list li > .star > a').on('click', function() {
			$(this).toggleClass('starred');
		});
		
		$(".has-tooltip").each(function (index, el) {
			$(el).tooltip({
				placement: $(this).data("placement") || 'bottom'
			});
		});
		
		setHeightEmailContent();
		
		initEmailScroller();
		
		$('.email-recepients').select2({
			placeholder: 'Enter recepients',
			tags: true,
			tokenSeparators: [',', ' ']
		});
	});
	
	$(window).smartresize(function(){
		setHeightEmailContent();
		
		initEmailScroller();
	});
	
	function setHeightEmailContent() {
		if ($( document ).width() >= 992) {
			var windowHeight = $(window).height();
			var staticContentH = $('#header-navbar').outerHeight() + $('#email-header').outerHeight();
			staticContentH += ($('#email-box').outerHeight() - $('#email-box').height());
	
			$('#email-new').css('height', windowHeight - staticContentH);
		}
		else {
			$('#email-new').css('height', '');
		}
	}
	
	function initEmailScroller() {
		if ($( document ).width() >= 992) {
			$('#email-navigation').nanoScroller({
		    	alwaysVisible: false,
		    	iOSNativeScrolling: false,
		    	preventPageScrolling: true,
		    	contentClass: 'email-nav-nano-content'
		    });
			
			$('#email-new').nanoScroller({
		    	alwaysVisible: false,
		    	iOSNativeScrolling: false,
		    	preventPageScrolling: true,
		    	contentClass: 'email-new-nano-content'
		    });
		}
	}
	
	$(function(){
		function initToolbarBootstrapBindings() {
			var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
						'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
						'Times New Roman', 'Verdana'],
				fontTarget = $('[title=Font]').siblings('.dropdown-menu');
			
			$.each(fonts, function (idx, fontName) {
				fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
			});
			$('a[title]').tooltip({container:'body'});
			$('.dropdown-menu input').click(function() {return false;})
				.change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
				.keydown('esc', function () {this.value='';$(this).change();});

			$('[data-role=magic-overlay]').each(function () { 
				var overlay = $(this), target = $(overlay.data('target')); 
				overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
			});
			if ("onwebkitspeechchange"	in document.createElement("input")) {
				var editorOffset = $('#editor').offset();
				$('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
			} else {
				$('#voiceBtn').hide();
			}
		};
		function showErrorAlert (reason, detail) {
			var msg='';
			if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
			else {
				console.log("error uploading file", reason, detail);
			}
			$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 
			 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
		};
		
		initToolbarBootstrapBindings();	
		
		$('#editor').wysiwyg({ fileUploadError: showErrorAlert} );
	});
	</script>

  </body>
</html>