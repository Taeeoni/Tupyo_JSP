<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <head>

    </head>
	<style>
	table, th, td { 
        border: 2px solid orange; 
    }

	table { 
		border-collapse: collapse;
	}
	
	.blue{
		border: solid 2px blue;
		border-radius: 8px;
	}
	
	.gray{
		border: 2px solid gray;
	}

	</style>
	
    <body>
	<h1>후보등록</h1>
	</br>
	<form method = "post" >

		<div>
			<tr><td colspan='2'><input formaction='A_01_H.jsp' class='blue' type = "submit" value="후보등록"/>
			<input class='blue' type = "submit" value="투표"/>
			<input class='blue' type = "submit" value="개표결과"/></td></tr>
			</br></br>
            <h3>후보등록 결과 : 후보가 추가(삭제) 되었습니다.</h3>
		</div>
	</form>
    </body>
</html>