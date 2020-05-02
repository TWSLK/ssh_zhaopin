package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 *��Ա��Ϣ����
 * @author Administrator
 *
 */
public class UserAction extends ActionSupport
{
    private int userId;
	private String userName;
	private String userPw;
	private String userRealname;
	
	private String userAge;
	private String userSex;
	private String userAddress;
	
	private String userTel;
	private String userEmail;
	private String userXueli;
	private String userOne1;//jianjie
	private String userOne2;//��ҵ�û���ҵ
	
	private String newUserPw;
   
	
	
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	/**
	 *��Ա��¼
	 * @author Administrator
	 *
	 */
	public String userLogin()
	{
		String sql="from TUser where userName=? and userPw=? and userDel='no'";
		Object[] con={userName,userPw};
		List userList=userDAO.getHibernateTemplate().find(sql,con);
		if(userList.size()==0)
		{
			Map request=(Map)ServletActionContext.getContext().get("request");
			this.setMessage("�û������������");
			this.setPath("qiantai/index.html");
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TUser user=(TUser)userList.get(0);
			 session.put("user", user);
			 this.setMessage("�ɹ���¼");
		     this.setPath("qiantai/index.html");
		}
		return "succeed";
	}
	
	/**
	 *��Ա�˳���¼
	 * @author Administrator
	 *
	 */
	public String userLogout()
	{
		Map session= ServletActionContext.getContext().getSession();
		session.remove("user");
		return ActionSupport.SUCCESS;
	}
	
	/**
	 * ��Աע��
	 * @return
	 */
	public String userReg()
	{
		TUser user=new TUser();
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserAge(userAge);
		user.setUserSex(userSex);
		user.setUserAddress(userAddress);
		
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		user.setUserXueli(userXueli);
		
		user.setUserOne1(userOne1);//��ҵ�û���ҵ
		user.setUserType(1);//1��ְ��Ա��2��Ƹ��Ա
		user.setUserDel("no");
		userDAO.save(user);
		
		this.setMessage("ע��ɹ�");
		this.setPath("/qiantai/index.html");
		return "succeed";
	}
	
	
	/**
	 * ��Ա�޸�����
	 * @return
	 */
	public String userEdit()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		System.out.println(userName+"%%%%");
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserAge(userAge);
		user.setUserSex(userSex);
		user.setUserAddress(userAddress);
		
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		user.setUserXueli(userXueli);
		
		//user.setUserOne1(userOne1);//��ҵ�û���ҵ
		//user.setUserType(1);//1��ְ��Ա��2��Ƹ��Ա
		//user.setUserDel("no");
		userDAO.attachDirty(user);
		session.put("user", user);
		
		if(user.getUserType()==1)
		{
			this.setMessage("�����ɹ�");
			this.setPath("/auser/userinfo/userinfo.jsp");
		}
		if(user.getUserType()==2)
		{
			this.setMessage("�����ɹ�");
			this.setPath("/auserQiye/userinfo/userinfo.jsp");
		}
		
		return "succeed";
	}
	/**
	 *��Աɾ��
	 * @author Administrator
	 *
	 */
	public String userDel()
	{
		TUser user=userDAO.findById(userId);
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		this.setMessage("ɾ���ɹ�");
		this.setPath("userMana.action");
		return "succeed";
	}
	
	
	public String userMana()
	{
		String sql="from TUser where userType=1 and userDel='no'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String userQiyeReg()
	{
		TUser user=new TUser();
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserRealname(userRealname);
		
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		
		user.setUserOne2(userOne2);
		user.setUserOne1(userOne1);//jianjie
		user.setUserType(2);//1��ְ��Ա��2��Ƹ��Ա
		user.setUserDel("no");
		userDAO.save(user);
		
		this.setMessage("ע��ɹ�");
		this.setPath("/qiantai/index.html");
		return "succeed";
	}
	
	
	public String userQiyeDel()
	{
		TUser user=userDAO.findById(userId);
		user.setUserDel("yes");
		userDAO.attachDirty(user);
		this.setMessage("ɾ���ɹ�");
		this.setPath("userQiyeMana.action");
		return "succeed";
	}
	
	
	public String userQiyeMana()
	{
		String sql="from TUser where userType=2 and userDel='no'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	public String userQiyeDetail()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	public String userDetail()
	{
		TUser user=userDAO.findById(userId);
		System.out.println(user.getUserName());
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String getUserAddress()
	{
		return userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getUserEmail()
	{
		return userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}

	public String getUserAge()
	{
		return userAge;
	}


	public void setUserAge(String userAge)
	{
		this.userAge = userAge;
	}


	public String getUserOne1()
	{
		return userOne1;
	}


	public String getUserOne2()
	{
		return userOne2;
	}


	public void setUserOne2(String userOne2)
	{
		this.userOne2 = userOne2;
	}


	public void setUserOne1(String userOne1)
	{
		this.userOne1 = userOne1;
	}


	public String getUserXueli()
	{
		return userXueli;
	}


	public void setUserXueli(String userXueli)
	{
		this.userXueli = userXueli;
	}


	public String getUserRealname()
	{
		return userRealname;
	}

	public void setUserRealname(String userRealname)
	{
		this.userRealname = userRealname;
	}

	public String getUserSex()
	{
		return userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}

	public int getUserId()
	{
		return userId;
	}


	public void setUserId(int userId)
	{
		this.userId = userId;
	}


	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public String getMessage()
	{
		return message;
	}


	public String getNewUserPw()
	{
		return newUserPw;
	}

	public void setNewUserPw(String newUserPw)
	{
		this.newUserPw = newUserPw;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}


	public String getPath()
	{
		return path;
	}


	public void setPath(String path)
	{
		this.path = path;
	}


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}

	
}
