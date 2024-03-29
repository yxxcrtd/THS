package cn.digitalpublishing.dao;

import java.io.Serializable;

public class CommonDao<T, ID extends Serializable> extends BaseDao<T, Serializable> {

	private BaseDao<Object, Serializable> baseDao;

	public void insert(Object obj) throws Exception {
		try {
			baseDao.hibernateDao.save(obj);
		} catch (Exception e) {
			throw e;
		}
	}

	public void update(Object obj, String className, Serializable id, String[] properties) throws Exception {
		try {
			baseDao.hibernateDao.update(obj, className, id, properties);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@SuppressWarnings("unchecked")
	public T get(String className, Serializable id) throws Exception {
		return (T) baseDao.hibernateDao.getById(className, id);
	}

	public void delete(String className, Serializable id) throws Exception {
		try {
			baseDao.hibernateDao.delete(className, id);
		} catch (Exception e) {
			throw e;
		}
	}

	public BaseDao<Object, Serializable> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<Object, Serializable> baseDao) {
		this.baseDao = baseDao;
	}
}