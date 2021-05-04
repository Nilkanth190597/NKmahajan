<%@page import="register.registerdata"%>
<%@page import="register.register"%>
<%    String btn = request.getParameter("btn");
    

    if (btn != null && btn.equals("Save")) {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
       String father_name = request.getParameter("father_name");
        String district = request.getParameter("district");
        String state = request.getParameter("state");
        String gmail = request.getParameter("gmail");
         String password = request.getParameter("password");
       String conform_password = request.getParameter("conform_password");
       int mobile_no = Integer.parseInt(request.getParameter("mobile_no"));
       int pincode = Integer.parseInt(request.getParameter("pincode"));
       int date = Integer.parseInt(request.getParameter("date"));
       
        register s = new register(first_name,last_name,father_name,district,state,gmail,password,conform_password,mobile_no,pincode,date);

        int n = registerdata.addstudent(s);
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
	   body {
	        margin:0px;
		    padding:0px;
			background-color: #cccccc;
	        background-image: url("assets/images/pulice.jpg");
            background-color: #cccccc;
			background-attachment:fixed;
			background-repeat:no-repeat;
			background-size:100% 100%;

	   }
		.sign_Up {
		   width:100%;
		   background:rgba(0,0,0,0.6);
		   height:100%;
		}
	    .signup_container {
			background:white;
			width:70%;
			height:600px;
			top:50%;
            left:50%;
			overflow:scroll;
			position:absolute;
			transform:translate(-50%,-50%);
			
			border:1px solid black;
			
		}
		.sign-contain {
		    position:relative;
			margin:-15px 15px;
		    border:px solid red;
			font-size:18px; 
			font-family:Segoe UI Light;
			font-weight:Bold;
		}
		.form-input {
		    border:px solid red;
			padding:12px 20px;
			text-transform:uppercase;
		}
		.form-contain {
			width:auto;
		    margin:50px 0px;
		}
		.form-Contain {
			float:left;
			width:auto;
			margin:50px 64px;
		}
		.form-input {
			margin-bottom: 3px; 
		}

		label, input {
		  display: block;
		}

		label {
		  font-weight: bold;
		  font-size:15px;
		  font-family:Segoe UI;
		  text-transform: uppercase;
		  margin-bottom: 7px;
     	}

		label.required {
		  position: relative; }
		  label.required:after {
			content: '*';
			margin-left: 8px;
			color: #b90000; }

		input {
		  box-sizing: border-box;
		  width:300px;
		  font-family:Myriad Pro Light,Arial;
		  text-transform:uppercase;
		  border: 1px solid #ebebeb;
		  padding: 14px 20px;
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
			background-color: #267747; }


	  </style>
   
   </head>
   <body>
   <div class="sign_Up">
			<div class="signup_container">
			           <div class="sign-contain">
					       <h4>Registration </h4>
					   </div>
					   <div style="background:green;height:20px;width:70%;">
					 
					   </div>
				    <form method="POST">
						<div class="form-contain">
							<div class="form-input">
                                    <label for="Fisrt_Name" class="required">Fisrt Name</label>
                                    <input type="text" name="first_name" id="Fisrt_Name" />
							</div>
							<div class="form-input">
                                    <label for="Last_Name" class="required">Last Name</label>
                                    <input type="text" name="last_name" id="Last_Name" />
							</div>
							<div class="form-input">
                                    <label for="Father_Name" class="required">Father Name</label>
                                    <input type="text" name="father_name" id="Father_Name" />
							</div>
							<div class="form-input">
                                    <label for="Mobile_no" class="required">Mobile No.</label>
                                    <input type="text" name="mobile_no" id="Mobile_no" />
							</div>
							<div class="form-input">
                                    <label for="District" class="required">District</label>
                                    <input type="text" name="district" id="District"/>
							</div>
							<div class="form-input">
                                    <label for="pincode" class="required">Pin Code</label>
                                    <input type="text" name="pincode" id="pincode"/>
							</div>
							
						</div>
						<div class="form-Contain">
							<div class="form-input">
                                    <label for="Id" class="required">Email</label>
                                    <input type="text" name="gmail" id="Id" />
							</div>
							<div class="form-input">
                                    <label for="Password" class="required">Password</label>
                                    <input type="text" name="password" id="Password" />
							</div>
							<div class="form-input">
                                    <label for="conform-Password" class="required">Conform Password</label>
                                    <input type="text" name="conform_password" id="conform-Password" />
							</div>
							<div class="form-input">
                                    <label for="state" class="required">state</label>
                                    <input type="text" name="state" id="state" />
							</div>
							<div class="form-input">
                                    <label for="date" class="required">Date</label>
                                    <input type="text" name="date" id="date" />
							</div>
						</div>
									<div class="form-submit">
										<input type="submit" value="Save" name="btn" class="submit" id="submit"  />
										<input type="submit" value="Reset" class="submit" id="reset" name="reset" />
									</div>
					</form>
			</div>
		</div>
   </body>
</html>