
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>
<%@page import="register.registerdata"%>
<%@page import="register.missing"%>

<%    
    ArrayList<missing> list = null;
    try {
        list = registerdata.getStudentList();
    } catch (SQLException ex) {
        out.println(ex); return;
    }

%>


<html>
	<head>
	<style>
	body {
		border:0px;
		margin:0px;
		background:rgba(0,0,0,0.3);
	}
	.missing-details {
		width:1000px;
		height:800px;
		background:#fff;
		border:1px solid black;
		margin:50px 180px;
		
	}
	.mis-container {
		width:80%;
		margin:0px 100px;
	}
	.missing-details h4 {
		margin:12px;
		padding:0px;
		font-family:Myriad Pro Light;
		font-size:25px;
		
	}
	.missing-image {
		border:px solid red;
		width:240px;
		text-align:center;
	}
	.missing-image img {
		height:150px;
		width:150px;
		padding:18px 30px;
	}
	.missing-image h3 {
		font-family:Segoe UI Semibold;
		font-size:25px;
		letter-spacing:1px;
		margin:0px 20px;
	}
	.missing-info {
		width:100%;
		border:px solid red;
		height:500px;
	}
	.row-data {
		font-family:tahima,verdana;
		font-weight:bold;
		font-size:15px;	
		margin:60px 50px;
		padding:0px;
	}
	.personal-details {
		width:100%;
		height:300px;
                margin:80px 0px;
		border:px solid red;
	}
	.personal-row {
		height:30px;
		width:100%;
		color:white;
		background:#10346D;
	}
	.personal-row h5 {
		padding:0px 20px;
		line-height:30px;
		font-size:15px;
		font-family:Segoe UI Light;
	}
	table {
		width:100%;
		background:#E5E7EA;
		table-collapse:collapse;
	}
	table, th, td {
		border:px solid black;
		
	}
	th,td {
		padding:8px;
		text-align:left;
		border-bottom:1px solid silver;
		font-family:Segoe UI;
		font-size:13px;
		padding:7px;
	}
	</style>
	</head>
	
	<body>
		<% for(missing m : list) {%>
                        <div class="missing-details">
				<div class="mis-container">
					<h4>Missing </h4>
					<div style="width:500px;height:25px;color:white;font-weight:bold;line-height:25px;padding:0px 30px;background:forestgreen;font-family:Segoe UI;">
					   <span>Pleaze bring me home</span>
					</div>
						<div class="missing-image">
							<img src="assets/images/d1.jpg">
							 <h3>Ramu Shimpu</h3>
						</div>  
						<div class="personal-details">
							  <div class="personal-row">
									<h5>Personal Details</h5>
							  </div>
								<div class="M-details">
									<table>
                                                                            
										<tr>
											<th>First Name <td><%=m.getFirst_name()%> </td></th>
											<th>Father Name <td><%=m.getFather_name()%></td></th>
										</tr>
										<tr>
											<th>Last Name <td><%=m.getLast_name()%> </td></th>
											<th>Gender <td><%=m.getGender()%> </td></th>
										</tr>
										<tr>
											<th>Mobile No. <td><%=m.getMobile_no()%> </td></th>
											<th>Date of Birth <td><%=m.getBirth()%> </td></th>
										</tr>	
										<tr>
											<th>Missing From <td><%=m.getMissing_form()%> </td></th>
											<th>Missing Date  <td><%=m.getMissing_date()%></td></th>
										</tr>
										<tr>
											<th>City <td><%=m.getCity()%> </td></th>
										</tr>
									</table>
								</div>
									<div class="personal-row">
										<h5>Physical Feature</h5>
									</div>
									<div class="M-details">
									<table>
										<tr>
											<th>Approx. Height<td> <%=m.getHeight()%> </td></th>
											<th>Hair <td><%=m.getHair()%></td></th>
										</tr>
										<tr>
											<th>Face<td><%=m.getFace()%> </td></th>
											<th>Identification marks<td> <%=m.getMarks()%> </td></th>
										</tr>
										<tr>
											<th>Physical Health <td><%=m.getHealth()%></td></th>
										
										</tr>
                                                                              
                                                                            
                                                                             
										</table>
								    </div>
						</div>
				</div>
			</div>
                                                                                          <% 
                                                                                    }
                                                                               %>
	</body>
</html>