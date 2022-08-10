package com.cds.action;

import java.util.Collection;

import java.util.Map;

import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

//import com.cds.po.Department;
//import com.cds.po.Role;
import com.cds.po.User;

//import com.cds.service.DepartmentService;
//import com.cds.service.RoleService;
import com.cds.service.UserService;

@SuppressWarnings("serial")
@Component("userAction")
@Scope("prototype")//������ÿ����������һ���µ�action
public class UserAction extends ActionSupport {
	private User user;
    //Ҫ����UserService�ķ���������Ҫ����,��spring����ʵ����ע�롣@Resource Ĭ�ϰ� byName �Զ�ע��
	@Resource(name="userServiceImpl")
	UserService service;
	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

	@Override
	public String execute() throws Exception {
		// ��Ҫֱ�ӷ������ݿ⣬Ӧ�÷���ҵ���߼���service����serviceȥ����DAO��daoȥ�������ݿ�
		String username= user.getUsername();
		System.out.println(username);
		
		User user = service.findUserByName(username);
		if(user==null){
			this.service.save(this.user);
			return "success";
		}
		else{
			return "error";
		}
	}
	//�б�
	@SuppressWarnings("unchecked")
	public String listUser(){
		Map request = (Map) ActionContext.getContext().get("request");
		
		request.put("listUsers", service.findAllUsers());
		System.out.println("listUsers"+service.findAllUsers().size());
		return "listUser";
	}
	
	//��ѯ
	@SuppressWarnings("unchecked")
	public String queryUser(){
		String username= user.getUsername();
		System.out.println(username);
		String name= user.getName();
		System.out.println(name);
		String sex= user.getSex();
		System.out.println("sex:"+sex);
		String address= user.getAddress();
		System.out.println("address:"+address);
		String phone= user.getPhone();
		System.out.println("phone:"+phone);
		
		User user=this.service.queryUser(username,name,sex,address,phone);
		System.out.println("user:"+user);
		Map request = (Map) ActionContext.getContext().get("request");
		
		request.put("queryUser", user);
		//System.out.println("queryUser"+service.queryUser().size());

		return "queryUser";
	}
	
	public String deleteUser(){
		this.service.delete(user);
		return "deleteUser";
	}
	public String findUserById(){
		user = this.service.findUserById(user.getUserId());
		return "findUser";
	}
	
	public String updateUser(){
		
		this.service.update(user);
		System.out.println("user:"+user.getUserId());
		ActionContext.getContext().put("updatemessage", "������Ϣ�Ѿ����£�");
		return "updateUser";
	}
		
	@SuppressWarnings("unchecked")
	public String addUser(){
		Map request = (Map) ActionContext.getContext().get("request");
		
		return "adduser";
	}
	//����������ת
	/*public String updatePassword(){
		return "updatePassword";
	}
	*/
	public String findUser()
	{
		String username= user.getUsername();
		System.out.println("username:"+username);
		String name= user.getName();
		System.out.println("name:"+name);
		String sex= user.getSex();
		System.out.println("sex:"+sex);
		String post= user.getPost();
		System.out.println("post:"+post);
		String address= user.getAddress();
		System.out.println("address:"+address);
		String phone= user.getPhone();
		System.out.println("phone:"+phone);
		String email= user.getEmail();
		System.out.println("email:"+email);
		
		User user=this.service.findUserByinfo(username, name,sex,phone, post, address, email);
		System.out.println("user:"+user);

		if(user==null){
			ActionContext.getContext().put("findUsernull", "û�и��û���Ϣ��");
			return "findUsernull";
		}else{
		ActionContext.getContext().getSession().put("findUser", user);

		return "findUser";
		}
		
	}
	//�޸�����
	public String upPass()
	{
		this.service.update(user);
		System.out.println("user:"+user.getUserId());
		ActionContext.getContext().put("upPass", "���������Ѿ��޸ģ�");
		return "upPass";
	}
	//��������
	public String updatePass()
	{
		this.service.update(user);
		System.out.println("user:"+user.getUserId());
		ActionContext.getContext().put("updatePass", "���������Ѿ����ģ�");
		return "updatePass";
	}
	//�û�ע����֤
	public String register()
	{
		
		String username= user.getUsername();
		System.out.println(username);
		
		User user = service.findUserByName(username);
		System.out.println("name:"+username+",user:"+user);
		if(user == null){
			ActionContext.getContext().put("regmessage", username+"����ע��");
			return "regsuccess";
		}else{
			ActionContext.getContext().put("regmessage", username+"�Ѿ���ע��");
			return "regerror";
		}
	}
	//�û���¼
	public String login(){
		String username= user.getUsername();
		System.out.println(username);
		String password=user.getPassword();

		User user = service.getUserByLoginNameAndPassword(username,password);
		System.out.print("name:"+username+"pass"+password+"user"+user);
		if(user == null){
			ActionContext.getContext().put("message", "�û������������");		
			return "login";
		}else{
			ActionContext.getContext().getSession().put("user", user);
			return "index";
		}
	}
	//�û��˳�
	public String logout(){
		ActionContext.getContext().getSession().clear();
		return "logout";
	}
	
}
