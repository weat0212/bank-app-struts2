<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h2>�Ȥ��ഫ�M��</h2>
				<div class="mb-4 list-group">
					<s:iterator value="uploadCases" var="uploadCase">
						<div class="list-group-item">
							<s:label value="�רҸ��X:" />
							<s:property value="#uploadCase.caseNum" />
						</div>

						<div class="list-group-item">
							<s:label value="�q�帹�X:" />
							<s:property value="#uploadCase.emiNum" />
						</div>

						<div class="list-group-item">
							<s:label value="�H�Υd��:" />
							<s:property value="#uploadCase.creditCardNum" />
						</div>

						<div class="list-group-item">
							<s:label value="�Ȥ�W��:" />
							<s:property value="#uploadCase.customerName" />
						</div>

						<div class="list-group-item">
							<s:label value="�W�Ǯɶ�:" />
							<s:property value="#uploadCase.uploadTime" />
						</div><br><br>
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
</body>
</html>