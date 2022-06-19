<%@ page import="ibragim.bitlab.sprint1.models.Item" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ibragim
  Date: 22.05.2022
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style>
        .wrapper{
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-template-rows: repeat(3, 100px);
        }
    </style>
</head>
    <body>
    <%@include file="vendors/navbar.jsp"%>
    <%@include file="vendors/bootstrap.jsp"%>

    <div class="text-center mx-auto mt-3">
        <h1>WELLCOME TO BITLAB SHOP</h1>
        <p>HIGH QUALITY ELECTRONIC DEVICES FOR CHEAP PRICE</p>
    </div>

        <div class="container">
            <div class="wrapper row mt-3">
                <%ArrayList<Item> itemsToShow = (ArrayList<Item>) request.getAttribute("allItems");
                for(Item i : itemsToShow){%>
                    <div class="col mt-3">
                        <div class="card text-center" style="width: 20rem;">
                            <div class="card-header">
                                <h5 class="card-title"><%=i.getName()%></h5>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title text-success">$<%=i.getPrice()%></h5>
                                <p class="card-text"><%=i.getDescription()%></p>
                                <a href="#" class="btn btn-success w-75">BUY NOW</a>
                            </div>
                        </div>
                    </div>
                <%}%>
            </div>
        </div>
    </body>

</html>
