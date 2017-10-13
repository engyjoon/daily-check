<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<style type="text/css">
	.layer {position:absolute; display:table; top:0; left:0; width:100%; height:95%;}
	.layer .layer_inner {display:table-cell; text-align:center; vertical-align:middle}
	.layer .content {display:inline-block; background:#ffffff; width:490px; text-align:left;}

</style>

<title>Sky Serve</title>
</head>
<body>
	<div class="layer">
		<div class="layer_inner">
			<div class="content">				
				<div class="card">
					<div class="card-header">Create Admin User</div>
					<div class="card-body">
						<form action="member.do" method="post" autocomplete="off">
							<input type="hidden" name="action" value="addAdmin">
							<div class="form-group">
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="pw" name="pw" placeholder="패스워드">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="name" name="name" placeholder="이름">
							</div>
							<button type="submit" class="btn btn-primary">Create</button>
						</form>
					</div>
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