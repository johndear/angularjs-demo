package controllers;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import play.db.jpa.JPA;
import controllers.Secure.Security;
import entity.Action;
import entity.Resource;

public class LocalSecure extends Security {

	static String sql = "SELECT t5.id,t5.name,t5.code,t5.url,t5.`actions` actions,t4.resource_action authActions FROM tb_user t1 LEFT JOIN tb_user_group t2 ON t1.id=t2.user_id LEFT JOIN tb_group_role t3 ON t2.group_id = t3.group_id LEFT JOIN tb_role_resource_action t4 ON t3.role_id=t4.role_id LEFT JOIN tb_resource t5 ON t4.resource_id=t5.id where t1.login_name=:loginName";

	/**
	 * 权限验证
	 * 
	 * 权限格式如下：,资源:操作,user:add,user:edit,user:remove,...,
	 * 权限匹配：,xxxx:(add|edit|remove),
	 * @param profile
	 * @return
	 */
	static boolean check(String profile) {
		// 加载用户权限
		List<Resource> list = JPA.em().createNativeQuery(sql, Resource.class)
				.setParameter("loginName", "admin").getResultList();

		StringBuffer permissions = new StringBuffer(",");
		String permission = null;
		for (Resource resource : list) {
			String[] actions = resource.getAuthActions().split(";");
			for (String action : actions) {
				permission = resource.getCode() + ':' + action + ',';
				
				if(!permissions.toString().contains(',' + permission)){
					permissions.append(permission);
				}
			}
		}

		// 判断是否拥有指定权限
		if ("".equals(permissions.toString()) || !permissions.toString().toLowerCase().contains(',' + profile.toLowerCase() + ',')) {
			return false;
		}

		return true;

	}

}
