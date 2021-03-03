<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeAdmin.aspx.cs" Inherits="Welcome1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="AdminStyleSheet.css" rel="stylesheet" type="text/css" />
<link href="Welcome1.css" rel="stylesheet" type="text/css" />

<head runat="server">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0">
	
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="Admin.css3prj_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->

    <title> Welcome Page </title>
    
   
</head>


<body ontouchstart="" style="background-color:#EBEBEB">
<!-- Start css3menu.com BODY section -->
<input type="checkbox" id="css3menu-switcher" class="c3m-switch-input">
<ul id="css3menu1" class="topmenu">
	<li class="switch"><label onclick="" for="css3menu-switcher"></label></li>
	<li class="topfirst"><a href="#" style="height:19px;line-height:19px;"><span>Registration</span></a>
	<ul>
		<li class="subfirst"><a href="#"><span>Dairy</span></a>
		<ul>
			<li class="subfirst"><a href="UpdateDairyMaster.aspx">Update</a></li>
		
			<li><a href="ViewAllDairy.aspx"><span>View</span></a>
			
								
			</li>
		</ul></li>
		<li><a href="#"><span>Customer</span></a>
		<ul>
			<li class="subfirst"><a href="customerMaster.aspx">New</a></li>
			<li><a href="customerMasterUpdate.aspx">Update</a></li>
			<li><a href="DeleteCustomer.aspx">Delete</a></li>
			<li><a href="#"><span>View</span></a>
			<ul>
				<li class="subfirst"><a href="ViewAllCustomer.aspx"> All</a></li>
				<li><a href="ViewSpecificCustomer.aspx"> Specific</a></li>
			</ul></li>
		</ul></li>
		<li><a href="#"><span>Supplier</span></a>
		<ul>
			<li class="subfirst"><a href="SupplierMaster.aspx">New</a></li>
			<li><a href="UpdateSupplierMaster.aspx">Update</a></li>
			<li><a href="deleteSupplier.aspx">Delete</a></li>
			<li><a href="#"><span>View</span></a>
			<ul>
				<li class="subfirst"><a href="ViewAllSuppliers.aspx">All</a></li>
				<li><a href="ViewSpecificSuppliers.aspx">Specific</a></li>
			</ul></li>
		</ul></li>

        <li><a href="#"><span>Fat And Cost</span></a>
		<ul>
			<li class="subfirst"><a href="FatAndCost.aspx">New</a></li>
			<li><a href="UpdateFatAndCost.aspx">Update</a></li>
			
            <li><a href="ViewAllFatandCost.aspx">View</span></a>
            </ul></li>
		<li><a href="Welcome.aspx">Exit</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:19px;line-height:19px;"><span>Closing Stock</span></a>
	<ul>
		<li class="subfirst"><a href="ClosingStock.aspx">New</a></li>
		<li><a href="ClosingStockUpdate.aspx">Update</a></li>
		<li><a href="DeleteClosingStock.aspx">Delete</a></li>
		<li><a href="#"><span>View</span></a>
		<ul>
			<li class="subfirst"><a href="ViewAllClosingStock.aspx">All</a></li>
			<li><a href="ViewSpecificClosingStock.aspx">Specific</a></li>
		</ul></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:19px;line-height:19px;"><span>Supply Details</span></a>
	<ul>
		<li class="subfirst"><a href="SupplyDetails.aspx">New</a></li>
		<li><a href="UpdateSupplyDetails.aspx">Update</a></li>
		<li><a href="DeleteSupplyDetails.aspx">Delete</a></li>
		<li><a href="#"><span>View</span></a>
		<ul>
			<li class="subfirst"><a href="ViewAllSupplyDetails.aspx"> All</a></li>
			<li><a href="ViewSpecificSupplyDetails.aspx">Specific</a></li>
		</ul></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:19px;line-height:19px;"><span>Sales Details</span></a>
	<ul>
		<li class="subfirst"><a href="SalesDetails.aspx">New</a></li>
		<li><a href="UpdateSales.aspx">Update</a></li>
		<li><a href="DeleteSales.aspx">Delete</a></li>
		<li><a href="#"><span>View</span></a>
		<ul>
			<li class="subfirst"><a href="ViewAllSales.aspx">All</a></li>
			<li><a href="ViewSpecificSale.aspx">Specific</a></li>
		</ul></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:19px;line-height:19px;"><span>Payment</span></a>
	<ul>
		<li class="subfirst"><a href="Payment.aspx">New</a></li>
		<li><a href="UpdatePayment.aspx">Update</a></li>
		<li><a href="DeletePayment.aspx">Delete</a></li>
		<li><a href="#"><span>View</span></a>
		<ul>
			<li class="subfirst"><a href="ViewAllPayment.aspx">All</a></li>
			<li><a href="ViewSpecificPayment.aspx">Specific</a></li>
		</ul></li>
	</ul></li>
	<li class="toplast"><a href="#" style="height:19px;line-height:19px;"><span>Receipt</span></a>
	<ul>
		<li class="subfirst"><a href="Receipt.aspx">New</a></li>
		<li><a href="UpdateReceipt.aspx">Update</a></li>
		<li><a href="DeleteReceipt.aspx">Delete</a></li>
		<li><a href="#"><span>View</span></a>
		<ul>
			<li class="subfirst"><a href="ViewAllReceiptaspx.aspx">All</a></li>
			<li><a href="ViewSpecificReceipt.aspx">Specific</a></li>
		</ul></li>
	</ul></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 buttons</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->

    <form id="form1" runat="server" 
    style="background-image: url('f7.jpg'); background-position:no-repeat; background-attachment:fixed; overflow:hidden; clip:rect(inherit,auto,auto,auto); width: auto; height: auto;" >
     
    <p>
        &nbsp;</p>

  <section>
   <div class="set">
   
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f1.png" style="width: 140px; height: 137px;"></div>
   <div><img src="f2.png" style="width: 132px; height: 110px;"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f4.png" style="width: 107px"></div>
   <div><img src="f5.png" style="height: 117px; width: 125px"></div>
 

   <div><img src="f5.png" style="height: 117px; width: 125px"></div>
 <div><img src="f1.png" style="width: 119px; margin-right: 31px; height: 111px;"></div>
   <div><img src="f2.png" style="width: 149px; height: 120px"></div>
   <div><img src="f3.png" style="width: 171px; height: 161px"></div>
   <div><img src="f4.png" style="height: 141px; width: 166px"></div>
   <div><img src="f5.png" style="height: 117px; width: 125px"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>


      
   </div>
    <div class="set2">
    <div><img src="f5.png" style="height: 117px; width: 125px"></div>
     <div><img src="f1.png" style="width: 140px; height: 137px;"></div>
   <div><img src="f2.png" style="width: 132px; height: 110px;"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f4.png" style="width: 107px"></div>
   <div><img src="f5.png" style="height: 117px; width: 125px"></div>
 

 
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f1.png" style="width: 119px; margin-right: 31px; height: 111px;"></div>
   <div><img src="f2.png" style="width: 149px; height: 120px"></div>
   <div><img src="f3.png" style="width: 171px; height: 161px"></div>
   <div><img src="f4.png" style="height: 137px; width: 144px; margin-right: 6px;"></div>
   <div><img src="f5.png" style="height: 164px; width: 149px"></div>
   </div>

   
     </div>
    <div class="set3">
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f1.png" style="width: 121px; height: 137px;"></div>
   <div><img src="f2.png" style="width: 132px; height: 110px;"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f4.png" style="width: 107px"></div>
   <div><img src="f5.png" style="height: 117px; width: 125px"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
    

   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   <div><img src="f1.png" style="width: 109px; margin-right: 31px; height: 108px;"></div>
   <div><img src="f2.png" style="width: 124px; height: 120px"></div>
   <div><img src="f3.png" style="width: 136px; height: 140px"></div>
   <div><img src="f4.png" style="height: 141px; width: 143px"></div>
   <div><img src="f5.png" style="height: 148px; width: 131px"></div>
   <div><img src="f3.png" style="height: 99px; width: 117px"></div>
   </div>
   
      </section>
   
    </form>

</body>
</html>
