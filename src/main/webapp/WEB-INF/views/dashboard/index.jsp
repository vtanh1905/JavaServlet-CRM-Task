<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.vtanh1905.dto.AmountOfTaskBelongStatus"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		List<AmountOfTaskBelongStatus> statistic = (ArrayList<AmountOfTaskBelongStatus>)request.getAttribute("statistic"); 
		int amoutStatusNotStart = statistic.get(0).getAmount();
		int amoutStatusDoing = statistic.get(1).getAmount();
		int amoutStatusDone = statistic.get(2).getAmount();
		int sumAmount = amoutStatusNotStart + amoutStatusDoing + amoutStatusDone;
	%>
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row bg-title">
				<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<h4 class="page-title">Dashboard</h4>
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- row -->
		<div class="row">
			<!--col -->
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="white-box">
					<div class="col-in row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<i data-icon="E" class="linea-icon linea-basic"></i>
							<h5 class="text-muted vb">CHƯA BẮT ĐẦU</h5>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
							<h3 class="counter text-right m-t-15 text-danger"><%= amoutStatusNotStart %></h3>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="progress">
								<div class="progress-bar progress-bar-danger" role="progressbar"
									aria-valuenow="3" aria-valuemin="5" aria-valuemax="2"
									style="width: <%= (amoutStatusNotStart * 100 ) / sumAmount %>%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
			<!--col -->
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="white-box">
					<div class="col-in row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
							<h5 class="text-muted vb">ĐANG THỰC HIỆN</h5>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
							<h3 class="counter text-right m-t-15 text-megna"><%= amoutStatusDoing %></h3>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="progress">
								<div class="progress-bar progress-bar-megna" role="progressbar"
									aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
									style="width: <%= (amoutStatusDoing * 100 ) / sumAmount %>%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
			<!--col -->
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<div class="white-box">
					<div class="col-in row">
						<div class="col-md-6 col-sm-6 col-xs-6">
							<i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
							<h5 class="text-muted vb">ĐÃ HOÀN THÀNH</h5>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6">
							<h3 class="counter text-right m-t-15 text-primary"><%= amoutStatusDone %></h3>
						</div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="progress">
								<div class="progress-bar progress-bar-primary"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" 
									style="width: <%= (amoutStatusDone * 100 ) / sumAmount %>%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<!--row -->
		<div class="row">
			<div class="col-md-12">
				<div class="white-box">
					<h3 class="box-title">Sales Difference</h3>
					<ul class="list-inline text-right">
						<li>
							<h5>
								<i class="fa fa-circle m-r-5" style="color: #dadada;"></i>Site A
								View
							</h5>
						</li>
						<li>
							<h5>
								<i class="fa fa-circle m-r-5" style="color: #aec9cb;"></i>Site B
								View
							</h5>
						</li>
					</ul>
					<div id="morris-area-chart2" style="height: 370px;"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>