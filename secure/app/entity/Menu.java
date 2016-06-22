package entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import play.db.jpa.Model;

@Entity
@Table(name = "tb_menu", schema = "ydscm_permission")
public class Menu  extends Model {
	private String menuName;
	private String menuNameEn;
	private String menuUrl;
	private String menuCode;	
	private Long pId;	
	private Long menuLevel;			
	private Long displayOrder;	
	private String memo;
	private String target;		
	private Long appId;
	
	@Transient
	private List<Menu> childrens = new ArrayList<Menu>();
	
	private List<Action> actionList = new ArrayList<Action>();
	
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	public String getMenuNameEn() {
		return menuNameEn;
	}
	public void setMenuNameEn(String menuNameEn) {
		this.menuNameEn = menuNameEn;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Long getpId() {
		return pId;
	}
	public void setpId(Long pId) {
		this.pId = pId;
	}
	public Long getMenuLevel() {
		return menuLevel;
	}
	public void setMenuLevel(Long menuLevel) {
		this.menuLevel = menuLevel;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Long getDisplayOrder() {
		return displayOrder;
	}
	public void setDisplayOrder(Long displayOrder) {
		this.displayOrder = displayOrder;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public Long getAppId() {
		return appId;
	}
	public void setAppId(Long appId) {
		this.appId = appId;
	}
	
	@Transient
	public List<Menu> getChildrens() {
		return childrens;
	}
	public void setChildrens(List<Menu> childrens) {
		this.childrens = childrens;
	}
	
	// 多对多定义 -- 属性(fetch=FetchType.EAGER)就不是lazy load
	@ManyToMany
	@JoinTable(name = "tb_menu_action", schema="ydscm_permission", joinColumns = { @JoinColumn(name = "menu_id") }, inverseJoinColumns = { @JoinColumn(name = "action_id") })
	// Fecth策略定义
	@Fetch(FetchMode.SUBSELECT)
	// 集合按id排序
	@OrderBy("id ASC")
	// 缓存策略
	@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
	public List<Action> getActionList() {
		return actionList;
	}
	
	public void setActionList(List<Action> actionList) {
		this.actionList = actionList;
	}
	
	
	


}
