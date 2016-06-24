package controllers;

import java.util.List;

import entity.Role;
import play.mvc.Controller;

public class RoleController extends Controller{
	
	public static void index(){
		renderTemplate("Secure/role.html");
	}
	
	public static void query(){
		List<Role> list = Role.findAll();
		renderJSON(list);
	}

}
