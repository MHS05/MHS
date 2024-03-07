package mhs.vo;

public class NewsVO 
{
	public String nno;       //������ȣ
	public String ando;      //�����ȣ
	public String category;  //ī����
	public String title;     //����
	public String note;      //����
	public String writer;    //�ۼ���
	public String wdate;     //�ۼ���
	public String image;    //�̹���_��
	public String phyimage;    //�̹���_����
	public String emotion;   //�����
	
	public NewsVO() 
	{
		ando     = "";
		category = "";
		title    = "";
		note     = "";
		writer   = "";
		wdate    = "";
		image    = "";
		phyimage = "";
		emotion  = "";
	}
	
	public String getNno()      {	return nno;	     }
	public String getAndo()     {	return ando;	 }
	public String getCategory() {	return category; }
	public String getTitle()    {	return title;	 }
	public String getNote() 	{	return note;	 }
	public String getWriter()   {	return writer;	 }
	public String getWdate()    {	return wdate;	 }
	public String getImage()    {	return image;	 }
	public String getPhyimage() {	return phyimage; }
	public String getEmotion()  {	return emotion;	 }
	
	
	public void setNno(String nno) 			  {	 this.nno = nno;		   }
	public void setAndo(String ando)          {	 this.ando = ando;	       }
	public void setCategory(String category)  {	 this.category = category; }
	public void setTitle(String title) 		  {	 this.title = title;	   }
	public void setNote(String note) 		  {	 this.note = note;		   }
	public void setWriter(String writer) 	  {	 this.writer = writer;	   }
	public void setWdate(String wdate)		  {	 this.wdate = wdate;	   }
	public void setImage(String image) 	  	  {	 this.image = image;	   }
	public void setPhyimage(String phyimage)  {	 this.phyimage = phyimage; }
	public void setEmotion(String emotion) 	  {	 this.emotion = emotion;   }
	
}
