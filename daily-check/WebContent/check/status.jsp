<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    		.check-result th {text-align:center;}
    		.check-result td {text-align:center;}
    </style>
  </head>

  <body>

	<%@ include file="../include/nav.jsp" %>

    <div class="container">
    		<form>
	    		<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">파일시스템</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">시스템</th>
										<th>점검결과</th>
										<th style="width:200px;">시스템</th>
										<th>점검결과</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>System1</td>
										<td>
											<input type="text" class="form-control form-control-sm" id="fs_sys1" name="fs_sys1">
										</td>
										<td>System2</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys2" name="fs_sys2"></td>
									</tr>
									<tr>
										<td>System3</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys3" name="fs_sys3"></td>
										<td>System4</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys4" name="fs_sys4"></td>
									</tr>
									<tr>
										<td>System5</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys5" name="fs_sys5"></td>
										<td>System6</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys6" name="fs_sys6"></td>
									</tr>
									<tr>
										<td>System7</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys7" name="fs_sys7"></td>
										<td>System8</td>
										<td><input type="text" class="form-control form-control-sm" id="fs_sys8" name="fs_sys8"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div> 
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">패스워드 만료일</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">항목</th>
										<th>점검결과</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>패스워드 만료일</td>
										<td><input type="text" class="form-control form-control-sm" id="passwd_fire" name="passwd_fire"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">시스템 로그</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">시스템</th>
										<th>점검결과</th>
										<th style="width:200px;">시스템</th>
										<th>점검결과</th>
									</tr>
								</thead>
								<tbody class="thead-default">
									<tr>
										<td>System1</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys1" name="syslog_sys1"></td>
										<td>System2</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys2" name="syslog_sys2"></td>
									</tr>
									<tr>
										<td>System3</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys3" name="syslog_sys3"></td>
										<td>System4</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys4" name="syslog_sys4"></td>
									</tr>
									<tr>
										<td>System5</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys5" name="syslog_sys5"></td>
										<td>System6</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys6" name="syslog_sys6"></td>
									</tr>
									<tr>
										<td>System7</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys7" name="syslog_sys7"></td>
										<td>System8</td>
										<td><input type="text" class="form-control form-control-sm" id="syslog_sys8" name="syslog_sys8"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">DB 테이블스페이스</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">시스템</th>
										<th style="width:110px;">영역구분</th>
										<th style="width:110px;">사용율</th>
										<th style="width:110px;">여유량</th>
										<th style="width:110px;">증감량</th>
										<th>비고</th>
									</tr>
								</thead>
								<tbody class="thead-default">
									<tr>
										<td rowspan="2" class="align-middle">System1</td>
										<td>DATA</td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_data_use" name="tbs_sys1_data_use"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_data_free" name="tbs_sys1_data_free"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_data_plus" name="tbs_sys1_data_plus"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_data_note" name="tbs_sys1_data_note"></td>
									</tr>
									<tr>
										<td>INDEX</td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_idx_use" name="tbs_sys1_idx_use"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_idx_free" name="tbs_sys1_idx_free"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_idx_plus" name="tbs_sys1_idx_plus"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys1_idx_note" name="tbs_sys1_idx_note"></td>
									</tr>
									<tr>
										<td rowspan="2" class="align-middle">System2</td>
										<td>DATA</td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_data_use" name="tbs_sys2_data_use"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_data_free" name="tbs_sys2_data_free"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_data_plus" name="tbs_sys2_data_plus"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_data_note" name="tbs_sys2_data_note"></td>
									</tr>
									<tr>
										<td>INDEX</td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_idx_use" name="tbs_sys2_idx_use"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_idx_free" name="tbs_sys2_idx_free"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_idx_plus" name="tbs_sys2_idx_plus"></td>
										<td><input type="text" class="form-control form-control-sm" id="tbs_sys2_idx_note" name="tbs_sys2_idx_note"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">DB 백업</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">시스템</th>
										<th style="width:120px;">백업주기</th>
										<th>결과</th>
									</tr>
								</thead>
								<tbody class="thead-default">
									<tr>
										<td>System1</td>
										<td>월/수/금</td>
										<td><input type="text" class="form-control form-control-sm" id="db_backup_sys1" name="db_backup_sys1"></td>
									</tr>
									<tr>
										<td>System2</td>
										<td>금</td>
										<td><input type="text" class="form-control form-control-sm" id="db_backup_sys2" name="db_backup_sys2"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">DB 로그</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;">시스템</th>
										<th style="width:120px;">ORA</th>
										<th style="width:120px;">TNS</th>
										<th style="width:120px;">2PC</th>
										<th>결과</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>System1</td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys1_ora" name="db_log_sys1_ora"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys1_tns" name="db_log_sys1_tns"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys1_2pc" name="db_log_sys1_2pc"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys1_result" name="db_log_sys1_result"></td>
									</tr>
									<tr>
										<td>System2</td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys2_ora" name="db_log_sys2_ora"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys2_tns" name="db_log_sys2_tns"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys2_2pc" name="db_log_sys2_2pc"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys2_result" name="db_log_sys2_result"></td>
									</tr>
									<tr>
										<td>System3</td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys3_ora" name="db_log_sys3_ora"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys3_tns" name="db_log_sys3_tns"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys3_2pc" name="db_log_sys3_2pc"></td>
										<td><input type="text" class="form-control form-control-sm" id="db_log_sys3_result" name="db_log_sys3_result"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">프로세스 수</span>
				</div>
			</div>
			<div class="row justify-content-center mb-4 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:5px;">
							<table class="table table-bordered table-sm">
								<thead class="thead-default">
									<tr>
										<th style="width:200px;" rowspan="2" class="align-middle">시스템</th>
										<th colspan="2">점검결과</th>
										<th style="width:200px;" rowspan="2">시스템</th>
										<th colspan="2">점검결과</th>
									</tr>
									<tr>
										<th style="width:120px;">전체</th>
										<th>실행중</th>
										<th style="width:120px;">전체</th>
										<th>실행중</th>
									</tr>
								</thead>
								<tbody class="thead-default">
									<tr>
										<td>System1</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys1" name="proc_cnt_tot_sys1"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys1" name="proc_cnt_run_sys1"></td>
										<td>System2</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys2" name="proc_cnt_tot_sys2"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys2" name="proc_cnt_run_sys2"></td>
									</tr>
									<tr>
										<td>System3</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys3" name="proc_cnt_tot_sys3"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys3" name="proc_cnt_run_sys3"></td>
										<td>System4</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys4" name="proc_cnt_tot_sys4"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys4" name="proc_cnt_run_sys4"></td>
									</tr>
									<tr>
										<td>System5</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys5" name="proc_cnt_tot_sys5"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys5" name="proc_cnt_run_sys5"></td>
										<td>System6</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys6" name="proc_cnt_tot_sys6"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys6" name="proc_cnt_run_sys6"></td>
									</tr>
									<tr>
										<td>System7</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys7" name="proc_cnt_tot_sys7"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys7" name="proc_cnt_run_sys7"></td>
										<td>System8</td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_tot_sys8" name="proc_cnt_tot_sys8"></td>
										<td><input type="text" class="form-control form-control-sm" id="proc_cnt_run_sys8" name="proc_cnt_run_sys8"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10" style="padding-bottom:3px;">
					<span class="title_md">점검결과 및 특이사항</span>
				</div>
			</div>
			<div class="row justify-content-center mb-3 check-result">
				<div class="col-md-10">
					<div class="card">
						<div class="card-body" style="padding-bottom:17px;">
							<textarea class="form-control" id="comment" name="comment" rows="5"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-10 text-right" style="padding-bottom:20px;">
					<button type="submit" class="btn btn-primary">점검완료</button>
				</div>
			</div>
		</form>
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