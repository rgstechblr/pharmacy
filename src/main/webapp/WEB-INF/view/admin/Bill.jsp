<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty param.s}">
	<div class="alert alert-success fade in" id="divSuccess">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
<!--     <strong>Success!</strong> Your Account has been created successfully.
 --></div>
</c:if>
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
</style>



 <div class="row">
 <h1 align="center">Bill Details</h1>
<br/>
<br/>
                    
                   
                   
                    <div class="col-xs-5 col-md-6">
                       <div class="form-group">
                                  <div class="">
                                      <input type="text" class="form-control" size="10"  id="prodid"  name="prodid" placeholder="Product ID" >
                                      <!-- <input type="text" class="form-control" size="10"  id="prodname"  name="prodname" placeholder="Product Name" >
                                  --></div>
                              </div>
                              </div>
                    <div class="col-xs-2 col-md-2">
                        <button type="button" class="btn btn-lableinfo btn-pressure btn-sensitive" id="btnCheck">Check</button> 
                    </div>
         </div>
 <div class="alert alert-danger fade in" id="divInvalid" style="display:none">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <strong>Error!</strong> Invalid Product Id.
</div>
<div class="alert alert-danger fade in" id="divBasic" style="display:none">
    <a href="#" class="close" data-dismiss="alert">&times;</a>
    <strong>Error!</strong> This Account should be Golden Registration.
</div>
         

<div id="divCreate" style="display:none">
<form action="bill.htm" method="post" enctype="multipart/form-data" onsubmit="return validate(this);">
	<!-- row  
  <div class="row">
   
   <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label-left"> Product Id</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
          <input type="text" class="ctextbox" name="prodid" id="prodid"  size="15" readonly="readonly" />
         </div>
                          
    </div>
                    
   </div>-->
   <!-- end row -->
   
   
     <div class="row">
   
   <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label-left"> Product Name</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
          <input type="text" class="ctextbox" name="prodname" id="prodname"  size="15" readonly="readonly" />
         </div>
                          
    </div>
                    
   </div>
   
   
   
     <div class="row">
   
   <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label-left"> Quantity</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
          <input type="text" class="ctextbox" name="quantity" id="quantity" onblur="calculate()" size="15" />
         </div>
                          
    </div>
                    
   </div>
   
   
     <div class="row">
   
   <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label-left">Price</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
          <input type="text" class="ctextbox" name="sell" onblur="calculate()" id="sell"  size="15"  />
         </div>
                          
    </div>
                    
   </div>
   
   
     <div class="row">
   
   <div class="col-xs-5 col-md-2" align="right">
     <label for="concept" class="col-xs-5 col-md-3 control-label-left">Total</label>
   </div>
   <div class="col-xs-5 col-md-6">
        <div class="form-group">
          <input type="text" class="ctextbox" name="total" id="total"  size="15"  />
         </div>
                          
    </div>
                    
   </div>
   
   
   
   
   <!-- row  -->
   <div class="row">
   
   <div class="col-xs-5 col-md-2">
    
   </div>
   <div class="col-xs-5 col-md-2">
        <div class="form-group">
        	
           <input type="submit" class="btn btn-lableinfo btn-pressure btn-sensitive" id="btnSubmit" value="Print" />
         </div>
                          
    </div>
                    
   </div>
   <!-- end row -->

</form>
</div>

<script type="text/javascript" src="../js/ajax/jquery.min.js">
</script>


<script>

function calculate()
{
	var quantity = parseInt(document.getElementById("quantity").value);
	var sell = parseInt(document.getElementById("sell").value);

	var total = quantity*sell;
	document.getElementById("total").value=total;

}

</script>




<script>
	$(document).ready(function() {
	
	
	$('#btnCheck').click(
		function(event) {
		$('#divSuccess').css("display", "none"); 
		$('#divCreate').css("display", "none"); 
		$('#divInvalid').css("display", "none"); 
		$('#divBasic').css("display", "none"); 
			
		var prodid = $('#prodid').val();
			
			if(prodid=="")
			{
				alert("please enter Product Id");
				$('#prodid').focus()
				return false;
			}
			
			var data = 'prodid='
					+ encodeURIComponent(prodid);
					
			$.ajax({
				url : "checkprodid.htm",
				data : data,
				contentType: 'application/json',
   				mimeType: 'application/json',
				
				type : "GET",
 
				success : function(response) {
				
					if(response.registrationType=="basic")
					{
							$('#divBasic').css("display", "block"); 
					}
					else
					{
						
						$('#divCreate').css("display", "block"); 
						$("#doc").val("");
						$("#city").val("");
						
						
						$("#prodid").val(response.prodid);
						$("#prodname").val(response.prodname);
						$("#company").val(response.company);
						$("#category").val(response.category);
						$("#quantity").val(response.quantity);
						$("#hsn").val(response.hsn);
						$("#vgm").val(response.vgm);
						$("#mrp").val(response.mrp);
						$("#sell").val(response.sell);
						$("#discount").val(response.discount);
						$("#discount").val(response.discount);	
												
						
						$("#fullName").val(response.fullName);
						$("#country").val(response.country);
						$("#city").val(response.city);
						$("#customerId").val(response.customerId);
						$("#countryCode").val(response.countryCode);
						$("#email").val(response.email);
						
					}
				
				},
				error : function(xhr, status, error) {
					$('#divInvalid').css("display", "block"); 
				}
			});
			return false;
		});
	
	
	});
</script>

           
