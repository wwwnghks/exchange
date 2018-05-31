package com.javamuk.qnareply.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javamuk.domain.QnA_Reply;

@Repository
public class QnAReplyCreateDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.javamuk.mapper.QnAReplyMapper";

	public int createReply(QnA_Reply qnA_Replay) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".createreply", qnA_Replay);
	}

	public int createrereply(QnA_Reply qnA_Reply) {
		// TODO Auto-generated method stub
		session.update(namespace+".updateQnAReWrite", qnA_Reply);
		return session.insert(namespace+".createrereply", qnA_Reply);
	}

	
	

	

}
