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
			<div class="alert alert-info">���\�W���ɮ�!</div>
				<h2>��Ƶn���t��</h2>
				<div class="mb-4 list-group">

					<div class="list-group-item">
						<s:label value="�רҸ��X:"/>
						<s:property value="caseNum" />
					</div>

					<div class="list-group-item">
						<s:label value="�q�帹�X:"/>
						<s:property value="emiNum" />
					</div>

					<div class="list-group-item">
						<s:label value="�H�Υd��:"/>
						<s:property value="creditCardNum" />
					</div>

					<div class="list-group-item">
						<s:label value="�Ȥ�W��:"/>
						<s:property value="customerName" />
					</div>

					<div class="list-group-item">
						<s:label value="�W�Ǯɶ�:" />
						<s:property value="uploadTime" />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>