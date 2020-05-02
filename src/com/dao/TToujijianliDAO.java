package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TToujijianli;

/**
 * Data access object (DAO) for domain model class TToujijianli.
 * 
 * @see com.model.TToujijianli
 * @author MyEclipse Persistence Tools
 */

public class TToujijianliDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TToujijianliDAO.class);

	// property constants
	public static final String ZHAOPIN_ID = "zhaopinId";

	public static final String USER_ID = "userId";

	public static final String TOUDISHIJIAN = "toudishijian";

	public static final String DEL = "del";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TToujijianli transientInstance)
	{
		log.debug("saving TToujijianli instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TToujijianli persistentInstance)
	{
		log.debug("deleting TToujijianli instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TToujijianli findById(java.lang.Integer id)
	{
		log.debug("getting TToujijianli instance with id: " + id);
		try
		{
			TToujijianli instance = (TToujijianli) getHibernateTemplate().get(
					"com.model.TToujijianli", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TToujijianli instance)
	{
		log.debug("finding TToujijianli instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TToujijianli instance with property: "
				+ propertyName + ", value: " + value);
		try
		{
			String queryString = "from TToujijianli as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByZhaopinId(Object zhaopinId)
	{
		return findByProperty(ZHAOPIN_ID, zhaopinId);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByToudishijian(Object toudishijian)
	{
		return findByProperty(TOUDISHIJIAN, toudishijian);
	}

	public List findByDel(Object del)
	{
		return findByProperty(DEL, del);
	}

	public List findAll()
	{
		log.debug("finding all TToujijianli instances");
		try
		{
			String queryString = "from TToujijianli";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TToujijianli merge(TToujijianli detachedInstance)
	{
		log.debug("merging TToujijianli instance");
		try
		{
			TToujijianli result = (TToujijianli) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TToujijianli instance)
	{
		log.debug("attaching dirty TToujijianli instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TToujijianli instance)
	{
		log.debug("attaching clean TToujijianli instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TToujijianliDAO getFromApplicationContext(
			ApplicationContext ctx)
	{
		return (TToujijianliDAO) ctx.getBean("TToujijianliDAO");
	}
}