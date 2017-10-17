<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@ include file="../include/title.jsp" %>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/navbar-top.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    
    <link href="open-iconic/font/css/open-iconic-bootstrap.css" rel="stylesheet">
    
    <style>
    		th {text-align:center;}
    		td {text-align:center;}
    </style>
</head>
<body>
	<%@ include file="../include/nav.jsp" %>
	
	<div class="container">
		<div class="row justify-content-center">
			<table class="table table-bordered table-sm">
				<thead class="thead-default">
					<tr>
						<th>점검일자</th>
						<th>test</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script>window.jQuery || document.write('<script src="bootstrap/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="bootstrap/assets/js/vendor/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>