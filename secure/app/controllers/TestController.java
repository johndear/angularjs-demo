package controllers;

import play.mvc.Controller;

public class TestController extends Controller{
	
	public static void test(){
		renderTemplate("Secure/role-resource-action.html");
	}

}
