package mhs.vo;

public class NewsKeywordVO 
{
	public String nkeyno;	//����Ű���������ȣ
	public String nno;		//������ȣ
	public String nkey;	    //����Ű����
	public String nkeynum;	//Ű����󵵼�
	
	public NewsKeywordVO()
	{
		
		nkeyno 	  = "";
		nno 	  = "";
		nkey      = "";
		nkeynum   = "";
	}
	
	public String getNkeyno() 	{		return nkeyno;	}
	public String getNno() 		{		return nno;	    }
	public String getNkey() 	{		return nkey;	}
	public String getNkeynum()  {		return nkeynum;	}
	
	
	public void setNkeyno(String nkeyno) 	{		this.nkeyno = nkeyno;	}
	public void setNno(String nno) 			{		this.nno = nno;			}
	public void setNkey(String nkey) 		{		this.nkey = nkey;		}
	public void setNkeynum(String nkeynum)  {		this.nkeynum = nkeynum;	}
	
}
