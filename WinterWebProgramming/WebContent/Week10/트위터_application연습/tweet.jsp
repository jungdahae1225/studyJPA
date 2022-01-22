<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	
	// HTML 폼에서 전달된 msg 값을 가지고 옴
	String msg = request.getParameter("msg");
	
	// 세션에 저장된 로그인 사용자 이름을 가지고 옴
	Object username = session.getAttribute("user");
	
	@SuppressWarnings("unchecked") //(ArrayList<String>)으로 형변환을 할 때 워닝이 나올 수 있는데, 이걸 없애줌(필수x)
	// 메시지 저장을 위해 application 에서 msgs 로 저장된 기존의 ArrayList 가지고 옴
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	// null인 경우(기존에 누적된 글이 없다면) 새로운 ArrayList 객체를 생성
	if(msgs == null) {
		msgs = new ArrayList<String>();
		// application 에 ArrayList 저장
		application.setAttribute("msgs",msgs);
	}
	
	// 사용자 이름, 메시지, 날짜 정보를 포함하여 ArrayList에 추가
	//날짜 형식 추가 위해 SimpleDateFormat추가
	Date date = new Date();
	SimpleDateFormat f = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
	//application에는 session에서 가저온 글쓴이 정보와 msg, 날짜 정보를 하나의 문자열로 묶어서 list형태로 저장한다.
	msgs.add(username+" :: "+msg+" , "+ new java.util.Date()); //msg list에 새로들어온 정보들 추가.
	
	// 톰캣 콘솔을 통한 로깅
	application.log(msg+"추가됨");
	
	// 목록 화면으로 리다이렉팅(특정 화면으로 다시 갈 때.)
	response.sendRedirect("twitter_list.jsp");
%>