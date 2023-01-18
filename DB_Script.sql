
/*Oracle XE DataBase 에서 Table 생성 */

Create Table guestlab (

	idx varchar2(200) primary key,		--시퀀스를 가져올수 있음.
	ename varchar2(200),
	phone varchar2(200),
	gender varchar2(200),
	addr varchar2(200)
	);

/*
	guestlab_list.jsp		<== guestlab_read.jsp , guestlab_del.jsp, guestlab_upd.jsp
					클릭하면 읽기(read)페이지로 넘어감 그안에 삭제.수정 버튼 위치
					폰 클릭하면 id = ,page = 변수 두개 넘김
	idx		ename		phone	gender	addr
	===========================================
	번호 		메일			 폰(링크)	  성별 	주소
	===========================================	
	20	aaa@aaa.com 010-1111-1111 남자	서울
	19	aaa@aaa.com 010-1111-1111 남자	서울
	18	aaa@aaa.com 010-1111-1111 남자	서울
	17	aaa@aaa.com 010-1111-1111 남자	서울
	16	aaa@aaa.com 010-1111-1111 남자	서울
	
	============================================
			[처음][이전] 1 2 3 4 5 [다음][마지막]
	

**/	
	
	
/* 
 	guestlab_show.jsp		//rs에서 값을 가져와서 출력
 	guestlab_show02.jsp		//rs에서 값을 Vector에 저장 후 출력 (for문)
 	guestlab_show03.jsp		//rs에서 값을 ArrayList 저장 후 출력
 	
 */	
	
	
/* 1. WEB-INF/lib	라이브러리 넣어야 함 
   2. Oracle DB 연결 설정
   3. 폼페이지를 생성해야 함. guestlab_write.html
   4. form 에서 action을 처리하는 페이지 생성 guestlab_save.jsp			
   		form에서 값을 받아서 DB에 저장하는 페이지 
   		
  압축 안되면 압축된 파일의 확장자만 떨어뜨려라 .zip
 */
	

	
	



		