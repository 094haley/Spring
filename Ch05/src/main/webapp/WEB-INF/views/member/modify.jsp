<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>member::modify</title>
	</head>
	<body>
		<h3>member 수정</h3>
		<a href="/Ch05/">처음으로</a>
		<a href="/Ch05/member/list">member 목록</a>
		<form action="/Ch05/member/modify" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" value="${member.uid}"/></td>
				</tr>			
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${member.name}"/></td>
				</tr>			
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" value="${member.hp}"/></td>
				</tr>			
				<tr>
					<td>직급</td>
					<td>
						<select name="pos">
							<option ${member.pos =='사원' ? 'selected':''}>사원</option>
							<option ${member.pos =='대리' ? 'selected':''}>대리</option>
							<option ${member.pos =='과장' ? 'selected':''}>과장</option>
							<option ${member.pos =='차장' ? 'selected':''}>차장</option>
							<option ${member.pos =='부장' ? 'selected':''}>부장</option>
						</select>
					</td>
				</tr>			
				<tr>
					<td>부서</td>
					<td>
						<select name="dep">
							<option value="101" ${member.dep == 101 ? 'selected':''}>영업1부</option>
							<option value="102" ${member.dep == 102 ? 'selected':''}>영업2부</option>
							<option value="103" ${member.dep == 103 ? 'selected':''}>영업3부</option>
							<option value="104" ${member.dep == 104 ? 'selected':''}>인사부</option>
							<option value="105" ${member.dep == 105 ? 'selected':''}>영업지원부</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>입사일</td>
					<td><input type="date" name="rdate" value="${fn:substring(member.rdate, 0, 10)}"/></td>
				</tr>			
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="등록">
					</td>
				</tr>			
			</table>
		</form>
	</body>
</html>