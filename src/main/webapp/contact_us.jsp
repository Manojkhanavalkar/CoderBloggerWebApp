<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Contact Us</title>
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	
</head>
<style>
	        body{
            padding: 0;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            color: rgb(48, 46, 46);
            background-color: rgba(224, 217, 217, 0.863);
        }
        .container{
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 25px;
        }
        hr{
            width: 80%;
        }
        h2{
            font-size: 20px;
        }
        .contact-items{
            display: flex;
            margin: 30px auto;
            flex-wrap: wrap;
            align-items: center;

        }
        .customer-care,.write-us,.sales-market{
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 28%;
            margin: 30px auto;
            padding: 35px 15px;
            border-radius: 15px;
            text-align: center;
            min-width: 250px;
            
        }
        .customer-care{
            height: 250px;
            box-shadow: 0 15px 15px green;
            border: 1px solid green;
        }
        .write-us{
            height: 250px;
            box-shadow: 0 15px 15px red;
            border: 1px solid red;
        }
        .sales-market{
            height: 250px;
            box-shadow: 0 15px 15px blue;
            border: 1px solid blue;
        }
        p{
            font-size: 18px;
            color: black;
            padding: 2px 67px;
            margin-top: 2px;
        }
        button{
            padding: 8px 16px;
            font-size: 17px;
            border-radius: 25px;
            border: none;
            margin: 15px auto;
            cursor: pointer;
            color: rgb(255, 255, 255);
        }
        button:hover{
            color: gray;
        }
        #cust-care{
            background: green;
			margin-top: 32px;
            box-shadow: 0 0 5px black;
        }
        #write{
            background: rgb(187, 15, 15);

            box-shadow: 0 0 5px black;
        }
        #sales{
            background: blue;
            box-shadow: 0 0 5px black;
        }
        a{
            font-size: 16px;
        }
        .customer-care a{
            display: inline-flex;
			justify-content: center;
			align-items: center;
			width: 74px;
			height: 64px;
			background: transparent;
			border: 2px solid black;
			border-radius: 50%;
			font-size: 3rem;
			color: black;
			transition: .5s ease;
			text-decoration: none;
        }
        
        .customer-care h3 {
        	text-align: center;
        	color: red;
        	font-size: 30px;
        	margin-top: 15px;
        }
        .sales-market a{
            color: blue;
            text-shadow: 0 0 2px rgba(76, 62, 158, 0.637);
        }
	
</style>
<body>
	
    <div class="container">
        <h1>Contact Us</h1>
        <hr>
        <h2>Have any questions? We'd love to hear from you</h2>
        <div class="contact-items">
            <div class="customer-care">
            	<a href="#"><i class='bx bxs-home'></i></a>
                <h3>Address</h3>
                <p> Dr. D.Y Patil Arts,Commerce and Science College, sant tukaran nagar, Pimpri Pune-411018 Maharashtra</p>
                
                
            </div>
            <div class="write-us">
            	<a href="#"><i class='bx bxs-phone-call'></i></a>
                <h3>PHONE</h3>
                <p> 7209771231</p>
                <p> 9309283261</p>
               
          
            </div>
            <div class="sales-market">
            	<a href="#"></a><i class='bx bxs-envelope'></i>
                <h3> Email</h3>
                <p>awantmishra1@gmail.com</p>
                <p>pankit26mishra711@gmail.com</p>
                
                

            </div>
        </div>
    </div>
</body>
</html>