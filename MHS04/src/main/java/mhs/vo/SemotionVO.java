package mhs.vo;

public class SemotionVO 
{
	public String senno;		   	//���庰����������ȣ
	public String nno;				//������ȣ
	public String sentance;			//����
	public String emotion;			//���������
	public String score;			//���������
	
	public SemotionVO() 
	{
		nno      = "";
		sentance = "";
		emotion  = "";
		score    = "";
	}
	
	
	public String getSenno()	 {	 return senno;		}
	public String getNno() 		 {	 return nno;		}
	public String getSentance()  {	 return sentance;	}
	public String getEmotion()   {	 return emotion;	}
	public String getScore()     {	 return score;		}
	
	
	public void setSenno(String senno) 		  {		this.senno = senno;			}
	public void setNno(String nno) 			  {		this.nno = nno;				}
	public void setSentance(String sentance)  {		this.sentance = sentance;	}
	public void setEmotion(String emotion)	  {		this.emotion = emotion;		}
	public void setScore(String score) 		  {		this.score = score;			}	
	
	
}
