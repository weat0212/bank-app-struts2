<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">

				<h2>���U�b��</h2>
				<div class="register-form">
					<s:form action="">

						<s:textfield name="firstName" class="form-control" label="�m��" />


						<s:textfield name="lastName" class="form-control" label="�W�r" />


						<s:textfield name="email" class="form-control" type="email"
							label="�q�l�H�c" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
							maxlength="32" />

						<s:textfield name="password" class="form-control" label="�K�X"
							type="password" maxlength="32" />


						<s:textfield name="confirmPassword" class="form-control"
							label="�A���T�{�K�X" type="password" />

						<s:checkbox name="terms" label="�ڤw�\Ū�æP�N���w���ڻ���" />


						<s:submit value="�T�{�e�X" class="btn btn-success" />
						<s:reset value="�M�Ÿ��" class="btn" />
					</s:form>
					<span class="badge">�w���U? <a href="/login">�n�J</a></span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>