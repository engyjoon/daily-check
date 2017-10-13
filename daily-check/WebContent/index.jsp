<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<style type="text/css">
	.layer {position:absolute; display:table; top:0; left:0; width:100%; height:90%;}
	.layer .layer_inner {display:table-cell; text-align:center; vertical-align:middle}
	.layer .content {display:inline-block; background:#ffffff;}
	
	.title {
		width:490px; font-size:50px;
		border-style:solid; border-width:0px; 
		padding:10px 0px 10px 0px; margin-bottom:5px; 
	}
	.input {
		width:490px; text-align:left;
		border-style:solid; border-width:1px; border-color:#f1e8eb; border-width:1px;
		padding:15px 40px 15px 40px;

	}
</style>

<title>Sky Serve</title>
</head>
<body>
	<div class="layer">
		<div class="layer_inner">
			<div class="content">				
				<div class="title"><img src="image/title_v1.png" style="width:450px;height:auto;"></div>
				<div class="input">
					<form action="member.do" method="post" autocomplete="off">
						<input type="hidden" name="action" value="login">
						<div class="form-group">
							<label for="id">아이디</label>
							<input type="text" class="form-control" id="id" name="id">
						</div>
						<div class="form-group">
							<label for="passwd">패스워드</label>
							<input type="password" class="form-control" id="pw" name="pw">
						</div>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	
	<script>
		$("#id").focus();
	</script>

</body>
</html>