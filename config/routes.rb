Rails.application.routes.draw do
    
  get("/", { :controller => "pictures" , :action => "index"})
  get("/photos", { :controller => "pictures" , :action => "index"})
  
  get("/photos/new", { :controller => "pictures" , :action => "new_form"})
  get("/photos/:photo_id", { :controller => "pictures" , :action => "show_details"})
  get("/photos/:photo_id/edit", { :controller => "pictures" , :action => "edit_form"})
  get("/delete_photo/:photo_id", { :controller => "pictures" , :action => "destroy_row"})
  
  get("/create_photo", { :controller => "pictures" , :action => "create_row"})
  get("/update_photo/:photo_id", { :controller => "pictures" , :action => "update_row"})
  
end
