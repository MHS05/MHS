//��� ���� Ŭ����
package mhs.vo;

public class ReplyVO 
{
	private String rno;    	 //��۹�ȣ
	private String no;    	 //�Խù���ȣ
	private String uno;   	 //ȸ����ȣ
	private String id;    	 //ȸ�����̵�
	private String rnote; 	 //��۳���
	private String rdate;  	 //�ۼ���
	
	//�߰� ���� ����
	private String name;     //ȸ���̸�	
	private String nickname; //ȸ���г���	
	private String title;    //������	
	
	
	public ReplyVO()
	{
		rno      = "";
		no       = "";
		uno      = "";
		id       = "";
		rnote    = "";
		rdate    = "";	
		name     = "";
		nickname = "";
		title    = "";
	}

	//getter
	public String getRno()   	 { return rno;	 }
	public String getNo()     	 { return no;	 }
	public String getUno()    	 { return uno;	 }
	public String getId()        { return id;	 }
	public String getRnote()     { return rnote; }
	public String getRdate()     { return rdate; }
	public String getName()      { return name;	 }
	public String getNickname()  { return nickname;	 }
	public String getTitle()     { return title;	 }

	//setter
	public void setRno(String rno)    		   { this.rno = rno;		   }
	public void setNo(String no)     		   { this.no = no;	     	   }
	public void setUno(String uno)     		   { this.uno = uno;		   }
	public void setId(String id)      	       { this.id = id;	     	   }
	public void setRnote(String rnote)	       { this.rnote = rnote; 	   }
	public void setRdate(String rdate)         { this.rdate = rdate;  	   }
	public void setName(String name)   		   { this.name = name;		   }
	public void setNickname(String nickname)   { this.nickname = nickname; }
	public void setTitle(String title)  	   { this.title = title;	   }
}
