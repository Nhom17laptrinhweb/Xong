<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<meta charset="UTF-8">
	
	<!-- bootstraps CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="resource/js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>	
	<!-- Customize -->
	<link rel="stylesheet" href="resource/css/style.css">	
	<link rel="stylesheet" href="dist/themes/default/style.min.css" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>jquery tree menu css slide up down</title>
	<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
	<script type="text/javascript">
	$(function(){
		$('#tree-menu > li > a').click(function(){
		 var next = $(this).next();
			if(next.is(':visible')){
					next.slideUp(300);
				 $(this).find('span').jsp('+');
			  }else{
				  next.slideDown(300);
				 $(this).find('span').jsp('-');
			 }
			});
		});
		</script>
				
	<script src="dist/libs/jquery.js"></script>
	<!-- 5 include the minified jstree source -->
	<script src="dist/jstree.min.js"></script>
	<script>
	$(function () {
	  // 6 create an instance when the DOM is ready
	  $('#jstree').jstree();
	  // 7 bind to events triggered on the tree
	  $('#jstree').on("changed.jstree", function (e, data) {
	    console.log(data.selected);
	  });
	  // 8 interact with the tree - either way is OK
	  $('button').on('click', function () {
	    $('#jstree').jstree(true).select_node('child_node_1');
	    $('#jstree').jstree('select_node', 'child_node_1');
	    $.jstree.reference('#jstree').select_node('child_node_1');
	  });
	});
	</script>
	
