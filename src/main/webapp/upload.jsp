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
				<h2>資料登錄系統</h2>
				<div class="mb-4">
					<s:form action="uploadAction" class="form-group">
						<s:textfield id="caseNum" name="uploadCase.caseNum" class="form-control" label="案例號碼" />
						<s:textfield id="emiNum" name="uploadCase.emiNum" class="form-control" label="電文代碼" />
						<s:textfield id="creditCardNum" name="uploadCase.creditCardNum" class="form-control"
							label="信用卡號" placeholder="****-****-****-****" maxlength="16" />
						<s:textfield id="customerName" name="uploadCase.customerName" class="form-control"
							label="信用卡客戶名稱" />
						<s:submit class="btn btn-success" value="確認送出"/>
						<s:reset class="btn" value="清空資料"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>