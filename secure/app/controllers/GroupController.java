package controllers;

import java.util.List;

import entity.Group;
import entity.Role;
import play.mvc.Controller;

public class GroupController extends Controller{
	
	public static void index(){
		renderTemplate("Secure/group.html");
	}
	
	public static void queryAll(){
		List<Group> list = Group.findAll();
		renderJSON(list);
	}

}
