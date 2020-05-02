package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TZhaopinDAO;
import com.model.TUser;
import com.model.TZhaopin;
import com.opensymphony.xwork2.ActionSupport;
/**
 *招聘信息管理类
 * @author Administrator
 *
 */
public class zhaopinAction extends ActionSupport
{
    private int id;
    private String zhiwei;
    private String daiyui;
    private String xuliyaoqiu;
    private String gongzuodidian;
    private String gongzuojingyan;
    private String qitashuoming;
    
    private String message;
	private String path;
	
	private TZhaopinDAO zhaopinDAO;
	
	/**
	 *会员登录
	 * @author Administrator
	 *
	 */
	public String zhaopinMyAdd()
	{
		TZhaopin zhaopin=new TZhaopin();
		zhaopin.setDaiyui(daiyui);
		zhaopin.setDel("no");
		zhaopin.setGongzuodidian(gongzuodidian);
		zhaopin.setGongzuojingyan(gongzuojingyan);
		zhaopin.setQitashuoming(qitashuoming);
		zhaopin.setZhiwei(zhiwei);
		zhaopin.setXuliyaoqiu(xuliyaoqiu);
		
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		zhaopin.setUserId(user.getUserId());//发布招聘信息的用户
		zhaopinDAO.save(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	
	//招聘公司增加招聘信息
	public String zhaopinMyMana()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TZhaopin where userId=? and del='no'";
		Object[] cn={user.getUserId()};
		List zhaopinMyList=zhaopinDAO.getHibernateTemplate().find(sql,cn);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinMyList", zhaopinMyList);
		return ActionSupport.SUCCESS;
	}
	//招聘信息删除
	public String zhaopinMyDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	//获取全部招聘信息
	public String zhaopinMyAll()
	{
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		
		String sql="from TZhaopin where userId=? and del='no'";
		Object[] cn={user.getUserId()};
		List zhaopinMyList=zhaopinDAO.getHibernateTemplate().find(sql,cn);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinMyList", zhaopinMyList);
		return ActionSupport.SUCCESS;
	}
	
	
	//管理员查看信息
	public String zhaopinMana()
	{
		String sql="from TZhaopin where del='no'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}
	//招聘信息删除
	public String zhaopinDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("操作成功");
		this.setPath("zhaopinMana.action");
		return "succeed";
	}
	
	public String zhaopinAll()
	{
		String sql="from TZhaopin where del='no'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}
	
	//查看招聘信息详情
	public String zhaopinDetail()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopin", zhaopin);
		return ActionSupport.SUCCESS;
	}
	
	
	//招聘信息搜索
	public String zhaopinSearch()
	{
		String sql="from TZhaopin t where t.zhiwei like '%"+zhiwei+"%'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}

	public String getDaiyui()
	{
		return daiyui;
	}

	public void setDaiyui(String daiyui)
	{
		this.daiyui = daiyui;
	}

	public String getGongzuodidian()
	{
		return gongzuodidian;
	}

	public void setGongzuodidian(String gongzuodidian)
	{
		this.gongzuodidian = gongzuodidian;
	}

	public String getGongzuojingyan()
	{
		return gongzuojingyan;
	}

	public void setGongzuojingyan(String gongzuojingyan)
	{
		this.gongzuojingyan = gongzuojingyan;
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

	public String getQitashuoming()
	{
		return qitashuoming;
	}

	public void setQitashuoming(String qitashuoming)
	{
		this.qitashuoming = qitashuoming;
	}

	public String getXuliyaoqiu()
	{
		return xuliyaoqiu;
	}

	public void setXuliyaoqiu(String xuliyaoqiu)
	{
		this.xuliyaoqiu = xuliyaoqiu;
	}

	public TZhaopinDAO getZhaopinDAO()
	{
		return zhaopinDAO;
	}

	public void setZhaopinDAO(TZhaopinDAO zhaopinDAO)
	{
		this.zhaopinDAO = zhaopinDAO;
	}

	public String getZhiwei()
	{
		return zhiwei;
	}

	public void setZhiwei(String zhiwei)
	{
		this.zhiwei = zhiwei;
	}
	
}
