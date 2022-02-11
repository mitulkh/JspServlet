<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="content-type" content="text/html" charset="ISO-8859-1">
		<title>Employee Registration Form</title>
		<link rel="stylesheet" href="style.css">
	</head>

	<body>
		<div class="signup-root">
			<div class="box-root flex-flex flex-direction--column"
				style="min-height: 100vh; flex-grow: 1;">
				<div class="signupbackground box-background--white padding-top--64">
					<div class="signupbackground-gridContainer">
						<div class="box-root flex-flex" style="grid-area: top/start/8/end;">
							<div class="box-root"
								style="background-image: linear-gradient(white 0%, rgb(247, 250, 252) 33%); flex-grow: 1;">
							</div>
						</div>

					<div class="box-root flex-flex" style="grid-area: 4/2/auto/5;">
						<div
							class="box-root box-divider--light-all-2 animationLeftRight tans3s"
							style="flex-grow: 1;">
						</div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 6/start/auto/2;">
						<div class="box-root box-background--blue800"
							style="flex-grow: 1;">
						</div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 7/start/auto/4;">
						<div class="box-root box-background--blue animationLeftRight"
							style="flex-grow: 1;">
						</div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 8/4/auto/6;">
						<div
							class="box-root box-background--gray100 animationLeftRight tans3s"
							style="flex-grow: 1;">
						</div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 2/15/auto/end;">
						<div
							class="box-root box-background--cyan200 animationRightLeft tans4s"
							style="flex-grow: 1;">
						</div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 3/14/auto/end;">
						<div class="box-root box-background--blue animationRightLeft"
							style="flex-grow: 1;"></div>
					</div>

					<div class="box-root flex-flex" style="grid-area: 4/17/auto/20;">
						<div
							class="box-root box-background--gray100 animationRightLeft tans4s"
							style="flex-grow: 1;"></div>
					</div>
					<div class="box-root flex-flex" style="grid-area: 5/14/auto/17;">
						<div
							class="box-root box-divider--light-all-2 animationRightLeft tans3s"
							style="flex-grow: 1;"></div>
					</div>
				</div>
			</div>

			<div class="box-root padding-top--24 flex-flex flex-direction--column"
				 style="flex-grow: 1; z-index: 9;">

				<div class="box-root padding-top--48 padding-bottom--24 flex-flex flex-justifyContent--center">
					<h1><a href="http://blog.stackfindover.com/" rel="dofollow">Registration Form</a></h1>
				</div>

				<div class="formbg-outer">
					<div class="formbg">
						<div class="formbg-inner padding-horizontal--48">
							<span class="padding-bottom--15">Sign Up</span>
							<form id="stripe-login" action="<%=request.getContextPath()%>/register" method="post">

							<div class="field padding-bottom--24">
								<label class="required">First Name</label> 
								<input type="text" oninput="this.value=this.value.replace(/[^a-z^A-Z]/g,'');"
										name="firstname" required>
							</div>

							<div class="field padding-bottom--24">
								<label class="required">Last Name</label> 
								<input type="text" oninput="this.value=this.value.replace(/[^a-z^A-Z]/g,'');"
										name="lastname" required>
							</div>

							<div class="field padding-bottom--24">
								<label class="required">User Name</label> 
								<input type="text" name="username" required>
							</div>

							<div class="field padding-bottom--24">
								<label class="required">Password</label> 
								<input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
									title="Must contain at least one digit and one uppercase and lowercase letter, and at least 8 or more characters"
									required>
							</div>

							<div class="field padding-bottom--24">
									<label class="required">Address</label> 
									<input type="text" name="address" required>
							</div>

							<div class="field padding-bottom--24">
									<label class="required">Contact No</label> 
									<input type="text" oninput="this.value=this.value.replace(/[^0-9]/g,'');"
										name="contactno" maxlength="10" pattern="[789][0-9]{9}"
										title="Start with '7/8/9' and number length should be 10" required>
							</div>

							<div class="field padding-bottom--24">
									<input type="submit" name="submit" value="Submit">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>

</html>
