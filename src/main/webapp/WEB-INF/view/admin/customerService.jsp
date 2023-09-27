<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.ctextbox
{
	background-color:#C1C1C1;
}
.btn-lableinfo {
    color: #fff;
    background-color: #5B9BD5;
    border-color: #5B9BD5;
}
.lbl-lableinfo {
    color: #fff;
    background-color: #5B9BD5;
    border-color: #5B9BD5;
}
.btn-titlelableinfo {
    color: #292424;
    background-color: #F0AD4E;
    border-color: #F0AD4E;
    padding: 6px 35px;
}
.table-bordered {
    border: 1px solid #28137B;
}
.table-bordered>tfoot>tr>td {
    border: 1px solid #ddd;
}
tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
.table-striped>tbody>tr:nth-child(odd)>td, .table-striped>tbody>tr:nth-child(odd)>th {
    background-color: #CFDEEA;
}

.table-striped>tbody>tr:nth-child(even)>td, .table-striped>tbody>tr:nth-child(even)>th {
    background-color: rgb(232, 241, 249);;
}
.table-bordered>tbody>tr>td, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>td, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>thead>tr>th {
    border: 2px solid #FFF;
}
</style>

<c:if test="${not empty param.s}">
	<div class="alert alert-success fade in" id="divSuccess">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <strong>Success!</strong> Service order Request has been ${param.q }ed successfully.
</div>
</c:if>
<!-- row  -->
 <form action="searchServiceRequestId.htm" method="get" enctype="multipart/form-data">
   <div class="row">
   
   
   <div class="col-xs-8 col-md-8" align="center">
        <div class="form-group">
           <button type="button" class="btn btn-lableinfo btn-pressure btn-sensitive">&nbsp;&nbsp;&nbsp;Vehicle Service Request&nbsp;&nbsp;&nbsp;</button> 
         </div>
                          
    </div>
                    
   </div>
   
    <div class="row">
   
   
   <div class="col-xs-8 col-md-8" align="center">
        <div class="form-group">
         
                   <input type="text" name="customerId" id="customerId" placeholder="Request Id"> 
                   
                 <button type="submit" class="btn btn-lableinfo btn-pressure btn-sensitive">Search</button>
         </div>
                          
    </div>
                    
   </div>
   
   </form>
   <!-- end row -->
   <c:if test="${requestScope.orders ne null}">
   <!-- row  -->
   <div class="row">
        <div class="col-md-9">
   <div id="no-more-tables">
            <table class="col-md-9 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
        				<th class="lbl-lableinfo" align="center">&nbsp;&nbsp;&nbsp;NO.</th>
        				
        				<th class="lbl-lableinfo" >Ordered Date</th>
        				<th class="lbl-lableinfo" >Status </th>
        				<th class="lbl-lableinfo" >Request Id </th>
        				<th class="lbl-lableinfo" >View</th>
        				
        			</tr>
        		</thead>
        		<tbody>
        		<c:forEach items="${requestScope.orders}" var="order" varStatus="st">
        			<tr>
        				<td>
        					${st.count }
        				</td>
        				
        				
        				<td>
        					${order.createdOn }
        				</td>
        				<td>
        					${order.status }
        				</td>
        				<td>
        					${order.vehicleSeviceRequestId }
        				</td>
        				<td>
        					<a href="viewvehicleservice.htm?i=${order.vehicleSeviceRequestId }">View</a>
        				</td>
        			</tr>
        			
        			
        		
        		</c:forEach>
        			
        		</tbody>
        	</table>
        </div>
        </div>
        </div>
        <!-- end row  -->
        </c:if>