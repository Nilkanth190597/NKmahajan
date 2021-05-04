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
			.compaint_form {
				width:100%;
				height:600px;
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
			textarea {
			
				height:100px;
				width:300px;
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
				<div class="compaint_form">
					
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
                                    <label for="address" class="required">Address</label>
                                    <input type="text" name="address" id="address" />
							</div>
							<div class="form-input">
                                    <label for="mobile_no" class="required">Mobile No.</label>
                                    <input type="text" name="mobile_no" id="mobile_no" />
							</div>
							<div class="form-input">
                                    <label for="crime_date" class="required">Date Of Crime</label>
                                    <input type="text" name="crime_date" id="crime_date" />
							</div>
							<div class="form-input">
                                    <label for="crime_location" class="required">Crime Location</label>
                                    <input type="text" name="crime_location" id="crime_location" />
							</div>
						</div>
						<div class="right-side">
							<div class="form-input">
                                    <label for="gmail" >Email</label>
                                    <input type="text" name="gmail" id="gmail" />
							</div>
							<div class="form-input">
                                    <label for="gender" class="required">Gender</label>
                                    <input type="text" name="gender" id="gender" />
							</div>
							<div class="form-input">
                                    <label for="complaint_type" class="required">Complaint Type</label>
                                    <input type="text" name="complaint_type" id="complaint_type" />
							</div>
							<div class="form-input">
                                    <label for="station" class="required">Near By Station</label>
                                    <input type="text" name="station" id="station" />
							</div>
							<div class="form-input">
                                    <label for="discription" class="required">Complaint Discription</label>
                                    <textarea type="textarea" name="discription" id="discription" /></textarea>
							</div>
							<div class="form-input">
                                    <label for="evidence" >Upload Evidence,If Any</label>
                                    <input type="file" name="evidence" id="evidence" /></input>
							</div>
					   		
					
									<div style="margin-top:40px;" class="form-submit">
										<input type="submit" value="Submit" class="submit" id="submit" name="submit" />
										<input type="submit" value="Reset" class="submit" id="reset" name="reset" />
									</div>		
					
			
			</form>
		<!--------///////////////---------->
				
			</div>
		</div>	
	</body>
</html>
