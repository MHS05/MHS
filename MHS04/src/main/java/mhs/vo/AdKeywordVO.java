package mhs.vo;

public class AdKeywordVO 
{
	public String adkeyno;		//����Ű���������ȣ
	public String adno;			//�����ȣ
	public String adkey;		//����Ű����
	
	public AdKeywordVO()
	{
		
		adkeyno    = "";
		adno 	   = "";
		adkey      = "";
	}

	public String getAdkeyno()  {	return adkeyno;	}
	public String getAdno()  	{	return adno;	}
	public String getAdkey() 	{	return adkey;	}

	
	public void setAdkeyno(String adkeyno)  {	this.adkeyno = adkeyno;	}
	public void setAdno(String adno) 		{	this.adno = adno;		}
	public void setAdkey(String adkey) 		{	this.adkey = adkey;		}
	
	
	
}
