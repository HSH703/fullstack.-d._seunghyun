<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../inc/header.jsp"%>
<script>
	$(function() {
		let result = '${success}';
		console.log(result);
		if (result == "글쓰기실패") {
			alert(result);
			history.go(-1);
		} else if (result.length == '비밀번호를 확인해주세요') {
			alert(result);
			history.go(-1);
		} else if (result.length > 0) {
			alert(result)
		} //아까 처음 값이 없을때 공백
	});
</script>
<div class="container card  my-5 p-4">
	<h3 class="card-header">관리자 MBTI USER BOARD</h3>

	<table class="table table-striped table-bordered table-hover">
		<caption>mbti</caption>
		<thead>
			<tr>
				<th scope="col">NO</th>
				<th scope="col">USERNO</th>
				<th scope="col">EMAIL</th>
				<th scope="col">MBTI TYPE</th>
				<th scope="col">DATE</th>
				<th scope="col">수정</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="dto" items="${list}" varStatus="status">
				<tr>
					<%--<td>${dto}</td>  --%>
					<td>${list.size()-status.index}</td>
					<%--3-0=3 3-1=2 3=2=1 --%>
					<td>${dto.appUserId}</td>
					<td><a
						href="${pageContext.request.contextPath}/mypage.users?appUserId=${dto.appUserId}">
							${dto.email}
					 </a></td>
					<td>${dto.mbtiTypeId}</td>
					<td>${dto.createdAt}</td>
					<td><input type="button" value="수정" class="btn btn-primary" /></td>
					<td><input type="button" value="삭제" class="btn btn-danger" /></td>
				</tr>
			</c:forEach> 
		</tbody>
	</table>
</div>

<%@include file="../inc/footer.jsp"%>

<!-- [ mbtiBoard - list.jsp ]  -->