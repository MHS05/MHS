//��� ���� Ŭ����
package mhs.vo;

public class UserVO
{	
	private String uno;      //ȸ����ȣ
	private String id;		 //���̵�
	private String pw;		 //��й�ȣ
	private String name;	 //�̸�
	private String nickname; //�г���
	private String gender;	 //����
	private String birth;	 //�������
	private String email;	 //�̸���
	private String con;	     //����ü��
	private String joindate; //��������
	private String isretire; //Ż�𿩺�
	
	
	//�߰��ʵ�
	private String cocount;  //�ۼ��ۼ�
	private String recount;  //�ۼ���ۼ�
	

	//������
	public UserVO()
	{
		uno      = "";
		id       = "";
		pw       = "";
		name     = "";
		nickname = "";
		gender   = "";
		birth 	 = "";
		email    = "";
		con      = "";
		joindate = "";
		isretire = "N";
		cocount  = "";
		recount  = "";
	}

	//getter
	public String getUno() 		{	return uno;			}
	public String getId() 		{	return id;			}
	public String getPw() 		{	return pw;			}
	public String getName() 	{	return name;		}
	public String getNickname() {	return nickname;	}
	public String getGender() 	{	return gender;		}
	public String getBirth() 	{	return birth;		}
	public String getEmail()	{	return email;		}
	public String getCon()	    {	return con;			}
	public String getJoindate() {	return joindate;	}
	public String getIsretire() {	return isretire;	}
	public String getCocount()  {	return cocount;	    }
	public String getRecount()  {	return recount;  	}
	

	//setter
	public void setUno(String uno) 			 {	this.uno = uno;				}
	public void setId(String id) 			 {	this.id = id;				}
	public void setPw(String pw) 		     {	this.pw = pw;				}
	public void setName(String name)		 {	this.name = name;			}
	public void setNickname(String nickname) {	this.nickname = nickname;	}
	public void setGender(String gender)     {	this.gender = gender;		}
	public void setBirth(String birth)  	 {	this.birth = birth;			}
	public void setEmail(String email) 		 {	this.email = email;			}
	public void setCon(String con) 			 {	this.con = con;				}
	public void setJoindate(String joindate) {	this.joindate = joindate;	}
	public void setIsretire(String isretire) {	this.isretire = isretire;	}
	public void setCocount(String cocount)   {	this.cocount = cocount;	    }
	public void setRecount(String recount)   {	this.recount = recount;		}
	
	
	
}


