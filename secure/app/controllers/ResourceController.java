package controllers;

import java.util.List;

import entity.Action;
import entity.Resource;
import entity.Role;
import play.db.jpa.JPA;
import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
public class ResourceController extends Controller{
	
	@Check("resource")
	public static void index(){
		renderTemplate("Secure/modules/resource.html");
	}
	
	public static void queryAll(){
		List<Resource> list = Resource.findAll();
		renderJSON(list);
	}
	
	public static void query(int roleId){
		String sql="SELECT t5.id,t5.name,t5.code,t5.url,t5.`actions` actions,t4.resource_action authActions FROM tb_role_resource_action t4 LEFT JOIN tb_resource t5 ON t4.resource_id = t5.id WHERE t4.`role_id` = :roleId";
		
		// 加载用户权限
		List<Resource> list = JPA.em().createNativeQuery(sql, Resource.class)
						.setParameter("roleId", roleId).getResultList();
		renderJSON(list);
	}

}
