<%-- 
    Document   : HeaderNew
    Created on : 03-Jan-2014, 14:21:12
    Author     : Mohamed
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>${pageTitle}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.css" rel="stylesheet">
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resources/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resources/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resources/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resources/ico/favicon.png">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ico/favicon.png">


        <style type="text/css"></style><style type="text/css">/* Local ID — mndocdiojkckhpnhpeminpalidafeink */
            /* Web Store ID — ihmgiclibbndffejedjimfjmfoabpcke */

            .TnITTtw-help-selected-wrap {
                border: 1px solid #C7C6C2;
                box-shadow: 0 0 10px rgba(43, 43, 43, 0.325);
                border-radius: 4px;
                width: 231px
            }

            .TnITTtw-help-inside-layout {
                height: 133px;
                background: #F5F5F5;
                border-radius: 3px
            }

            .TnITTtw-left-particle {
                border-top-left-radius: 4px;
                border-bottom-left-radius: 4px;
                box-shadow: inset 0 1px 0 white;
                color: #4E4E4E;
                text-shadow: 0 1px 0 white;
                width: 194px;
                display: inline-block;
                border-right: 1px solid #D9D9D9
            }

            .TnITTtw-content-layout {
                text-align: left;
                margin: 10px 15px
            }

            .TnITTtw-variant-bunch-wrap {

            }

            .TnITTtw-variant-bunch-wrap .inside-layout {

            }

            .TnITTtw-main-variant-wrap {

            }

            .TnITTtw-main-variant {
                font-weight: 700;
                font-size: 15px;
                text-shadow: 0 1px 0 rgba(255, 255, 255, 0.775);
                display: inline-block;
                vertical-align: top;
                color: #2B2B2B
            }

            .TnITTtw-variants-by-pos {

            }

            .TnITTtw-TnITTtw-variant-row {
                text-shadow: 0 1px 0 rgba(255, 255, 255, 0.775)
            }

            .TnITTtw-v-pos {
                font-weight: 700;
                margin-top: 10px;
                font-size: 12px;
                color: #545454
            }

            .TnITTtw-v-pos:first-child {
                margin-top: 8px
            }

            .TnITTtw-v-closest-wrap {
                font-size: 13px;
                color: #4E4E4E
            }

            .TnITTtw-v-item {
                display: inline-block
            }

            .TnITTtw-listen-disabled {
                opacity: 0.475;
                cursor: default
            }

            .TnITTtw-right-particle {
                background: rgba(255, 255, 255, 0.125);
                border-top-right-radius: 4px;
                border-bottom-right-radius: 4px;
                display: inline-block;
                width: 36px;
                height: 133px;
                vertical-align: top;
                box-shadow: inset 1px 0 3px rgba(43, 43, 43, 0.05), inset 0 1px 0 #F5F5F5
            }

            .TnITTtw-sidebar {

            }

            .TnITTtw-sbutton {
                position: absolute;
                -webkit-user-select: none;
                cursor: pointer
            }

            .TnITTtw-listen-button {
                width: 16px;
                height: 17px;
                background: url(chrome-extension://ihmgiclibbndffejedjimfjmfoabpcke/resources/images/sprites/sprite.png);
                background-position: -54px 153px;
                margin: 10px 0 0 10px
            }

            .TnITTtw-listen-button:active, .TnITTtw-listen-disabled {
                background-position: -54px 136px
            }

            /* ========== */
            /* Scrollbars */

            #TnITTtw-trVisibleLayout {
                position: relative !important;
                overflow: hidden;
                height: 133px;
                width: 100%
            }

            #TnITTtw-tr-scrollbar {
                position: absolute;
                display: block;
                width: 9px; 
                height: 135px; 
                font-size: 1px
            }

            #TnITTtw-track { 
                position: absolute;
                left: 185px;
                top: -134px;
                width: 11px;
                height: 129px;
                background: transparent
            }

            #TnITTtw-dragBar {
                position: absolute; 
                left: 1px;
                top: 1px;
                width: 5px; 
                height: 10px;
                background: rgba(43, 43, 43, 0.475);
                cursor: pointer;
                border-radius: 3px;
                box-shadow: 0 1px 0 #FFF
            }

            #TnITTtw-dragBar:hover, #TnITTtw-dragBar:active {
                background: rgba(43, 43, 43, 0.775)
            } 

            #TnITTtw-scrollbar, #TnITTtw-track, #TnITTtw-dragBar {
                -webkit-user-select: none
            }

            .TnITTtw-arrow {
                display: none;
                width: 12px;
                height: 6px;
                background: url(chrome-extension://ihmgiclibbndffejedjimfjmfoabpcke/resources/images/sprites/sprite.png);
                position: relative
            }

            .TnITTtw-top-arrow {
                background-position: -108px 148px;
                bottom: -1px
            }

            .TnITTtw-bottom-arrow {
                background-position: -108px 154px;
                top: -1px
            }</style><style type="text/css">#TnITTtw-tooltip-wrap {
                position: absolute;
                z-index: 9999;
                font-family: Tahoma;
                font-size: 13px;
                line-height: normal
            }

            .TnITTtw-inside-layout {

            }

            .TnITTtw-content {

                }</style><style type="text/css">.help-tt-wrap {
                background: rgba(0, 0, 0, 0.575);
                color: #FFF;
                padding: 10px;
                border-radius: 3px;
                text-shadow: 0 1px 0 rgba(0, 0, 0, 0.775)
            }

            .text-layout {

            }

            .text-container {

            }

            .TnITTtw-arrow {
                display: none;
                width: 12px;
                height: 6px;
                background: url(../../../images/sprites/sprite.png);
                position: relative
            }

            .TnITTtw-top-arrow {
                background-position: -18px 86px;
                bottom: -1px
            }

            .TnITTtw-bottom-arrow {
                background-position: -18px 80px;
                top: -1px
                }</style><style type="text/css">#TnITTtw-tooltip-wrap {
                position: absolute;
                z-index: 9999;
                font-family: Tahoma;
                font-size: 13px;
                line-height: normal
            }

            .TnITTtw-inside-layout {

            }

            .TnITTtw-content {

                }</style><style type="text/css"></style><style type="text/css"></style>


    </head>

    <body >
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="${pageContext.request.contextPath}/index.jsp">Egypt Technology</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>

<%--                             <c:if test="${sessionScope.user.userRule.name eq 'Admin'}"> --%>
                                
<!--                                 <li class="dropdown"> -->
<!--                                     <a href="" class="dropdown-toggle" data-toggle="dropdown">Invoice <b class="caret"></b></a> -->
<!--                                     <ul class="dropdown-menu"> -->
<%--                                         <li><a href="${pageContext.request.contextPath}/pages/User/Invoices.jsp">Invoice List</a></li> --%>
<%--                                         <li> <a href="${pageContext.request.contextPath}/pages/User/addInvoice.jsp">Add Invoice</a></li> --%>

<!--                                         <li class="divider"></li> -->
<!--                                         <li class="nav-header">Nav header</li> -->

<!--                                     </ul> -->
<!--                                 </li> -->
<!-- <!----------------------------------------------------------------------------------------------------------------------------------->                                 -->
<!--                                 <li class="dropdown"> -->
<!--                                     <a href="" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a> -->
<!--                                     <ul class="dropdown-menu"> -->
<%--                                         <li><a href="${pageContext.request.contextPath}/pages/Admin/Products">Product List</a></li> --%>
<%--                                         <li> <a href="${pageContext.request.contextPath}/pages/Admin/addProduct.jsp">Add Product</a></li> --%>

<!--                                         <li class="divider"></li> -->
<!--                                         <li class="nav-header">Nav header</li> -->

<!--                                     </ul> -->
<!--                                 </li> -->
<!-- <!-----------------------------------------------------------------------------------------------------------------------------------> -->
<!--                                 <li class="dropdown"> -->
<!--                                     <a href="" class="dropdown-toggle" data-toggle="dropdown">Providers <b class="caret"></b></a> -->
<!--                                     <ul class="dropdown-menu"> -->
<%--                                         <li><a href="${pageContext.request.contextPath}/pages/Admin/Providers">Provider List</a></li> --%>
<%--                                         <li> <a href="${pageContext.request.contextPath}/pages/Admin/addProvider.jsp">Add Provider</a></li> --%>

<!--                                         <li class="divider"></li> -->
<!--                                         <li class="nav-header">Nav header</li> -->

<!--                                     </ul> -->
<!--                                 </li> -->
<%--                             </c:if> --%>



<!--                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>-->

                        </ul>
                        <c:choose >
                            <c:when test="${sessionScope.user eq null}">
                                <form class="navbar-form pull-right" action="${pageContext.request.contextPath}/Login" method="POST">
                                    <input class="span2" type="text" placeholder="User Name" required="true" name="userName">
                                    <input class="span2" type="password" placeholder="Password" required="true" name="pass">
                                    <button type="submit" class="btn">Sign in</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <div class="navbar-form pull-right" >
                                    <span>
                                        <il class=" icon-user icon-white " />
                                        <il class="text-info span2 pull-left ">${sessionScope.user.name}</il>
                                        <il> <a href="${pageContext.request.contextPath}/Logout" class="text-info span2 pull-left" >Logout </a><il>
                                                </span>
                                                </div>

                                            </c:otherwise>
                                        </c:choose>

                                        </div><!--/.nav-collapse -->
                                        </div>
                                        </div>
                                        </div>
                                        <div class="container">
                                            <!-- Main hero unit for a primary marketing message or call to action -->
                                            <div class="hero-unit">
                                                <!--<img src="${pageContext.request.contextPath}/resources/img/964920_521159731254594_309959603_o.jpg" alt="" />-->
                                                <h1>Egypt Tech.</h1>
                                                <p>Exchange your old PC with new one.</p>
                                                <p><a href="#" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
                                            </div>
                                            
                                            
                                            
                                            <c:if test="${not empty param.barMessage }">
                                                <div class="alert alert-${param.barMessageType}">
                                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                                    <strong>${param.barMessageType} : </strong> ${param.barMessage}
                                                </div>
                                            </c:if>
