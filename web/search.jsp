<%-- 
    Document   : search
    Created on : Jul 31, 2017, 1:39:29 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="styling.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <title>SEARCH HERE</title>
        <style>
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            }
        </style> 

        <style>



            .glyphicon-search:before {
                content: "\e003";
                margin-left: -20px;
            }
        </style>
        <script>
  
          
    
         


           $(function() 
   {
        //if(document.getElementById("searchph").style.display=="none")
         if (sessionStorage.length != 0)
            {
                var count = JSON.parse(sessionStorage.count) || [];
                document.getElementById("count").innerHTML = count;
            }
            
             if (localStorage.getItem('phone1') != null)
            {

                var loading = document.getElementById("lb1");
                loading.style.visibility = "hidden";
                var loading2 = document.getElementById("dropme");
                loading2.innerHTML = "Welcome " + localStorage.getItem("firstname");
                loading2.style.visibility = "visible";
                var loading3 = document.getElementById("dropme2");
                loading3.style.visibility = "visible";
                 var loading4 = document.getElementById("caret");
                loading4.style.visibility = "visible";

            }
            else
            {

                var loading = document.getElementById("lb1");
                loading.style.visibility = "visible";
                var loading2 = document.getElementById("dropme");
                loading2.style.visibility = "hidden";
                var loading3 = document.getElementById("dropme2");
                loading3.style.visibility = "hidden";
                var loading4 = document.getElementById("caret");
                loading4.style.visibility = "hidden";

            }
            
  $("#t12").focus();
  
      $("#t123").focus();
});   
        
    if (localStorage.getItem('phone1') != null)
            {

                var loading = document.getElementById("lb1");
                loading.style.visibility = "hidden";
                var loading2 = document.getElementById("dropme");
                loading2.innerHTML = "Welcome " + localStorage.getItem("firstname");
                loading2.style.visibility = "visible";
                var loading3 = document.getElementById("dropme2");
                loading3.style.visibility = "visible";
                 var loading4 = document.getElementById("caret");
                loading4.style.visibility = "visible";

            }
            else
            {

                var loading = document.getElementById("lb1");
                loading.style.visibility = "visible";
                var loading2 = document.getElementById("dropme");
                loading2.style.visibility = "hidden";
                var loading3 = document.getElementById("dropme2");
                loading3.style.visibility = "hidden";
                var loading4 = document.getElementById("caret");
                loading4.style.visibility = "hidden";

            }

        
           function go(id)
            {
                
                var value = document.getElementById("lb" + id).textContent;        
                var kg = document.getElementById("kg" + id).textContent;        
                if(sessionStorage.length==0)
                {
                    var cart=[];
                    cart.push(id);
                    var count=1;
                    var addpro=[];
                  sessionStorage.cart = JSON.stringify(cart);
                  sessionStorage.count = JSON.stringify(count);
                  sessionStorage.addpro = JSON.stringify(addpro);
                 
                }
                else
                {
                    var k,j;
                    var cart = JSON.parse(sessionStorage.cart) || [];
                    var count = JSON.parse(sessionStorage.count) || [];
                    var addpro = JSON.parse(sessionStorage.addpro) || [];
                    cart.push(id);
                    if(cart.length ==1)
                    {
                       count=1;
                    sessionStorage.count = JSON.stringify(count);        
                    }
                    var products =[];
                     sessionStorage.products = JSON.stringify(products);
                    var flag;
                    var id2 = cart[0];
                products.push(id2);
                  for (var i = 0; i < cart.length; i++)
                {
                    flag = true;
                    id = cart[i];
                    for (j = 0; j < products.length; j++)
                    {

                        if (cart[i] == products[j])
                        {

                            flag = false;
                            break;
                        }
                    }

                    if (flag == true)
                    {
                        products.push(id);
                    }
                    sessionStorage.products = JSON.stringify(products);
                }
                count=products.length;
                        
                        sessionStorage.count = JSON.stringify(count);
                        var addpro =[];
                        sessionStorage.addpro = JSON.stringify(addpro);
                        
                         for (var i = 0; i < products.length; i++)
                {
                     
                 var num=0;
                    for (j = 0; j < cart.length; j++)
                    {

                        if (cart[j] == products[i])
                        {
                               num++;
                        }
                    }
                       addpro.push(num);
                   
                     sessionStorage.addpro = JSON.stringify(addpro);
                }
                        
                        
                        
                  }
                  var count = JSON.parse(sessionStorage.count) || [];
                         if(count !=0)
                         {
                             document.getElementById("count").innerHTML = count;
                         }
                  sessionStorage.cart = JSON.stringify(cart);
                value++;
                document.getElementById("lb" + id).innerHTML = value;
                var loading = document.getElementById(id);
                loading.style.visibility = "visible";
                var loading1 = document.getElementById("lb" + id);
                loading1.style.visibility = "visible";
                  var loading3 = document.getElementById("kg" + id);
                loading3.style.visibility = "visible";
            }

            function go2(id)
            {
                var value = document.getElementById("lb" + id).textContent;
                var kg=document.getElementById("kg"+id);
                 var cart = JSON.parse(sessionStorage.cart) || [];
                 var index = cart.indexOf(id);
                 cart.splice(index,1);
                 console.log(cart);
                  sessionStorage.cart = JSON.stringify(cart);
                value--;
                if (value == 0)
                {
                    var count = JSON.parse(sessionStorage.count) || [];
                    count--;
                    sessionStorage.cart = JSON.stringify(cart);
                    document.getElementById("count").innerHTML = count;
                    sessionStorage.count = JSON.stringify(count);
                    var loading = document.getElementById(id);
                    loading.style.visibility = "hidden";
                    var loading1 = document.getElementById("lb" + id);
                    var loading2 = document.getElementById("kg" + id);
                    loading1.style.visibility = "hidden";
                    loading2.style.visibility = "hidden";
                }
                document.getElementById("lb" + id).innerHTML = value ;

            }
           
           
    
    
    
    
    
             function go12()
            {
                $(document).ready(function ()
                {
                    go13();
                });

            }

            function go4()
            {
                var num = document.getElementById("p1").value;
                if (num.toString().length != "10" && num.toString().length != "0")
                {
                    alert("phone number should be 10 digits");
                    document.getElementById("p1").value = "";
                }

            }


            function go3()
            {


                var phone = document.getElementById("p1").value.toString();
                var password = document.getElementById("p2").value.toString();
                if (phone.toString().length != "10" && phone.toString().length != "0")
                {
                    alert("phone number should be 10 digits");
                    document.getElementById("p1").value = "";
                }
                else if (password.toString().length < 8)
                {
                    alert("Password should not be less than 8 characers");
                    document.getElementById("p2").value = "";
                }
                else
                {
                    if (phone.toString().length == "" || password.toString().length == "")
                    {
                        alert("EACH FIELD IS REQUIRED");
                        alert(phone.toString().length);
                        document.getElementById("p1").value = "";
                        document.getElementById("p2").value = "";
                    }
                    else
                    {
                        var obj = {};
                        obj['phone'] = document.getElementById("p1").value;

                        obj['password'] = document.getElementById("p2").value;
                        $.ajax(
                                {
                                    url: "http://ruralict.cse.iitb.ac.in/ruralict/app/logincheck",
                                    type: "POST",
                                    data: JSON.stringify(obj),
                                    contentType: 'application/json; charset=utf-8',
                                    dataType: 'json',
                                    async: false,
                                    success: function (msg) {
                                        if (msg.status == "success")
                                        {
                                            localStorage.clear();
                                            localStorage.phone1 = phone;
                                            localStorage.address = msg.address;
                                            localStorage.pincode = msg.pincode;
                                            localStorage.firstname = msg.firstname;
                                            localStorage.lastname = msg.lastname;
                                            localStorage.email = msg.email;

                                            window.location.href = "home.html";


                                        }
                                        else
                                        {
                                            alert("check password or register if not register");
                                        }
                                    }
                                }
                        );
                    }

                }
            }


            function go6()
            {
                $(document).ready(function ()
                {
                    $("#myModal1").modal("hide");
                    go7();
                });
            }
            
            
            
            function go8()
            {
                var phone = document.getElementById("p1r").value.toString();
                var password = document.getElementById("p2r").value.toString();
                var confirm = document.getElementById("p3r").value.toString();
                if (phone.length != "10")
                {
                    alert("phone length should be of 10 digits");
                }
                else if (phone.trim() == "" || password.trim() == "" || confirm.trim() == "")
                {
                    alert("EACH FIELD IS REQUIRED");

                }
                else if (password.length < "8") {
                    alert("password should be more than 8 characters");
                }
                else if (password != confirm)
                {
                    alert("password and confirm password doesnot match");


                }
                else
                {
                    localStorage.phone = phone;
                    localStorage.password = password;
                    $(document).ready(function ()
                    {
                        go9();
                    });
                }


            }

            function go10()
            {
                var obj = {};
                var first_name = document.getElementById("p1rr").value.toString();
                var last_name = document.getElementById("p2rr").value.toString();
                var address = document.getElementById("p3rr").value.toString();
                var pincode = document.getElementById("p4rr").value.toString();
                var email = document.getElementById("p5rr").value.toString();
                if (first_name.trim() == "" || last_name.trim() == "" || address.trim() == "" || pincode.trim() == "" || email.trim() == "")
                {
                    alert("EACH FIELD IS REQUIRED");
                }
                else if (pincode.length != "6")
                {
                    alert("PINCODE MUST BE OF 6 DIGITS");
                }
                else
                {
                    obj['firstname'] = first_name;
                    obj['lastname'] = last_name;
                    obj['email'] = email;
                    obj['password'] = localStorage.getItem('password');
                    obj['phone'] = localStorage.getItem('phone');
                    obj['pincode'] = pincode;
                    obj['address'] = address;
                    $.ajax({
                        url: 'http://ruralict.cse.iitb.ac.in/ruralict/app/newregister',
                        crossDomain: true,
                        type: 'POST',
                        data: JSON.stringify(obj),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        async: false,
                        success: function (msg)
                        {
                            alert(msg.status);
                            if (msg.status == success)
                                $('#myModal3').modal('hide');
                            window.location.assign("home.html");
                        }
                    });


                }
            }

            function go15()
            {
                $(document).ready(function ()
                {
                    go16();
                });
            }


            function go23()
            {
                $('#myModal5').modal('hide');
                if (localStorage.getItem('phone1') == null)
                {
                    alert("please login to shop");
                    $('#myModal').modal('show');
                }
                else
                {

//                       var labe=[];
//                       var products = JSON.parse(sessionStorage.products) || [];
//                       for(var i=0;i<products.length;i++)
//                       {
//                          var value = parseInt(document.getElementById("lbm"+products[i]).textContent);
//                          labe.push(value);
//                          
//                       }
//                       sessionStorage.labe = JSON.stringify(labe);
//                       
//                    
//                    var checkout={};
//                    checkout['phone']=localStorage.getItem('phone1');
//                    checkout['comments']='NICE PRODUCTS';
//                    checkout['amount']=parseInt(document.getElementById("total").textContent);
//                    checkout['address']=localStorage.getItem('address');
//                    checkout['orderItems']=[];
//                    for(var i=0;i<products.length;i++)
//                    {
//                      var elem={};
//                      var id=products[i];
//                      elem['prod_id']=id;
//                      elem['quantity']=labe[i];
//                      elem['unit_rate']=parseInt(document.getElementById("lbm5" + id).textContent);
//                      checkout['orderItems'].push(elem);
//                  }
//                    console.log(JSON.stringify(checkout));
//                    
//                    $.ajax({
//                url: 'http://ruralict.cse.iitb.ac.in/ruralict/app/addorders',
//                type: 'POST',
//                data: JSON.stringify(checkout),
//                contentType: 'application/json; charset=utf-8',
//                dataType: 'JSON',
//                async: false,
//                success: function(msg) 
//                {
//                  console.log(msg);
//                  if(msg.status = "Success");
//                  {
//                    alert("Sucsess");
//                    localStorage.setItem('placed_flag',1);
//                    window.location.assign("checkout.html");
//                  }
//                	if(msg.status=="failure")
//                	{
//                		alert(msg.error);
//                	}
//                	else if(msg.status=="price increased")
//                	{
////                		var answer = "";
////                		for(var i =0;i< msg.products.length;i++)
////                		{
////                			answer = answer + msg.products[i].name+" : "+msg.products[i].unitRate + "\n";
////                		}
//                		alert("Price of some items have increased. The updated list is \n"+answer);
//                	}
//                	else if(msg.status=="products has been disabled"){
//                		alert(msg.error);
//                	}
//                }
//                // error: function(texterror)
//                // {
//                // 	alert("error occured");
//                // }
//            });
//                    
//                      
//
//                      
//                                   
//                 
//                
//
//                
//                       
//                       
                    if (sessionStorage.length == 0)
                    {
                        alert("Empty Cart ,please add something first.....");
                    }
                    else
                    {
                        window.location.assign("ordersummary.html");
                    }
                }


            }


            function resetpassword()
            {
                var pass = document.getElementById("p6").value.toString();
                var conpass = document.getElementById("p7").value.toString();
                if (pass.length < 8 || conpass.length < 8)
                {
                    alert("Password should not be less than 8");
                }
                else if (pass != conpass)
                {
                    alert("Password and Confirm Password Doesnot Match");
                }
                else
                {
                    var obj = {};
                    obj['phonenumber'] = localStorage.getItem('phonerecover');
                    obj['password'] = pass;

                    $.ajax({
                        url: 'http://ruralict.cse.iitb.ac.in/ruralict/app/changelcppassword',
                        crossDomain: true,
                        type: 'POST',
                        data: JSON.stringify(obj),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        async: false,
                        success: function (msg)
                        {
                            alert(msg.status);
                            if (msg.status == "success")
                            {
                                alert("Password Changed,Please Login Now");
                                window.location.href = "home.html";
                            }
                        }
                    });

                }
            }



            function go27()
            {
                $(document).ready(function ()
                {
                    go17();
                });
            }
            function go30()
            {
                $(document).ready(function ()
                {
                    forgotmodal();
                });
            }
            function sorry()
            {
                $(document).ready(function ()
                {
                    timeup();
                });
            }

            function checkotp()
            {
                var entotp = document.getElementById("p4").value.toString();
                var otp = localStorage.getItem('otp').toString();
                if (entotp == otp)
                {
                    go31();
                }
                else
                {
                    sorry();
                }

            }

            function runforgototp()
            {
                var phone = document.getElementById("fp1").value.toString();
                if (phone.toString().length != "10")
                {
                    alert("phone number should be 10 digits");
                    document.getElementById("fp1").value = "";
                }
                else
                {
                    if (phone.toString().length == "")
                    {
                        alert("EACH FIELD IS REQUIRED");
                        document.getElementById("fp1").value = "";
                    }
                    else
                    {
                        var obj = {};
                        localStorage.setItem('phonerecover', phone);
                        obj['phonenumber'] = document.getElementById("fp1").value;

                        $.ajax(
                                {
                                    url: "http://ruralict.cse.iitb.ac.in/ruralict/app/forgotlcppassword",
                                    type: "POST",
                                    data: JSON.stringify(obj),
                                    contentType: 'application/json; charset=utf-8',
                                    dataType: 'json',
                                    async: false,
                                    success: function (msg) {
                                        var otp = msg.otp.toString();
                                        if (otp == null)
                                        {
                                            alert("PLEASE ENTER THE REGISTERED NUMBER");


                                        }
                                        else
                                        {
                                            localStorage.setItem('otp', msg.otp);
                                            go27();


                                        }
                                    }
                                }
                        );
                    }
                }

            }


            function runforgototp1()
            {
                document.getElementById("p4").value = "";
                var phone = document.getElementById("ffp1").value.toString();
                if (phone.toString().length != "10")
                {
                    alert("phone number should be 10 digits");
                    document.getElementById("ffp1").value = "";
                }
                else
                {
                    if (phone.toString().length == "")
                    {
                        alert("EACH FIELD IS REQUIRED");
                        document.getElementById("ffp1").value = "";
                    }
                    else
                    {
                        var obj = {};
                        obj['phonenumber'] = document.getElementById("ffp1").value;

                        $.ajax(
                                {
                                    url: "http://ruralict.cse.iitb.ac.in/ruralict/app/forgotlcppassword",
                                    type: "POST",
                                    data: JSON.stringify(obj),
                                    contentType: 'application/json; charset=utf-8',
                                    dataType: 'json',
                                    async: false,
                                    success: function (msg) {
                                        var otp = msg.otp.toString();
                                        if (otp == null)
                                        {
                                            alert("PLEASE ENTER THE REGISTERED NUMBER");


                                        }
                                        else
                                        {
                                            localStorage.setItem('otp', msg.otp);
                                            go27();


                                        }
                                    }
                                }
                        );
                    }
                }

            }





            function go31()
            {
                $(document).ready(function ()
                {
                    verified();
                });
            }

            function profile()
            {
                if (localStorage.getItem("phone1") != null)
                {
                    window.location.assign("profile_page.html");
                }
                else
                {
                    alert("Please Login To See Your Profile");
                }
            }
            
            
            
        </script>
    </head>
    <body>
        
        
          <style>



            .glyphicon-search:before {
                content: "\e003";
                margin-left: -20px;
            }

        </style>
       
        
        <style>
            .dropbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 3;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1}

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #4EAE4D;
            }

            ul.nav.nav-tabs {
                width:100%;
                text-align:center;
                font-size: 16px;
            }


            .navbar-toggle.pull-left {
                margin-left: 15px;
            }
            @media (min-width: 768px) {
                .pull-sm-left {
                    float: left !important;
                }
            }

        </style> 


        <div class="row" id="head" style="background-color:#4EAE4D">
            <div class="col-sm-1" id="navph">

                <nav role="navigation">
                    <div id="menuToggle">
                        <input type="checkbox" />

                        <span></span>
                        <span></span>
                        <span></span>




                        <ul id="menu">

                            <li>
                                <div class="dropdown"><img src="products.png" width="20" height="20" style="margin-top: -10px;" />
                                    <button class="btn btn-primary dropdown-toggle" id="menu1" type="button" data-toggle="dropdown">Products
                                    </button>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="fruit.html">Fruits</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="vegetable.html">Vegetables</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="spices.html">Spices</a></li>
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="grains.html">Grains</a></li>    
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="dairyproducts.html">Dairy Products</a></li> 
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="leafy.html">Leafy Vegetables</a></li> 
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="exotic.html">Exotic Vegetables</a></li> 
                                        <li role="presentation"><a role="menuitem" tabindex="-1" href="dryfruits.html">Dry Fruits</a></li> 


                                    </ul>
                                </div>
                            </li>

                            <li><a href="checkout.html"><img src="orders.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; Orders</a></li>
                            <li><a href="profile_page.html"><img src="profile_dark.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; Profile</a></li>
                            <li><a href="home.html"><img src="about_dark.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; About Us</a></li>
                            <li><a href="faq.html"><img src="contact_dark.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; Contact Us</a></li>
                            <li><a href="faq.html"><img src="faq_dark.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; FAQs</a></li>
                            <li><a href="faq.html"><img src="feedback_dark.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; Feedback</a></li>
                            <li><a href="home.html"><img src="watchvideo.png" width="20" height="20" style="margin-top: -10px;" />&nbsp;&nbsp;&nbsp; Watch Video</a></li>






                        </ul>

                </nav>
                <script>
                    $(document).ready(function () {
                        $(".dropdown-toggle").dropdown();
                    });
                </script>
            </div>
            <div class="col-sm-3 col-lg-3" >
                <a href="home.html"><img src="cart.png" id="carthome" style="width:40px;height: 40px; margin-left: 26px;margin-top: 10px"/></a>
            </div>

            <!--            <div class="col-sm-4">
                         
                            
                            <input type="text" placeholder="search for products" style="margin-top:3px; width: 100%;height:30px "  onkeyup="go5()" id="t1"/>
                        </div>-->
             <div class="form-group has-feedback col-sm-4" id="searchprod">
                <input type="text" placeholder="Search for products " style="margin-top:12px; width: 100%;height:30px;padding: 0px 7px"  onkeyup="go50()" id="t12"/>
                <span class="glyphicon glyphicon-search form-control-feedback" style="margin-top:10px;color:#888" ></span>
            </div>



          
            <div id="welcome_header" class="col-sm-4" style="margin-top:10px">
                <center style="margin-top:-10px;" id='loginprof'>
                    <div class="dropdown">
                        <button class="dropbtn" style="visibility: hidden;" id="dropme">Welcome</button><i id="caret" class="fa fa-caret-down" style="font-size:15px;color:white;visibility: hidden"></i>
                        <div class="dropdown-content" style="visibility:hidden" id="dropme2">
                            <a href="profile_page.html">My Profile</a> 
                            <a href="checkout.html">Orders</a>
                            <a href="faq.html">FAQs</a>
                            <a href="Logout.html">Logout</a>

                        </div>
                    </div>
                    <label onclick="go12()" id="lb1" style="color:white; font-family: 'Roboto', sans-serif;margin-left: 100px;font-weight: normal">Login</label>

                    <img src="cart_1.png" style="width:30px;height: 30px; margin-left: 22px" id="im1" onclick="go15()"/><span class="badge" id="count"></span>




                </center>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4"></div>

        </div>
        <div class="row" >
            <div class="container">
                <div class="col-md-12 ">


                     <div class="form-group has-feedback col-sm-12" id="searchph">
                <input type="text" placeholder="Search for products " style="margin-top:7px; width: 100%;height:30px;padding: 0px 7px;background: #f6f6f6;border: none;"  onkeyup="go50()" id="t123"/>
                <span class="glyphicon glyphicon-search form-control-feedback" style="margin-top:7px;color:#888;padding: 0px 22px;font-size: 13px;" ></span>
            </div>


                    <ul class="nav nav-tabs" style="padding:12px 0px;border: none;">
                        <li><a href="fruit.html" >Fruits</a></li>
                        <li><a href="vegetable.html" > Vegetables</a></li>
                        <li><a href="spices.html"> Spices</a></li>
                        <li><a href="grains.html" >Grains</a></li>
                        <li><a href="dairyproducts.html">Dairy Products</a></li>
                        <li><a href="leafy.html" >Leafy Vegetables</a></li>
                        <li><a href="exotic.html" >Exotic Vegetables</a></li>
                        <li><a href="dryfruits.html" >Dry Fruits</a></li>

                    </ul>
                </div>

            </div>
        </div>
         <div class="container">
               
            <div class="row">
                
                 <div class="col-sm-12">
                     <div class="col-sm-3" id="placeholder1"></div>
                <div class="col-sm-3" id="placeholder2"></div>
                <div class="col-sm-3" id="placeholder3"></div>
                <div class="col-sm-3" id="placeholder4"></div><br><br>
                <div id="sorry123" style="visibilty:hidden"> <center> <h2 style="color: #4EAE4D">Sorry :( No items found!</h2></center>
                </div>
                    <!-- <div id="sorry1234" style="visibilty:hidden"> <center> <h2 style="color: #4EAE4D">SEARCH THE PRODUCTS HERE... :)</h2></center></div>
         -->
                  <center> <a href="home.html" style="color: black;text-decoration: underline">See our other categories</a></center>
                
                
        </div>
            </div>
            


            <script>

                window.onload = function() {
                 
                    //  var loading2 = document.getElementById("sorry1234");
                    //                loading2.style.visibility = "hidden"; 

                    // $.ajax(
                    //         {
                    //             url: "http://ruralict.cse.iitb.ac.in/ruralict/api/products/search/byType/lcpmapnew?orgabbr=lcart",
                    //             beforeSend: function(xhr) {
                    //                 xhr.setRequestHeader("Authorization", "Basic " + btoa("lokacart@cse.iitb.ac.in" + ":" + "password"));
                    //             },
                    //             type: "GET",
                    //             contentType: 'application/json; charset=utf-8',
                    //             crossDomain: true,
                    //             dataType: 'json',
                    //             async: false,
                    //             success: function(msg) {
                    //                 /*$.each( msg.products[0].Vegetabels,function(key,value) {
                    //                  console.log(value.name);
                                 
                    //                  });*/
                    //                 var x, y;
                    //                 var flag = 0;
                    //                 for (var i = 0; i < msg['products'].length; i++)
                    //                 {
                    //                     //console.log(item[i]);
                    //                     for (x in msg['products'][i])
                    //                     {
                    //                         //  console.log(x);
                    //                         if ((x != "productTypeId") && (x != "status") && (x != "typename"))
                    //                         {
                    //                             var elem = {};
                    //                             for (y in msg['products'][i][x])
                    //                             {
                    //                                 var image = msg['products'][i][x][y].imageUrl;
                    //                                 //console.log(item['products'][i][x][y].name);
                    //                                 if (msg['products'][i][x][y].name.toUpperCase().startsWith(ch) && ch != "")
                    //                                 {
                    //                                     console.log(msg['products'][i][x][y].name);
                    //                                     if (flag == 0)
                    //                                     {
                    //                                         flag = 1;
                    //                                         var article = document.createElement('article');


                    //                                         var id = msg['products'][i][x][y].id;
                    //                                          article.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                    //                                          console.log(article);
                    //                                         document.getElementById("placeholder1").appendChild(article);
                    //                                     }

                    //                                     else if (flag == 1)
                    //                                     {
                    //                                         var id = msg['products'][i][x][y].id;
                    //                                         flag = 2;
                    //                                         var article2 = document.createElement("article2");

                    //                                          article2.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                    //                                          document.getElementById("placeholder2").appendChild(article2);
                    //                                     }
                    //                                     else if(flag == 2)
                    //                                     {
                    //                                         var id = msg['products'][i][x][y].id;
                    //                                         flag = 3;
                    //                                         var article3 = document.createElement("article3");

                    //                                           article3.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                    //                                          document.getElementById("placeholder3").appendChild(article3);
                    //                                     }
                                                        
                    //                                     else
                    //                                     {
                    //                                        var id = msg['products'][i][x][y].id;
                    //                                         flag = 0;
                    //                                         var article4 = document.createElement("article4");

                    //                                           article4.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                    //                                          document.getElementById("placeholder4").appendChild(article4);  
                    //                                     }



                    //                                 }
                    //                             }
                    //                         }
                    //                     }
                    //                 }
                    //             }

                    //         });
                            
                            
                          
                                //    var loading3 = document.getElementById("sorry1234");
                                //    loading3.style.visibility = "visible"; 
                                //    var loading4 = document.getElementById("sorry123");
                                //    loading4.style.visibility = "hidden"; 
                            
                            
                };

            </script>

            <script>

                function go50()
                {
                     var loading2 = document.getElementById("sorry123");
                    loading2.style.visibility = "hidden";
                    // var loading3 = document.getElementById("sorry1234");
                    // loading3.style.visibility = "hidden";
                    document.getElementById("placeholder1").innerHTML = "";
                    document.getElementById("placeholder2").innerHTML = "";
                    document.getElementById("placeholder3").innerHTML = "";
                    document.getElementById("placeholder4").innerHTML = "";
                   
                    var ch = document.getElementById("t12").value.toString().toUpperCase();
                    if(ch=="")
                    var ch = document.getElementById("t123").value.toString().toUpperCase();
                
                     $.ajax(
                            {
                                url: "http://ruralict.cse.iitb.ac.in/ruralict/api/products/search/byType/lcpmapnew?orgabbr=lcart",
                                beforeSend: function(xhr) {
                                    xhr.setRequestHeader("Authorization", "Basic " + btoa("lokacart@cse.iitb.ac.in" + ":" + "password"));
                                },
                                type: "GET",
                                contentType: 'application/json; charset=utf-8',
                                crossDomain: true,
                                dataType: 'json',
                                async: false,
                                success: function(msg) {
                                    /*$.each( msg.products[0].Vegetabels,function(key,value) {
                                     console.log(value.name);
                                     
                                     });*/
                                    var x, y;
                                    var flag = 0;
                                    for (var i = 0; i < msg['products'].length; i++)
                                    {
                                        //console.log(item[i]);
                                        for (x in msg['products'][i])
                                        {
                                            //  console.log(x);
                                            if ((x != "productTypeId") && (x != "status") && (x != "typename"))
                                            {
                                                var elem = {};
                                                for (y in msg['products'][i][x])
                                                {
                                                    var image = msg['products'][i][x][y].imageUrl;
                                                    //console.log(item['products'][i][x][y].name);
                                                    if (msg['products'][i][x][y].name.toUpperCase().startsWith(ch) && ch != "")
                                                    {
                                                        console.log(msg['products'][i][x][y].name);
                                                        if (flag == 0)
                                                        {
                                                            flag = 1;
                                                            var article = document.createElement('article');


                                                            var id = msg['products'][i][x][y].id;
                                                             article.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                                                             console.log(article);
                                                            document.getElementById("placeholder1").appendChild(article);
                                                        }

                                                        else if (flag == 1)
                                                        {
                                                            var id = msg['products'][i][x][y].id;
                                                            flag = 2;
                                                            var article2 = document.createElement("article2");

                                                           article2.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                                                             document.getElementById("placeholder2").appendChild(article2);
                                                        }
                                                        else if(flag == 2)
                                                        {
                                                            var id = msg['products'][i][x][y].id;
                                                            flag = 3;
                                                            var article3 = document.createElement("article3");

                                                            article3.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                                                             document.getElementById("placeholder3").appendChild(article3);
                                                        }
                                                        
                                                        else
                                                        {
                                                           var id = msg['products'][i][x][y].id;
                                                            flag = 0;
                                                            var article4 = document.createElement("article4");

                                                           article4.innerHTML = "<div class='card' style='margin-top:50px'><header><img src='" + image + "' style='height:180px;object-fit:cover' width=100%/></header><div><p style='color:#4EAE4D;margin-left:5%;margin-top:0.5cm;font-size:large;text-overflow: ellipsis;white-space: nowrap;overflow:hidden;'>" + msg['products'][i][x][y].name + "<br><h5 style='margin-left:5%;font-size:11px;margin-top:-13px'>IIT BOMBAY</h5></p></div><footer style='padding:7px 0px'><h5 style='margin-left:55%;font-size:11px;margin-top:-13px'>Min.Order-25kg</h5><span style='margin-left:5%;font-size:13px'>1 kg for ₹"+msg['products'][i][x][y].unitRate+"</span><button  type='button' class='btn btn-default btn-circle'  onclick='go2(" + id + ")' id=" + msg['products'][i][x][y].id + " style='margin-left:1%; visibility: hidden; margin-left:29px;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color:white'></i></button><span><label id=lb" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2px;font-size:14px% ;visibility:hidden'>0</label><label  id=kg" + msg['products'][i][x][y].id + " style='color:#4EAE4D;visibility:hidden;font-size:14px'>kg</label></span><button type='button' class='btn btn-default btn-circle' onclick='go(" + id + ")' ><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px; color:white'></i></button></div></footer></div>";
                                                             document.getElementById("placeholder4").appendChild(article4);  
                                                         }




                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                            });
                            
                              if( $('#placeholder1').is(':empty') ) {
                               var loading2 = document.getElementById("sorry123");
                                   loading2.style.visibility = "visible";
                            }


                }


            </script>
            
            
            
            
             <script>
               function go13()
            {

                {
                    $('#myModal').modal('show');
                }
            }




            function mouseoverPass(obj) {
                var obj = document.getElementById('p2');
                obj.type = "text";
                var obj1 = document.getElementById('p2r');
                obj1.type = "text";
                var obj2 = document.getElementById('p3r');
                obj2.type = "text";
                var obj3 = document.getElementById('p6');
                obj3.type = "text";
                var obj4 = document.getElementById('p7');
                obj4.type = "text";
            }
            function mouseoutPass(obj) {
                var obj = document.getElementById('p2');
                obj.type = "password";
                var obj1 = document.getElementById('p2r');
                obj1.type = "password";
                var obj2 = document.getElementById('p3r');
                obj2.type = "password";
                var obj3 = document.getElementById('p6');
                obj3.type = "password";
                var obj4 = document.getElementById('p7');
                obj4.type = "password";

            }


            
            

        </script>



       <div class="modal fade" id="myModal" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh1">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D;font-family: 'Roboto', sans-serif;">Login to your account</h4></center>
                    </div>
                    <div class="modal-body">
                        <center style="margin-top: 30px;">
                            <h5 id="e1" style="margin-left: -202px">Enter Phone Number</h5>
                            <input type="text"  id="p1" onkeypress="return event.charCode >= 48 && event.charCode <= 57" required/><br><br>

                            <h5 id="e2" style="margin-left: -249px">Enter Password</h5>
                            <input type="password"  id="p2" onclick="go4()" required  />
                            <img src="theicon.png" style="width:30px;height:30px;margin-left: -39px;padding: 4px 5px; " onmouseover="mouseoverPass();" onmouseout="mouseoutPass();">
                            <br><br>
                            <h6 onclick="go30()" style="cursor: pointer;width: fit-content;">Forgot Password?</h6>

                            <br><input type="button" id="b1"  value="LOGIN"  onclick="go3()"/>


                        </center>
                    </div>

                    <div class="modal-footer" id="mh2">
                        <center>
                            <h5 style="color:#4EAE4D;cursor: pointer;width: fit-content;" onclick="go6()">New User? <strong><span style="text-decoration: underline">Register Now</span></strong></h5>
                        </center>
                    </div>
                </div>

            </div>
        </div>

        <script>
            function forgotmodal()
            {
                $('#myModal').modal('hide');
                $('#Mforgot').modal('show');
            }

        </script>

        <div class="modal fade" id="Mforgot" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh1">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D;font-family: 'Roboto', sans-serif;">Forgot Password?</h4></center>
                    </div>
                    <div class="modal-body">
                        <center style="margin-top: 30px;">
                            <h5 id="e3" style="margin-left: -202px">Enter Phone Number</h5>
                            <input type="text"  id="fp1" onkeypress="return event.charCode >= 48 && event.charCode <= 57" required/><br><br>

                            <br><input  type="button" id="b1"  value="GENERATE OTP"  onclick="runforgototp()"/>


                        </center>
                    </div>

                    <div class="modal-footer" id="mh2">
                        <center>
                            <h5>You will receive SMS containing the OTP from us </h5>
                        </center>
                    </div>
                </div>

            </div>
        </div>
















        <script>
            var timer;
            function go17()
            {

                $('#myModaltimeup').modal('hide');
                $('#Mforgot').modal('hide');
                $('#myModalverify').modal('show');
                var count = 300;
                timer = setInterval(function () {
                    $("#timer").html((count--));
                    if (count == 0)
                    {
                        clearTimeout(timer);
                        $('#myModalverify').modal('hide');

                    }
                }, 1000);

            }


        </script>

        <div class="modal fade" id="myModalverify" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh8">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D;font-family: 'Roboto', sans-serif;">Verifying, please wait</h4></center>
                        <div id="holder">
                            <div class="loading loading-flash">
                                <div></div>
                                <div></div>
                                <div></div>
                            </div>
                        </div>
                        <div class="modal-body">
                            <center style="margin-top: 30px;">
                                <h5 id="e5" style="margin-left: -300px">Enter OTP</h5>
                                <input type="text"  id="p4" required/><br>
                                <label id ="timer" style="    margin-left: 319px;padding: 5px;">300</label>sec

                                <br><input type="button" id="b4"  value="VERIFY OTP" onclick="checkotp()"/>


                            </center>
                        </div>

                        <div class="modal-footer" id="mh7">
                            <center>
                                <h5 style='margin-top: -6px'>If the verification is taking time, please enter the OTP <br>you've received in the SMS</h5>
                            </center>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script>


        </script>



        <script>
            function timeup()
            {

                clearTimeout(timer);
                $('#myModalverify').modal('hide');
                $('#myModaltimeup').modal('show');


            }


        </script>


        <div class="modal fade" id="myModaltimeup" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh8" style="margin-top: 5px">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D;font-family: 'Roboto', sans-serif;">Sorry :( Time's up!</h4></center>

                        <div class="modal-body">
                            <center style="margin-top: 30px;">
                                <h5 id="e6" style="margin-left: -239px">Enter phone number</h5>
                                <input type="text"  id="ffp1"  onkeypress="return event.charCode >= 48 && event.charCode <= 57" required/><br><br><br>

                                <br><input type="button" style='width:150px;color:white;background-color: #4EAE4D;border-style: none;padding: 9px'  value="REGENERATE OTP" onclick="runforgototp1()"/>


                            </center>
                        </div>

                        <div class="modal-footer" id="mh7">

                        </div>
                    </div>

                </div>
            </div>
        </div>





        <script>
            function go7()
            {
                {

                    $('#myModal').modal('hide');
                    $('#myModal2').modal('show');
                }
            }


            function checkphonereg()
            {
                var phone = document.getElementById("p1r").value.toString();
                if (phone.length != 10)
                {
                    alert("phone number should of 10 digits");

                }
            }



        </script>



        <div class="modal fade" id="myModal2" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh3">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D">Create your account</h4></center>
                    </div>
                    <div class="modal-body">
                        <center>
                            <h5 id="e7" style="margin-left: -203px">Enter Phone Number</h5>
                            <input type="text" id ="p1r"  onkeypress="return event.charCode >= 48 && event.charCode <= 57" required/><br><br>

                            <h5 id="e8" style="margin-left: -249px">Enter Password</h5> 
                            <input type="password"  id="p2r" onclick="checkphonereg()" required/>
                            <img src="theicon.png" style="width:30px;height:30px;margin-left: -39px;padding: 4px 5px; " onmouseover="mouseoverPass();" onmouseout="mouseoutPass();">
                            <br><br>

                            <h5 id="e9" style="margin-left: -228px">Confirm Password</h5> 
                            <input type="password"  id="p3r"  required/>
                            <img src="theicon.png" style="width:30px;height:30px;margin-left: -39px;padding: 4px 5px; " onmouseover="mouseoverPass();" onmouseout="mouseoutPass();">


                            <br><br><input type="button"  id="b2" value="NEXT" onclick="go8()"/>
                        </center>
                    </div>

                    <div class="modal-footer" id="mh4">
                        <center>
                            <h6 style="color:#4EAE4D;cursor: pointer;margin-top: -8px;padding: 10px">Already a member? <strong><span style="text-decoration: underline">Login Now</span></strong></h6>
                        </center>
                    </div>
                </div>

            </div>
        </div>




        <script>
            function go9()
            {
                $('#myModal2').modal('hide');
                {
                    $('#myModal3').modal('show');
                }
            }


        </script>

        <div class="modal fade" id="myModal3" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" style="padding:10px" id="mh5">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D">Create your account</h4></center>
                    </div>
                    <div id="modal13" class="modal-body">
                        <center>
                            <h5 id="e10" style="margin-left: -284px">First Name</h5>
                            <input type="text"  id="p1rr" required/><br><br>

                            <h5 id="e11" style="margin-left: -287px">Last Name</h5>
                            <input type="text"  id="p2rr" required/><br><br>

                            <h5 id="e12" style="margin-left: -306px">Address</h5> 

                            <textarea rows="3" cols="30" id="p3rr" name="address" style="resize: none;padding: 6px 6px;height: 72px"></textarea><br><br>


                            <h5 id="e13" style="margin-left: -305px">Pincode</h5>
                            <input type="text"  id="p4rr" style="width: 114px;margin-left: -254px;" onkeypress="return event.charCode >= 48 && event.charCode <= 57"  required />

                            <h5 id="e14" style="    margin-left: -32px;margin-top: -66px;">Email</h5>
                            <input type="text" style="width: 221px;margin-left: 150px;" id="p5rr"   required/><br>

                            <br><br><input type="button" id="b3" value="REGISTER"  onclick="go10()"/>
                        </center>
                    </div>

                    <div class="modal-footer" id="mh6">

                    </div>
                </div>

            </div>
        </div>


        <script>
            function verified()
            {

                {
                    $('#myModalverify').modal('hide');
                    $('#myModalverified').modal('show');
                }
            }
        </script>


        <div class="modal fade" id="myModalverified" role="dialog" >
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" id="mh3">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="color:#4EAE4D">OTP Verified! Reset Password</h4></center>
                    </div>
                    <div class="modal-body">
                        <center>

                            <h5 id="e15" style="margin-left: -215px">Enter new Password</h5> 
                            <input type="password"  id="p6"  required/>
                            <img src="theicon.png" style="width:30px;height:30px;margin-left: -39px;padding: 4px 5px; " onmouseover="mouseoverPass();" onmouseout="mouseoutPass();">
                            <br><br>

                            <h5 id="e16" style="margin-left: -137px">Re-enter Password to confirm</h5> 
                            <input type="password"  id="p7"  required/>
                            <img src="theicon.png" style="width:30px;height:30px;margin-left: -39px;padding: 4px 5px; " onmouseover="mouseoverPass();" onmouseout="mouseoutPass();">


                            <br><br><input type="button"  id="b2" value="CONFIRM" onclick="resetpassword()"/>
                        </center>
                    </div>

                    <div class="modal-footer" id="mh4">

                    </div>
                </div>

            </div>
        </div>








        <script>
            function go16()
            {
                {
                    $('#myModal5').modal({backdrop: 'static', keyboard: false});
                }
                document.getElementById("placeholder12").innerHTML = "";
                var k, j, rate;
                var total = 0;
                var cart = JSON.parse(sessionStorage.cart) || [];
                var count = JSON.parse(sessionStorage.count) || [];
                var flag;
                var products = [];

                sessionStorage.products = JSON.stringify(products);
                var id = cart[0];
                products.push(id);
                for (var i = 0; i < cart.length; i++)
                {
                    flag = true;
                    id = cart[i];
                    for (j = 0; j < products.length; j++)
                    {

                        if (cart[i] == products[j])
                        {

                            flag = false;
                            break;
                        }
                    }

                    if (flag == true)
                    {
                        products.push(id);
                    }
                    sessionStorage.products = JSON.stringify(products);
                }

                var addpro = [];
                sessionStorage.addpro = JSON.stringify(addpro);

                for (var i = 0; i < products.length; i++)
                {

                    var num = 0;
                    for (j = 0; j < cart.length; j++)
                    {

                        if (cart[j] == products[i])
                        {
                            num++;
                        }
                    }
                    addpro.push(num);

                    sessionStorage.addpro = JSON.stringify(addpro);
                }

                $.ajax(
                        {
                            url: "http://ruralict.cse.iitb.ac.in/ruralict/api/products/search/byType/lcpmapnew?orgabbr=lcart",
                            beforeSend: function (xhr) {
                                xhr.setRequestHeader("Authorization", "Basic " + btoa("lokacart@cse.iitb.ac.in" + ":" + "password"));
                            },
                            type: "GET",
                            contentType: 'application/json; charset=utf-8',
                            crossDomain: true,
                            dataType: 'json',
                            async: false,
                            success: function (msg) {
                                /*$.each( msg.products[0].Vegetabels,function(key,value) {
                                 console.log(value.name);
                                 
                                 });*/
                                var x, y;
                                var flag = 0;
                                var item = [];
                                var total = 0;
                                for (k = 0; k < products.length; k++)
                                {
                                    for (var i = 0; i < msg['products'].length; i++)
                                    {
                                        //console.log(item[i]);
                                        for (x in msg['products'][i])
                                        {
                                            //  console.log(x);
                                            if ((x != "productTypeId") && (x != "status") && (x != "typename"))
                                            {
                                                for (y in msg['products'][i][x])
                                                {
                                                    //console.log(item['products'][i][x][y].name);

                                                    //console.log(msg['products'][i][x][y].name);
                                                    var image = msg['products'][i][x][y].imageUrl;
                                                    var id = msg['products'][i][x][y].id;
                                                    var addpro = JSON.parse(sessionStorage.addpro) || [];

                                                    if (id == products[k])
                                                    {
                                                        var num = 25 + addpro[k];
                                                        var article = document.createElement("article");
                                                        var price = msg['products'][i][x][y].unitRate * num;
                                                        article.innerHTML = "<div class='row' id=" + id + "><div id='c1' class='col-sm-3' style='margin-left: 25px;'><img id='c7' style='height:122px; width:122px;margin-top: 28px;object-fit:cover' src='" + image + "' width=100%/></div><div id='c2' class='col-sm-5' style='object-fit:cover;margin-left: 8px;text-align:left;'><h5 style='color:#4EAE4D;margin-top: 26px;font-weight: 500;'>" + msg['products'][i][x][y].name + "</h5><h5 style='margin-top: -7px;color: #4eae4d;font-size: 11px; font-family: 'Roboto', sans-serif;'>IIT BOMBAY</h5><br><h5 style='margin-top: 16px;font-size: 12px;font-weight: 500;color: #555;margin-bottom: 3px; font-family: 'Roboto', sans-serif'>Min order: 25kg</h5><button type='button' onclick='go19(" + id + ")'id=mm" + msg['products'][i][x][y].id + " class='btn btn-default btn-circle' style='background-color:#4EAE4D; margin-left:1%;'><i class='glyphicon glyphicon-minus whiteplus' style='font-size:11px;color: white;'></i></button><span id='c6'><label id=lbm" + msg['products'][i][x][y].id + " style='color:#4EAE4D;margin-left:2%;padding: 2px;font-size: 13px;'>" + num + "kg</label></span><button onclick='go20(" + id + ")' type='button' class='btn btn-default btn-circle' style='background-color:#4EAE4D;margin-left:1%'><i class='glyphicon glyphicon-plus whiteplus' style='font-size:11px;color: white;'></i></button><span id='c8' style='margin-left:12%;font-size: 14px;'>x &nbsp; ₹<label style='color: #555;font-weight: 400;font-family: Roboto, sans-serif;' id='lbm5" + id + "'>" + msg['products'][i][x][y].unitRate + " </label></span></span></div><div id='c9'><span id='c10' style='margin-left: 60px;color: #4eae4d;font-family: Roboto, sans-serif;position: absolute;margin-top: 125px;'>₹</span><label style='margin-top: 122px;margin-left: 74px;font-weight: 500;color: #4eae4d; font-family: 'Roboto', sans-serif' id='lbm2" + id + "'>" + price + "</label></div><div><img id='c3' src='delete.png' onclick='del(" + id + ")' style='width: 15px;margin-left: 532px;margin-top: -266px;height: 15px;'></div></div><div style='background-color: #ccc;height: 1px;margin-left: -15px;margin-right: -15px;'></div>";
                                                        document.getElementById("placeholder12").appendChild(article);
                                                        var total = total + price;
                                                        document.getElementById("total").innerHTML = total;
                                                    }


                                                }
                                            }
                                        }
                                    }
                                }




                            }

                        });




            }

            function go19(id)
            {
                var value = parseInt(document.getElementById("lbm" + id).textContent);
                var rate = parseInt(document.getElementById("lbm2" + id).textContent);
                var price = parseInt(document.getElementById("lbm5" + id).textContent);


                var total = 0;
                if (value != 25)
                {
                    value = value - 1;
                    rate = value * price;
                    document.getElementById("lbm" + id).innerHTML = value;
                    document.getElementById("lbm2" + id).innerHTML = rate;
                    var product = JSON.parse(sessionStorage.products) || [];
                    for (var i = 0; i < product.length; i++)
                    {
                        rate = parseInt(document.getElementById("lbm2" + product[i]).textContent);
                        total = total + rate;
                    }
                    document.getElementById("total").innerHTML = total;
                }

            }
            function go20(id)
            {
                var rate = parseInt(document.getElementById("lbm2" + id).textContent);
                var price = parseInt(document.getElementById("lbm5" + id).textContent);
                var value = parseInt(document.getElementById("lbm" + id).textContent);
                var total = 0;
                value = value + 1;
                rate = value * price;
                document.getElementById("lbm" + id).innerHTML = value;
                document.getElementById("lbm2" + id).innerHTML = rate;
                var product = JSON.parse(sessionStorage.products) || [];
                for (var i = 0; i < product.length; i++)
                {
                    rate = parseInt(document.getElementById("lbm2" + product[i]).textContent);
                    total = total + rate;
                }
                document.getElementById("total").innerHTML = total;

            }

            function del(id)
            {
                var rate = parseInt(document.getElementById("lbm2" + id).textContent);
                var price = parseInt(document.getElementById("lbm5" + id).textContent);
                var value = parseInt(document.getElementById("lbm" + id).textContent);
                var total = parseInt(document.getElementById("total").textContent);
                rate = value * price;
                total = total - rate;
                document.getElementById("total").innerHTML = total;
                var id1 = id;
                var products = JSON.parse(sessionStorage.products) || [];
                var cart = JSON.parse(sessionStorage.cart) || [];

                for (var i = 0; i < cart.length; i++)
                {

                    if (cart[i] == id)
                    {
                        cart.splice(i, 1);
                        i--;
                    }
                }
                for (var i = 0; i < products.length; i++)
                {
                    if (products[i] == id)
                        products.splice(i, 1);
                }


                sessionStorage.cart = JSON.stringify(cart);
                sessionStorage.products = JSON.stringify(products);
                var count = products.length;
                sessionStorage.count = JSON.stringify(count);
                document.getElementById("count").innerHTML = count;
                $('#' + id1 + '').remove();
                if (count == 0)
                    window.location.href = "home.html";
            }
            function dismiss()
            {
                window.location.assign("fruit.html");
            }

        </script>
        <div class="modal fade" id="myModal5" role="dialog" >
            <div id="cart_modal" class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header" style="background-color: #4eae4d;">
                        <button type="button" class="close" onclick="dismiss()" data-dismiss="modal">&times;</button>
                        <center> <h4 class="modal-title" style="border: none; color:white">My Cart</h4></center>
                    </div>
                    <div id="cart_body" class="modal-body" style="    overflow: auto; height: 462px;">

                        <div id="placeholder12"></div><br>


                    </div>

                    <div style="background-color:#D8ECB7;padding: 1px 0px;">
                        <h4 id="c4" style="margin-left: 42px;color: #4eae4d;">Total</h4>
                        <h5 id="c5" style="margin-left: 500px;margin-top: -31px;color: #4eae4d;">₹</h5><h4 style="margin-left: 515px;color: #4eae4d;margin-top: -31px;" id="total"></h4>

                    </div>
                    <div class="modal-footer" style=" background-color: #4eae4d;"> 

                        <center>
                            <div><input type="button" style="border: none;color: white;background-color: #4eae4d;font-weight: 600" value="CHECKOUT" onclick="go23()"/></div>
                        </center>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>

