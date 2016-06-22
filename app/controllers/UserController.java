package controllers;

import java.util.HashMap;
import java.util.Map;

import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
public class UserController extends Controller {

	@Check("get")
	public static void get() {
		// 返回json格式
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", "1");
		renderJSON(map);
	}
}
