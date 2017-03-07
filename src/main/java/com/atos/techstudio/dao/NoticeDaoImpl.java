package com.atos.techstudio.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.atos.techstudio.model.Notice;
import com.atos.techstudio.utils.Utils;

@Repository("noticeDao")
public class NoticeDaoImpl implements NoticeDao {
	
	@Override
	public List<Notice> getNoticeList() {
		System.out.println("Notice list in dao");
		return Utils.getNoticeList();
	}
	
}
