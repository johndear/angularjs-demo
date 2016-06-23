package controllers;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import play.db.jpa.JPA;
import controllers.Secure.Security;
import entity.Action;

public class LocalSecure extends Security {

	static String sql = "SELECT t5.*,t4.* FROM tb_user t1 LEFT JOIN tb_user_group t2 ON t1.id=t2.user_id LEFT JOIN tb_group_role t3 ON t2.group_id = t3.group_id LEFT JOIN tb_role_resource_action t4 ON t3.role_id=t4.role_id LEFT JOIN tb_resource t5 ON t4.resource_id=t5.id where t1.login_name=:loginName";

	static boolean check(String profile) {
        
		List<Action> list = JPA.em().createNativeQuery(sql, Action.class)
				.setParameter("loginName", "admin").getResultList();

		StringBuffer sbf = new StringBuffer();
		for (Action action : list) {
			String[] actions = action.getActions().split(";");
			for (String act : actions) {
				sbf.append(action.getName());
				sbf.append(':');
				sbf.append(act);
				sbf.append(',');
			}
		}
		// 用户的权限
		String codestr = sbf.toString();

		// 判断是否有权限执行操作
		if ("".equals(codestr)) {
			return false;
		}
		if (!codestr.toString().contains("," + profile + ",")) {
			return false;
		}

		return true;

	}

}
