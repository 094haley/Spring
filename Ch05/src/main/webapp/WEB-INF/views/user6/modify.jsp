<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user6::modify</title>
	</head>
	<body>
		<h3>user6 수정</h3>
		<a href="/Ch05/">처음으로</a>
		<a href="/Ch05/user6/list">user6 목록</a>
		<form action="/Ch05/user6/modify" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" value="${user.uid}" readonly/></td>
				</tr>			
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${user.name}"/></td>
				</tr>			
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth" value="${user.birth}"/></td>
				</tr>			
				<tr>
					<td>성별</td>
					<td>
						<label><input type="radio" name="gender" value="1" ${user.gender == 1 ? 'checked':''}/>남</label>
						<label><input type="radio" name="gender" value="2" ${user.gender == 2 ? 'checked':''}/>여</label>
					</td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" value="${user.age}"/></td>
				</tr>			
				<tr>
					<td>주소</td>
					<td><input type="text" name="addr" value="${user.addr}"/></td>
				</tr>			
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" value="${user.hp}"/></td>
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