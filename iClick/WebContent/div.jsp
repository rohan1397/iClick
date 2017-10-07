<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="cdn-cgi/apps/head/gmXC2gL9CEI5yG32ZFrDP6Fm73k.js"></script>
<link rel="stylesheet" type="text/css" href="components/bootstrap/dist/css/bootstrap.min.css" />

<script src="js/js/demo-rtl.js"></script>


<link rel="stylesheet" type="text/css" href="components/font-awesome/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/libs/nanoscroller.css" />

<link rel="stylesheet" type="text/css" href="css/compiled/theme_styles.css" />

<link rel="stylesheet" type="text/css" href="components/select2/dist/css/select2.min.css" />

<link type="image/x-icon" href="favicon.png" rel="shortcut icon" />

<title>Insert title here</title>
<script type="text/javascript">
function onloadPage()
{
    // hide the textArea
    document.getElementById('textArea').style.display = "none";
}
function submitForm() {

    var editor = ace.edit("editor");
    var code = editor.getSession().getValue();
    document.getElementById('hiddenDate').style.display = "block";
    document.getElementById('hiddenDate').value=code;

    document.getElementById("divdata").submit();
}
</script> 

</head>
 <body onload="onloadPage()">
<form action="DivServlet" id="divdata" method="post" target="_blank">
    <div id="editor" class="wysiwyg-editor">
Go ahead&hellip;

</div> 
 <textarea id="hiddenDate" ></textarea>
<input type="button" onclick="submitForm()" value="Button"/>
</form>
<script type='text/javascript'> 
    $("#hiddenDate").val($("#editor").html());
</script>
          <script>
          !function(e,t,r,n,c,a,l){function i(t,r){return r=e.createElement('div'),r.innerHTML='<a href="'+t.replace(/"/g,'&quot;')+'"></a>',r.childNodes[0].getAttribute('href')}function o(e,t,r,n){for(r='',n='0x'+e.substr(t,2)|0,t+=2;t<e.length;t+=2)r+=String.fromCharCode('0x'+e.substr(t,2)^n);return i(r)}try{for(c=e.getElementsByTagName('a'),l='/cdn-cgi/l/email-protection#',n=0;n<c.length;n++)try{(t=(a=c[n]).href.indexOf(l))>-1&&(a.href='mailto:'+o(a.href,t+l.length))}catch(e){}for(c=e.querySelectorAll('.__cf_email__'),n=0;n<c.length;n++)try{(a=c[n]).parentNode.replaceChild(e.createTextNode(o(a.getAttribute('data-cfemail'),0)),a)}catch(e){}}catch(e){}}(document);</script><script src="js/demo-skin-changer.js"></script> 
    <script src="components/jquery/dist/jquery.min.js"></script>
<script src="components/bootstrap/dist/js/bootstrap.js"></script>
<script src="components/nanoscroller/bin/javascripts/jquery.nanoscroller.min.js"></script>
<script src="components/select2/dist/js/select2.min.js"></script>
<script src="js/js/demo.js"></script> 

<script src="components/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="components/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>

<script src="js/scripts1.js"></script>
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
	

	</script>

</body>
</html>