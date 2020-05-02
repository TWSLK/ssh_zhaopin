package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TToujijianliDAO;
import com.model.TToujijianli;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;
/**
 *简历投递信息管理
 * @author Administrator
 *
 */
public class toudijianliAction extends ActionSupport
{
	private int id;
	private int zhaopinId;
	private int userId;
	private String toudishijian;
	
	private String message;
	private String path;
	private TToujijianliDAO toujijianliDAO;
	/**
	 *简历投递
	 * @author Administrator
	 *
	 */
	public String toudijianliAdd()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		TToujijianli toujijianli=new TToujijianli();
		toujijianli.setZhaopinId(zhaopinId);
		toujijianli.setUserId(user.getUserId());
		toujijianli.setToudishijian(new Date().toLocaleString());
		toujijianli.setDel("no");
		toujijianliDAO.save(toujijianli);
		return "successAdd";
	}
	
	/**
	 *会员投递的简历
	 * @author Administrator
	 *
	 */
	public String toudijianliMy()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		String sql="from TToujijianli where userId=? and del='no'";
		Object[] con={user.getUserId()};
	    List toudijianliList=toujijianliDAO.getHibernateTemplate().find(sql,con);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("toudijianliList", toudijianliList);
		return ActionSupport.SUCCESS;
	}
	/**
	 *简历投递信息删除
	 * @author Administrator
	 *
	 */
	public String toudijianliMyDel()
	{
		TToujijianli toujijianli=toujijianliDAO.findById(id);
		toujijianli.setDel("yes");
		toujijianliDAO.attachDirty(toujijianli);
		
		this.setMessage("操作成功");
		this.setPath("toudijianliMy.action");
		return "succeed";
	}
	
	
	public String toudijianliForzhiwei()
	{
		String sql="from TToujijianli where zhaopinId=? and del='no'";
		Object[] con={zhaopinId};
	    List toudijianliList=toujijianliDAO.getHibernateTemplate().find(sql,con);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("toudijianliList", toudijianliList);
		return ActionSupport.SUCCESS;
	}
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getMessage()
	{
		return message;
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
	public String getToudishijian()
	{
		return toudishijian;
	}
	public void setToudishijian(String toudishijian)
	{
		this.toudishijian = toudishijian;
	}
	public TToujijianliDAO getToujijianliDAO()
	{
		return toujijianliDAO;
	}
	public void setToujijianliDAO(TToujijianliDAO toujijianliDAO)
	{
		this.toujijianliDAO = toujijianliDAO;
	}
	public int getUserId()
	{
		return userId;
	}
	public void setUserId(int userId)
	{
		this.userId = userId;
	}
	public int getZhaopinId()
	{
		return zhaopinId;
	}
	public void setZhaopinId(int zhaopinId)
	{
		this.zhaopinId = zhaopinId;
	}
	
}
