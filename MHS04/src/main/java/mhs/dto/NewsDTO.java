//�Խù� ���� Ŭ����
package mhs.dto;

import mhs.dao.*;
import mhs.vo.*;

public class NewsDTO extends DBManager
{
	//�Խù��� ����Ѵ�.
	public boolean Insert(NewsVO vo)
	{
		this.DBOpen();
		
		String sql = "";

		sql += "insert into news (category,title,note,writer,image,phyimage) ";
		sql += "values (";
		sql += "'" + vo.getCategory()    + "',";
		sql += "'" + _R(vo.getTitle())   + "',";
		sql += "'" + _R(vo.getNote())    + "',";
		sql += "'" + vo.getWriter()      + "',";
		sql += "'" + _R(vo.getImage())  + "',";
		sql += "'" + _R(vo.getPhyimage())  + "'";
		sql += ")";
		this.RunCommand(sql);		

		//��ϵ� �Խù� ��ȣ�� ��´�.
		sql = "select last_insert_id() as no ";
		this.RunSelect(sql);
		this.GetNext();
		vo.setNno(this.GetValue("no"));
		
		this.DBClose();
		return true;		
	}
	
}
