package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;


public class ChatHandler extends TextWebSocketHandler {
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	String msg;

	// 클라이언트와 연결 후 실행
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("afterConnectionEstablished:"+session);
		sessionList.add(session);
		msg = session.getId() + "님이 입장하였습니다.";
		System.out.println("{} 연결됨" + session.getId());
	}

	// 클라가 서버로 메세지를 전송할때 실행되는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(("{}로 부터 {} 받음" + session.getId() + message.getPayload()));
		for (WebSocketSession ws : sessionList) {
			ws.sendMessage(new TextMessage(session.getPrincipal().getName() + ":" + message.getPayload()));
		}
	}

	// 클라와 연결 끊었을때 실행되는 메서드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		System.out.println(("{} 연결 끊김" + session.getId()));
	}

}
