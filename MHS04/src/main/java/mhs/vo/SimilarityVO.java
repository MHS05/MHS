package mhs.vo;

public class SimilarityVO 
{
	public String sno;      //���絵������ȣ
	public String adkeyno;  //����Ű���������ȣ
	public String nkeyno;   //����Ű���������ȣ
	public String nkey;     //����Ű����
	public String adkey;    //����Ű����
	public String adno;     //�����ȣ
	public String nno;      //������ȣ
	
	
	public SimilarityVO() 
	{
		sno     = "";
		adkeyno = "";
		nkeyno  = "";
		nkey    = "";
		adkey   = "";
		adno    = "";
		nno     = "";
	}


	public String getSno() 		{	return sno;		}
	public String getAdkeyno()  {	return adkeyno;	}
	public String getNkeyno() 	{	return nkeyno;	}
	public String getNkey()  	{	return nkey;	}
	public String getAdkey() 	{	return adkey;	}
	public String getAdno()   	{	return adno;	}
	public String getNno()	    {	return nno;		}

	
	public void setSno(String sno) 			{	this.sno = sno;			}
	public void setAdkeyno(String adkeyno)  {	this.adkeyno = adkeyno;	}
	public void setNkeyno(String nkeyno) 	{	this.nkeyno = nkeyno;	}
	public void setNkey(String nkey)	    {	this.nkey = nkey;		}
	public void setAdkey(String adkey)  	{	this.adkey = adkey;		}
	public void setAdno(String adno)  		{	this.adno = adno;		}
	public void setNno(String nno)		    {	this.nno = nno;			}
	
}
