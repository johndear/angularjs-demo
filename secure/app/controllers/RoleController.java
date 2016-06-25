package controllers;

import java.util.List;

import entity.Role;
import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
public class RoleController extends Controller{
	
	@Check("role")
	public static void index(){
		renderTemplate("Secure/role.html");
	}
	
	public static void query(){
		List<Role> list = Role.findAll();
		renderJSON(list);
	}

}
