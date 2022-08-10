package com.cds.action;

import java.util.Collection;

import java.util.Map;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import com.cds.po.Admin;
import com.cds.service.AdminService;

@SuppressWarnings("serial")
@Component("adminAction")
@Scope("prototype")//������ÿ����������һ���µ�action
public class AdminAction extends ActionSupport {
	private Admin admin;
	
	//private Role role;
	//private Department department;
//Ҫ����UserService�ķ���������Ҫ����,��spring����ʵ����ע��
	@Resource(name="adminServiceImpl")
	AdminService service;
	public AdminService getService() {
		return service;
	}

	public void setService(AdminService service) {
		this.service = service;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	@SuppressWarnings("unchecked")
	public String listAdmin(){
		Map request = (Map) ActionContext.getContext().get("request");
		
		request.put("list", service.findAllAdmins());
		return "listAdmin";
	}
	public String deleteAdmin(){
		this.service.delete(admin);
		return "deleteAdmin";
	}
	public String findAdminById(){
		admin = this.service.findAdminById(admin.getAdminId());
		return "findAdmin";
	}
	public String updateAdmin(){
		//adminpassmessage
		
		this.service.update(admin);
		System.out.println("admin:"+admin.getUsername());
		ActionContext.getContext().put("upAdminMessage", "�����޸ĳɹ���");	
		return "updateAdmin";
		
	}
	public String inputAdmin(){
		return "input";
	}
	
	@SuppressWarnings("unchecked")
	public String addAdmin(){
		Map request = (Map) ActionContext.getContext().get("request");
		
		return "addAdmin";
	}

	//����Ա��¼
	public String login(){
		String username= admin.getUsername();
		System.out.println(username);
		String password=admin.getPassword();

		Admin admin = service.getUserByLoginNameAndPassword(username,password);
		System.out.print("name:"+username+",pass:"+password+",user:"+admin);
		if(admin == null){
			ActionContext.getContext().put("message", "�û������������");		
			return "login";
		}else{
			ActionContext.getContext().getSession().put("admin", admin);
			return "index";
		}
	}
	//�˳�
	public String logout(){
		ActionContext.getContext().getSession().clear();
		return "logout";
	}
}
