<%@page import="register.registerdata"%>
<%@page import="register.missing"%>
<%    String btn = request.getParameter("btn");
    

    if (btn != null && btn.equals("Save")) {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
       String father_name = request.getParameter("father_name");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String missing_from = request.getParameter("missing_from");
        String face  = request.getParameter("face");
        String hair = request.getParameter("hair");
        String health = request.getParameter("health");
        String marks = request.getParameter("marks");
        int mobile_no = Integer.parseInt(request.getParameter("mobile_no"));
       int birth = Integer.parseInt(request.getParameter("birth"));
       int missing_date = Integer.parseInt(request.getParameter("missing_date"));
       int height = Integer.parseInt(request.getParameter("height"));
       
        missing m = new missing(first_name,last_name,father_name,birth,city,mobile_no,gender,missing_from,missing_date,height,marks,face,hair,health);

        int n = registerdata.missingadd(m);
        if (n == 0) {
             out.println("Record not Saved");

        } else {
            out.println("Record Saved");
        }
    }


%>


<html>
	<head>
		<style>
		
			.complaint-container {
				
			}
			
		.form-input {
		    border:px solid red;
			padding:8px 16px;
			text-transform:uppercase;
		}
		.form-contain {
			width:auto;
		    margin:50px 0px;
		}
		
		.form-input {
			margin-bottom: 3px; 
		}

		label, input {
		  display: block;
		}

		label {
		  font-weight: bold;
		  font-size:13px;
		  font-family:Segoe UI;
		  text-transform: uppercase;
		  margin-bottom: 4px;
     	}

		label.required {
		  position: relative; }
		  label.required:after {
			content: '*';
			margin-left: 8px;
			color: #b90000; }

		input {
		  box-sizing: border-box;
		  width:280px;
		  font-family:Myriad Pro Light,Arial;
		  text-transform:uppercase;
		  border: 1px solid #ebebeb;
		  padding: 10px 24px;
		  border-radius: 5px;
		  -moz-border-radius: 5px;
		  -webkit-border-radius: 5px;
		  -o-border-radius: 5px;
		  -ms-border-radius: 5px;
		  font-size: 14px;
		  outline:none;
		  font-family: 'Poppins'; 
		  }
		  input:focus {
			border: 1px solid #329e5e;
			
			}
		.form-submit {
		text-align: center; 
		
		}

		.submit {
		  width: 100px;
		  height: 40px;
		  display: inline-block;
		  font-family: 'Poppins';
		  font-weight: bold;
		  font-size: 12px;
		  padding: 8px;
		  border: none;
		  cursor: pointer;
		  text-transform: uppercase;
		  border-radius: 5px;
		  -moz-border-radius: 5px;
		  -webkit-border-radius: 5px;
		  -o-border-radius: 5px;
		  -ms-border-radius: 5px; }

		#reset {
		  background: #fff;
		  color: #999;
		  border: 2px solid #ebebeb; }
		  #reset:hover {
			border: 2px solid #329e5e;
			background: #329e5e;
			color: #fff; }

		#submit {
		  background: #329e5e;
		  color: #fff;
		  margin-right: 25px; }
		  #submit:hover {
			background-color: #267747; 
			}
			.Personal_details {
				width:100%;
				height:480px;
				font-family:Myriad Pro Light;
				font-size:20px;
				
			}
			.physical_details {
			
			width:100%;
				height:350px;
				font-family:Myriad Pro Light;
				font-size:20px;
				
			}
			.left-side {
				
				width:40%;
				padding:0px 20px;
				margin:0px 180px;
				float:left;
			}
			.right-side {
				
				width:40%;
				margin:0px -150px;
				float:left;
			}
			.title-bar {
				width:100%;
				height:100px;	
				background:rgba(0,0,0,0.7);
			}
			.title-bar h4 {
				text-align:center;
				color:white;
				font-family:Myriad Pro Light,Arial;
				line-height:100px;
				font-size:25px;
			}
			.submit {
		  width: 100px;
		  height: 40px;
		  display: inline-block;
		  font-family: 'Poppins';
		  font-weight: bold;
		  font-size: 12px;
		  padding: 8px;
		  border: none;
		  cursor: pointer;
		  text-transform: uppercase;
		  border-radius: 5px;
		  -moz-border-radius: 5px;
		  -webkit-border-radius: 5px;
		  -o-border-radius: 5px;
		  -ms-border-radius: 5px; }

		#reset {
		  background: #fff;
		  color: #999;
		  border: 2px solid #ebebeb; }
		  #reset:hover {
			border: 2px solid #329e5e;
			background: #329e5e;
			color: #fff; }

		#submit {
		  background: #329e5e;
		  color: #fff;
		  margin-right: 25px; }
		  #submit:hover {
			background-color: #267747; }

		</style>
	</head>
	
	<body>
	<div class="title-bar">
			<h4>Complaint Form</h4>
	</diV>
		<div class="complaint-container">
			
			<div class="form-contain">
				<div class="Personal_details">
					<div style="margin:0px 100px;">
							<h4>Personal Deatails</h4>
					</div>
                                    <form method="POST">
						<div class="left-side">
							<div class="form-input">
                                    <label for="first_name" class="required">First Name</label>
                                    <input type="text" name="first_name" id="fisrt_name" />
							</div>
							<div class="form-input">
                                    <label for="last_name" class="required">Last Name</label>
                                    <input type="text" name="last_name" id="last_name" />
							</div>
							<div class="form-input">
                                    <label for="father_name" class="required">Father Name</label>
                                    <input type="text" name="father_name" id="father_name" />
							</div>
							
							<div class="form-input">
                                    <label for="birth" class="required">Date Of Birth</label>
                                    <input type="text" name="birth" id="birth" />
							</div>
							<div class="form-input">
                                    <label for="city" class="required">City</label>
                                    <input type="text" name="city" id="city" />
							</div>
						</div>
						<div class="right-side">
							<div class="form-input">
                                    <label for="mobile_no" class="required">Mobile No</label>
                                    <input type="text" name="mobile_no" id="mobile_no" />
							</div>
							<div class="form-input">
                                    <label for="gender" class="required">Gender</label>
                                    <input type="text" name="gender" id="gender" />
							</div>
							
							<div class="form-input">
                                    <label for="missing_from" class="required">Missing From</label>
                                    <input type="text" name="missing_from" id="missing_from" />
							</div>
							<div class="form-input">
                                    <label for="missing_date" class="required">Missing Date</label>
                                    <input type="text" name="missing_date" id="missing_date" />
							</div>
						</div>
				</div>
								<!---- physical------->
				<div class="physical_details">
					<div style="margin:0px 100px;">
							<h4>Physical Deatails</h4>
					</div>
				<div class="left-side">
							<div class="form-input">
                                    <label for="height" class="required">Approx. Height</label>
                                    <input type="text" name="height" id="height" />
							</div>
							<div class="form-input">
                                    <label for="marks" class="required">Identification Marks</label>
                                    <input type="text" name="marks" id="marks" />
							</div>
							<div class="form-input">
                                    <label for="hair" class="required">Hair</label>
                                    <input type="text" name="hair" id="hair" />
							</div>
							
						</div>
						<div class="right-side">
							<div class="form-input">
                                    <label for="health" class="required">Physical Health</label>
                                    <input type="text" name="health" id="health" />
							</div>
							<div class="form-input">
                                    <label for="face" class="required">Face</label>
                                    <input type="text" name="face" id="face" />
							</div>
						</div>	
				</div>
									<div class="form-submit">
										<input type="submit" value="Save" name="btn" class="submit" id="submit"  />
										<input type="submit" value="Reset" class="submit" id="reset" name="reset" />
									</div>
			</form>
		<!--------///////////////---------->
			</div>
		</div>	
	</body>
</html>
