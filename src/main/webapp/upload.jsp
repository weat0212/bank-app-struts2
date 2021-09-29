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
				<h2>��Ƶn���t��</h2>
				<div class="mb-4">
					<s:form action="uploadAction" class="form-group">
						<s:textfield id="caseNum" name="uploadCase.caseNum" class="form-control" label="�רҸ��X" />
						<s:textfield id="emiNum" name="uploadCase.emiNum" class="form-control" label="�q��N�X" />
						<s:textfield id="creditCardNum" name="uploadCase.creditCardNum" class="form-control"
							label="�H�Υd��" placeholder="****-****-****-****" maxlength="16" />
						<s:textfield id="customerName" name="uploadCase.customerName" class="form-control"
							label="�H�Υd�Ȥ�W��" />
						<s:submit class="btn btn-success" value="�T�{�e�X"/>
						<s:reset class="btn" value="�M�Ÿ��"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>