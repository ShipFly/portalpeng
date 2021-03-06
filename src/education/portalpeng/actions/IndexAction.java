package education.portalpeng.actions;

import javax.annotation.Resource;

import coo.core.security.annotations.Auth;
import coo.struts.actions.GenericAction;
import education.portalpeng.entity.User;
import education.portalpeng.service.SecurityService;

/**
 * 主页。
 */
@Auth
public class IndexAction extends GenericAction {
	@Resource
	private SecurityService securityService;
	private User currentUser;

	@Override
	public String execute() throws Exception {
		currentUser = securityService.getCurrentUser();
		return super.execute();
	}

	public User getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}
}
