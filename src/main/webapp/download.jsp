<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Download Service</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h2>��ƤU���t��</h2>
				<div class="mb-4">
					<s:form action="downloadAction" class="form-group">
						<s:textfield name="downloader.customerName" class="form-control"
							label="�ϥΪ̦W��" />
						<s:submit value="�d��" class="btn btn-success" />
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>