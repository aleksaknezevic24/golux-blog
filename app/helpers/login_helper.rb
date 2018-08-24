module LoginHelper

  def auth_buttons 
    if current_user
      link_to "Log out", destroy_user_session_path, method: :delete
    else
      (link_to "Log In", new_user_session_path) + (link_to "Register", new_user_registration_path)
    end 
  end


def new_post
	if  (user_signed_in?) && (current_user.role_id == 1 || current_user.role_id == 2) 
    link_to('Create post', new_blog_path)  
    else
    end 
end 

def privileges
	if (user_signed_in?) && (current_user.role_id == 1)
		link_to('Privileges', privileges_path)
	else
	end
end 

def blog_status
  if (user_signed_in?) && (current_user.role_id == 1 || current_user.role_id == 2)
    link_to('Blog status', blog_status_path)
  else
  end
end  

def my_draft_posts
  if (user_signed_in?) && (current_user.role_id == 1 || current_user.role_id == 2)
    link_to('My Draft Post', my_posts_path)
  else
  end
end

  def contact
  if (user_signed_in?) 
    link_to('Contact', new_contact_path)
  else
  end
end
 def edit_profile
  if (user_signed_in?) 
    link_to('edit profile', edit_user_registration_path)
  else
  end
end

end


