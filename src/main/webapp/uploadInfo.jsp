<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>File Transfer Service</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
			<div class="alert alert-info">成功上傳檔案!</div>
				<h2>資料登錄系統</h2>
				<div class="mb-4 list-group">

					<div class="list-group-item">
						<s:label value="案例號碼:"/>
						<s:property value="caseNum" />
					</div>

					<div class="list-group-item">
						<s:label value="電文號碼:"/>
						<s:property value="emiNum" />
					</div>

					<div class="list-group-item">
						<s:label value="信用卡號:"/>
						<s:property value="creditCardNum" />
					</div>

					<div class="list-group-item">
						<s:label value="客戶名稱:"/>
						<s:property value="customerName" />
					</div>

					<div class="list-group-item">
						<s:label value="上傳時間:" />
						<s:property value="uploadTime" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>