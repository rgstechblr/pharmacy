 <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top " role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <span class="pull-left lang_conv" >
                  <button class="btn btn-warning">Pharmacy</button>
                  <button class="btn btn-success">Management System</button>
                </span>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand mob_logo" href="">
                    <span>
                        <b style="font-weight:bold;font-size:30px;color:red"></b>
                        <b style="font-weight:bold;font-size:30px;color:#000"></b> 
                    <span>
                </a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav hide-on-mobile">
                 <li>
                    <a class="page-scroll" href="login.htm">Home&nbsp;&nbsp;&nbsp;<font color="white">|</font></a>
                    
                </li>
               <li>
                <li>
                    <a class="page-scroll" href="#">About Us&nbsp;&nbsp;&nbsp;<font color="white">|</font></a>
                </li>
                <li>
                    <a class="page-scroll" href="#">Site Map&nbsp;&nbsp;&nbsp;<font color="white">|</font></a>
                </li>
                <li>
                    <a class="page-scroll" href="#" style="border:none;">Contact</a>
                </li> 
                <!--  
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Home <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="page-scroll" href="#">About Us</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="page-scroll" href="#">Site Map</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="page-scroll" href="#" style="border:none;">Contact</a>
                        </li>
                    </ul>
                </li>
                -->
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav" style="height:450px;background-color:#C1C1C1;padding-top:40px;margin-top:80px;">
                    <li class="active">
                        <a href="adminhome.htm"><i class="fa fa-fw fa-dashboard"></i> Home</a>
                    </li>
                    <li>
                        <a href="addmed.htm"><i class="fa fa-fw fa-bar-chart-o"></i>Add Medicine</a>
                    </li>
                     <li>
                        <a href="viewmed.htm"><i class="fa fa-fw fa-bar-chart-o"></i>Display Medicine</a>
                    </li>
                    <li>
                        <a href="bill.htm"><i class="fa fa-fw fa-bar-chart-o"></i>Bill Generate</a>
                    </li>
                    <li>
                        <a href="createAd.htm"><i class="fa fa-fw fa-bar-chart-o"></i> Create Ad</a>
                    </li>
                   <!--  <li>
                        <a href="createmachinebarcode.htm"><i class="fa fa-fw fa-bar-chart-o"></i> Create MachineBarcode</a>
                    </li> -->
                  <!--   <li>
                        <a href="createlock.htm"><i class="fa fa-fw fa-table"></i>Create Lock</a>
                    </li> -->
                     <!-- <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-bar-chart-o"></i> Create Account</a>
                         <ul class="dropdown-menu">
                         <li>
                        	<a href="createaccount.htm?u=Controller"><i class="fa fa-fw fa-bar-chart-o"></i> Create Controller</a>
                        </li>
                        <li>
                        	<a href="createaccount.htm?u=Support"><i class="fa fa-fw fa-bar-chart-o"></i> Create Support</a>
                        </li>
                        <li>
                        	<a href="createaccount.htm?u=Calling Centre"><i class="fa fa-fw fa-bar-chart-o"></i> Create Calling Center</a>
                        </li>
                        
                        </ul>
                    </li> -->
                    <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-bar-chart-o"></i> Vehicle Service</a>
                         <ul class="dropdown-menu">
                         
                       
                        <li>
                        	<a href="customerVehicleService.htm?q=Pending"><i class="fa fa-fw fa-bar-chart-o"></i> Vehicle Maintennance</a>
                        	
                        </li> 
                       <li>
                        	<a href="customerRtoService.htm?q=Pending"><i class="fa fa-fw fa-bar-chart-o"></i> RTO Service</a>
                        	
                        </li> 
                     <!--    <li>
                        	<a href="agencyorders.htm?q=Pending"><i class="fa fa-fw fa-bar-chart-o"></i> Agency Order Request Forms</a>
                        	
                        </li>  -->
                        
                        
                        </ul>
                    </li>
                    <li>
                        <a href="signout.htm"><i class="fa fa-fw fa-desktop"></i>Signout</a>
                    </li>
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <div style="background-color: #FFFFFF;width:100%;height:20px">
               
            </div>
             <div style="background-color:#5B9BD5;width:100%;height:25px">
             <!-- row  -->
   <div class="row">
  
   <div class="col-xs-2 col-md-2 hide-on-mobile" align="center">
    <font color="#FFFFFF"><strong>ID:${sessionScope.userRole.userId }</strong></font>
   </div>
   <div class="col-xs-1 col-md-1 hide-on-mobile" style="border:1px solid #FFFFFF;background-color:#000000;width:2px;height:25px">
    
   </div>
    <div class="col-xs-2 col-md-2" align="center">
     
      <a href="profile.htm?cid=${sessionScope.userRole.customerId}&uid=${sessionScope.userRole.userRoleId}"><font color="red"><strong>Account</strong></font></a>
   </div>
   <div class="col-xs-1 col-md-1" style="border:1px solid #FFFFFF;background-color:#000000;width:2px;height:25px">
    
                       
   </div>
   <!-- end row -->
               
            </div>
            
        </nav>
        
        
      <%--   
        <br/><br/><br/><br/><br/><br/><br/>
      <div class="container-fluid">  
        <!-- row  -->
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Full&nbsp;Name</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.fullName }
         </div>
                          
    </div>
                    
   </div>
   <!-- end row -->
   <!-- row  -->
   <div class="row">
   
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Email&nbsp;Id</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.email }
         </div>
                          
    </div>
                    
   </div>
   <!-- end row -->
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Mobile Number</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.mobileNo }
         </div>
                          
    </div>
                    
   </div>
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Nationality</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.nationality }
         </div>
                          
    </div>
                    
   </div>
   <!-- image code start heare -->
    <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label">PhotoId</label>
   </div>
   <div class="col-xs-5 col-md-6">
            <div class="form-group">
        <img alt="" src="../uploads/${requestScope.customer.idProofFileName }" height="100" width="100">
         </div>
                       
    </div>
                    
   </div>
   
   
   <!--image code end heare  -->
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Date&nbsp;Birth</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.dateOfBirth }
         </div>
                          
    </div>
                    
   </div>
   
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Gender</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.gender }
         </div>
                          
    </div>
                    
   </div>
   <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label"> Created Date</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
         ${requestScope.customer.createdOn }
         </div>
                          
    </div>
                    
   </div>
   
    <div class="row">
      <div class="col-xs-5 col-md-2" align="right">
  
   </div>
         <div class="col-xs-5 col-md-6">
        <div class="form-group">
       <a href="changeprofile.htm?cid=${sessionScope.userRole.customerId}&uid=${sessionScope.userRole.userRoleId}"><font color="red"><strong>Change Profile</strong></font></a>
         </div>
                          
    </div>              
   </div>
   </div> --%>