<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>

input[type=text], input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit], input[type=button] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    width: 30%;
    margin: 10px auto;
}

h3{
  text-align: center;
}


</style>
</head>
<body>

<h3>계좌조회</h3>

<div>
  <form name="accountForm" action="accountAction.jsp" method="post">
    <label for="accountNum">계좌번호</label>
    <input type="text" id="accountNum" name="accountNum" placeholder="계좌번호를 입력하세요">
    
    <label for="accountOwner">예금주</label>
    <input type="text" id="accountOwner" name="accountOwner" placeholder="예금주를 입력하세요">

    <label for="password">비밀번호</label>
    <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">

    <label for="restMoney">잔액</label>
    <input type="text" id="restMoney" name="restMoney" placeholder="잔액입니다">


    <input type="submit" value="등록">
    
  </form>
</div>

</body>
</html>


