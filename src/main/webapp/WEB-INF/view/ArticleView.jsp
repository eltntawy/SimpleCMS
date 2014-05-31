<%-- 
    Document   : index
    Created on : 29-Dec-2013, 20:46:53
    Author     : Mohamed
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:import url="${pageContext.request.contextPath}/resources/Header.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Header.jsp" %> --%>
<jsp:include page="../../resources/Header.jsp" />

<<style>
<!--
.article-div {
   overflow: scroll;
   height: 160pt;
}
-->
</style>

<!-- Thumbnails ================================================== -->
<h2>Articles</h2>
<p>grate writers for grate readers.</p>

<div class="row-fluid">
	<section id="thumbnails">

		<ul class="thumbnails">
			<c:forEach var="article" items="${articleList}">

				<li class="span4 ">
					<div class="thumbnail ">
						<img
							src="${pageContext.request.contextPath}/resources/img/blank.png"
							class="img-">
						<div class="caption">
							<h3>${article.name}</h3>
							<p class="article-div">${article.description}</p>
							<p>
								<a href="#" class="btn btn-primary">Action</a> <a href="#"
									class="btn">Action</a>
							</p>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</section>
</div>

<hr>

<%-- <c:import url="${pageContext.request.contextPath}/resources/Footer.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Footer.jsp" %> --%>
<jsp:include page="../../resources/Footer.jsp" />

