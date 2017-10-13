<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <nav class="navbar navbar-expand-md navbar-dark navbar-light mb-4" style="background-color:#808080;">
 	<a class="navbar-brand" style="color:#ffffff;">Sky Serve</a>
 	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">일일점검</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">모니터링</a>
			</li>
		</ul>
		<!-- <span class="navbar-text" style="margin-right:10px;">${userid}</span> -->
		<span class="navbar-text" >
			<a href="member.do?action=logout" style="color:#ffffff;"><span class="oi oi-power-standby"></span></a>
		</span>
	</div>
</nav>