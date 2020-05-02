package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TZhaopinDAO;
import com.model.TUser;
import com.model.TZhaopin;
import com.opensymphony.xwork2.ActionSupport;
/**
 *��Ƹ��Ϣ������
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
	 *��Ա��¼
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
		zhaopin.setUserId(user.getUserId());//������Ƹ��Ϣ���û�
		zhaopinDAO.save(zhaopin);
		this.setMessage("�����ɹ�");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	
	//��Ƹ��˾������Ƹ��Ϣ
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
	//��Ƹ��Ϣɾ��
	public String zhaopinMyDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("�����ɹ�");
		this.setPath("zhaopinMyMana.action");
		return "succeed";
	}
	//��ȡȫ����Ƹ��Ϣ
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
	
	
	//����Ա�鿴��Ϣ
	public String zhaopinMana()
	{
		String sql="from TZhaopin where del='no'";
		List zhaopinList=zhaopinDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopinList", zhaopinList);
		return ActionSupport.SUCCESS;
	}
	//��Ƹ��Ϣɾ��
	public String zhaopinDel()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		zhaopin.setDel("yes");
		zhaopinDAO.attachDirty(zhaopin);
		this.setMessage("�����ɹ�");
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
	
	//�鿴��Ƹ��Ϣ����
	public String zhaopinDetail()
	{
		TZhaopin zhaopin=zhaopinDAO.findById(id);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhaopin", zhaopin);
		return ActionSupport.SUCCESS;
	}
	
	
	//��Ƹ��Ϣ����
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
