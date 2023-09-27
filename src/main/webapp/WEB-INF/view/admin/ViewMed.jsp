<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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



   <!-- end row -->
   <c:if test="${requestScope.viewmed ne null}">
   <!-- row  -->
   <div class="row">
   
   
   <div class="col-xs-8 col-md-8" align="center">
        <div class="form-group">
           <button type="button" class="btn btn-lableinfo btn-pressure btn-sensitive">&nbsp;&nbsp;&nbsp; Medicine List &nbsp;&nbsp;&nbsp;</button> 
         </div>
                          
    </div>
                    
   </div>
   <!-- row  -->
   <div class="row">
        <div class="card-body">
   <div id="no-more-tables">
            <table class="col-md-9 table-bordered table-striped table-condensed cf">
        		<thead class="cf">
        			<tr>
        				<!-- <th class="lbl-lableinfo" align="center">&nbsp;&nbsp;&nbsp;NO.</th>-->
        				
        				<th class="lbl-lableinfo" >Product Id</th>
        				<th class="lbl-lableinfo" >Product Name</th>
        				<th class="lbl-lableinfo" >Category</th>
        				<th class="lbl-lableinfo" >Company</th>
        				<th class="lbl-lableinfo" >Quantity</th>
        				<th class="lbl-lableinfo" >Purchase Date</th>
        				<th class="lbl-lableinfo" >Expiry Date </th>
        				<th class="lbl-lableinfo" >Manufacture Date </th>
        				 <th class="lbl-lableinfo" >Supplier</th>
        				<th class="lbl-lableinfo" >MRP</th>
        				<th class="lbl-lableinfo" >Selling Rate</th>
        				<th class="lbl-lableinfo" >Discount</th>
<!--         				<th class="lbl-lableinfo" >Description</th>
 -->        			</tr>
        		</thead>
        		<tbody>
        		<c:forEach items="${viewmed}" var="med">
        			<tr>
        				<td>
        					${med.prodid}
        				</td>
        				
        				
        				<td>
        					${med.prodname}
        				</td>
        				        			
        				
        				<td>
        					${med.category}
        				</td>
        				<td>
        					${med.company}
        				</td>
        				<td>
        					${med.quantity}
        				</td>
        				<td>
        					${med.pdate }
        				</td>
        				<td>
        					${med.expd}
        				</td>
        				<td>
        					${med.mfd}
        				</td>
        				<td>
        					${med.supplier }
        				</td>
        				<td>
        					${med.mrp}
        				</td>
        				<td>
        					${med.sell}
        				</td>
        				<td>
        					${med.discount }
        				</td>
        				<%-- <td>
        					${med.description}
        				</td> --%>
        				
        			</tr>
        			
        			
        		
        		</c:forEach>
        			
        		</tbody>
        	</table>
        </div>
        </div>
        </div>
        <!-- end row  -->
        </c:if>