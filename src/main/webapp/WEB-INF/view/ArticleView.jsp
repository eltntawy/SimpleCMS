<%-- 
    Document   : index
    Created on : 29-Dec-2013, 20:46:53
    Author     : Mohamed
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:import url="${pageContext.request.contextPath}/resources/Header.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Header.jsp" %> --%>
<jsp:include page="../../resources/Header.jsp" />

<!-- Thumbnails ================================================== -->
<h2>Articles</h2>
<div class="row" >


<c:forEach var="article" items="${articleList}">
<div class="thumbnail span6">
        <div >
          <h2 class="featurette-heading">${article.name} <span class="text-muted"></span></h2>

          ${article.description}

        </div>

      </div>
      </c:forEach>



</div>
      

      
      
<!-- <div class="row"> -->
<!-- 	<section id="thumbnails"> -->

<!-- 		<ul class="thumbnails"> -->
<%-- 			<c:forEach var="article" items="${articleList}"> --%>

<!-- 				<li class="span4  row featurette"> -->
<!-- 					<div class="thumbnail "> -->
<%-- <%-- 						<img src="${pageContext.request.contextPath}/resources/img/blank.png" class="img-">  --%>
<!-- 						<div class="caption"> -->
<%-- 							<h1>${article.name}</h1> --%>
<%-- 							<p class="article-div">${article.description}</p> --%>
<!-- 							<p></p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</li> -->
<%-- 			</c:forEach> --%>
<!-- 		</ul> -->
<!-- 	</section> -->
<!-- </div> -->



<%-- <c:import url="${pageContext.request.contextPath}/resources/Footer.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Footer.jsp" %> --%>
<jsp:include page="../../resources/Footer.jsp" />

