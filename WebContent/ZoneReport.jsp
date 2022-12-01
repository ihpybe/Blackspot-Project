<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import = "java.sql.* " %>  
  <%@ page import = "com.sneha.* " %>
<!DOCTYPE html>
<head>
<title>View Black Spots | Tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/screenfull.js"></script>
<script>
	$(function () {
		$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

		if (!screenfull.enabled) {
			return false;
		}

		$('#toggle').click(function () {
			screenfull.toggle($('#container')[0]);
		});	
	});
</script>
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
</head>
<body class="dashboard-page">

	<nav class="main-menu">
		<ul>
			
				
					
			
			
			<li>
				<a href="Addspots.html">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					Add Black Spots
					</span>
				</a>
			</li>
			
			<li>
				<a href="viewSpots.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
					<span class="nav-text">
					View &Delete Spots
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				Generate Report
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="ZoneWise.jsp">Zone Wise</a>
					</li>
					<li>
						<a class="subnav-text" href="ReasonWise.jsp">Reason Wise</a>
					</li>
					<li>
						<a class="subnav-text" href="CityWise.jsp">City Wise</a>
					</li>
				</ul>
			</li>
			<!--  <li>
				<a href="deleteSpots.jsp">
					<i class="fa fa-file-text-o nav_icon"></i>
					<span class="nav-text">
					Delete Spots
					</span>
				</a>
			</li>-->
			
			
		<ul class="logout">
			<li>
			<a href="Stationlogin.html">
			<i class="icon-off nav-icon"></i>
			<span class="nav-text">
			Logout
			</span>
			</a>
			</li>
		</ul>
		</ul>
	</nav>
	<section class="wrapper scrollable">
		<nav class="user-menu">
			<a href="javascript:;" class="main-menu-access">
			<i class="icon-proton-logo"></i>
			<i class="icon-reorder"></i>
			</a>
		</nav>
		<section class="title-bar">
			<div class="logo">
				<h1><a href="index.html">Black Spot Detection</a></h1>
			</div>
			<!--  <div class="full-screen">
				<section class="full-top">
					<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
				</section>
			</div>-->
			<div class="w3l_search">
				<form action="Addblackspot" method="post">
					<!--  <input type="text" name="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
					<button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>-->
				</form>
			</div>
			<div class="header-right">
				<div class="profile_details_left">
					<div class="header-right-left">
						<!--notifications of menu start -->
						<ul class="nofitications-dropdown">
							
							
								
							<div class="clearfix"> </div>
						</ul>
					</div>	
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<!--<div class="profile_img">	
										<span class="prfil-img"><i class="fa fa-user" aria-hidden="true"></i></span> 
										<div class="clearfix"></div>	
									</div>-->	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
									<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</section>
		<div class="main-grid">
			<div class="agile-grids">	
				<!-- tables -->
				
				<div class="table-heading">
					<h2>VIEW ALL SPOTS</h2>
				</div>
				<div class="agile-tables">
					<div class="w3l-table-info">
					  
					    <table id="table">
						<thead>
						  <tr>
						  
							<th>Location</th>
							<th>Address</th>
							<th>Reason</th>
							<th>Latitude </th>
							<th>Longitude</th>
							<th>Level</th>
							<th>City</th>
							<!-- <th>Type</th>
							<th>Action</th>-->
							
						  </tr>
						<!--  </thead>-->
						
						<% 
//String StationName = request.getParameter("StationName");
Connection conn = connectDB.connect();
String id = request.getParameter("Level");
try
{
	PreparedStatement ps= conn.prepareStatement("select * from blackspots where Level=?  ");
	ps.setString(1,id);
	ResultSet rs1 = ps.executeQuery();
	while(rs1.next())
	{
%><tbody>

<tr class="warning">

	<td><%=rs1.getString("Location") %>	</td>
    <td><%=rs1.getString("Address") %>	</td>	
	<td><%=rs1.getString("Reason") %>	</td>
	<td><%=rs1.getString("Latitude") %>	</td>
	<td><%=rs1.getString("Longitude") %>	</td> 
	<td><%=rs1.getString("Level") %>	</td>
	<td><%=rs1.getString("City") %>	</td>
	
 	
	 <!--   <td><a href="deleteSpots.jsp?id=<%=rs1.getString("Location")%>">Delete</a></td>-->
	</tr>
	
	</tbody>
	<% 
	
  

	}
}
catch(Exception e)
{
	e.printStackTrace();
}
	
%>
	</thead>
							
	</table>   	
						
					</div>
				  
			
				
				  
				 
				</div>
				<!-- //tables -->
			</div>
		</div>
		<!-- footer -->
		<div class="footer">
			<!--  <p>© 2022 Colored . All Rights Reserved . Design by <a href="RCPIT">SnehaGirase</a></p>-->
		</div>
		<!-- //footer -->
	</section>
	<script src="js/bootstrap.js"></script>
	<script src="js/proton.js"></script>
</body>
</html>
