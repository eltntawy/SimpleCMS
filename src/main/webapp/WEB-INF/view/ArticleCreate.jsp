	<%-- 
	    Document   : index
	    Created on : 29-Dec-2013, 20:46:53
	    Author     : Mohamed
	--%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<%-- <c:import url="${pageContext.request.contextPath}/resources/Header.jsp"></c:import> --%>
	<%-- <%@include file="${pageContext.request.contextPath}/resources/Header.jsp" %> --%>
	<jsp:include page="../../resources/Header.jsp" />
	
	<script src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
	<script>
		tinymce.init({
			selector : 'textarea'
		});
	</script>
	
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script src="../../resources/external/jquery.hotkeys.js"></script>
	
	<script type="text/javascript">
		function saveArtical() {
			// 			$.ajax({
			// 				type : "POST",
			// 				contentType : 'application/json; charset=utf-8',
			// 				dataType : 'json',
			// 				url : "ArticleSave",
			// 				data : JSON.stringify(tinymce.get('text').getContent()),
			// 				success : function(a) {
			// 					alert("success : " + a);
			// 				},
			// 				fail : function(a) {
			// 					alert("fail : " + a);
			// 				}
			// 			});
	
			$.ajax({
				type : 'POST',
				url : 'ArticleSave',
				data : 'article=' + tinymce.get('text').getContent() + '&name='
						+ $("#name").val(),
				success : function(response) {
					alert('Article Saved !');

					 window.location.replace('index.jsp');
					
	
				},
				error : function(xhr, textStatus, errorThrown) {
					alert('Error!  Status = ' + xhr.status);
				}
			});
		};
		
		
		function cancelArtical() {
			window.location.replace('index.jsp');
		}
	</script>
	
	<!-- Example row of columns -->
	<div class="row">
	
		<div class="span4">
			<label class="lable">Article Name</label> <input type="text" id="name"
				value="" />
		</div>
		<div class="span12">
			<p>
				<label>Article Body</label>
			</p>
			<br />
			<textarea id="text">Your content here.</textarea>
	
			<input type="button" class="btn btn-primary span4" value="Save"
				onclick="saveArtical()" />
				
			<input type="button" class="btn btn-danger span4" value="Cancel"
			onclick="cancelArtical()" />
		</div>
	
	</div>
	
	
	
	<hr>
	
	<%-- <c:import url="${pageContext.request.contextPath}/resources/Footer.jsp"></c:import> --%>
	<%-- <%@include file="${pageContext.request.contextPath}/resources/Footer.jsp" %> --%>
	<jsp:include page="../../resources/Footer.jsp" />
	
