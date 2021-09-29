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

				<h2>註冊帳號</h2>
				<div class="register-form">
					<s:form action="">

						<s:textfield name="firstName" class="form-control" label="姓氏" />


						<s:textfield name="lastName" class="form-control" label="名字" />


						<s:textfield name="email" class="form-control" type="email"
							label="電子信箱" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
							maxlength="32" />

						<s:textfield name="password" class="form-control" label="密碼"
							type="password" maxlength="32" />


						<s:textfield name="confirmPassword" class="form-control"
							label="再次確認密碼" type="password" />

						<s:checkbox name="terms" label="我已閱讀並同意約定條款說明" />


						<s:submit value="確認送出" class="btn btn-success" />
						<s:reset value="清空資料" class="btn" />
					</s:form>
					<span class="badge">已註冊? <a href="/login">登入</a></span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>