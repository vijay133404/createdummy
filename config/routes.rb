Rails.application.routes.draw do
   resources :projects
    get 'display/my', :to => 'projects#display_my_project'

    post 'aaa/bbb', :to => 'projects#submitproject'

    get 'vijay', :to => 'projects#vijay'
   
    get 'fff', :to => 'projects#all_projects'
    get 'remove', :to => 'projects#remove_projects'
    post 'blog/comment', :to => 'comments#createcomment'

end
