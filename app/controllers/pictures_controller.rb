class PicturesController < ApplicationController

    def index
        
        @photo_list = Photo.all.order({:created_at => :desc})
        
        render("pic_templates/all_photos.html.erb")
    end

    def new_form
        
        render("pic_templates/blank_form.html.erb")
        
    end
 
    def show_details
        
        id = params.fetch("photo_id").to_i
        @photo = Photo.find(id)
        render("pic_templates/details.html.erb")
  
    end

    def edit_form
        
        id = params.fetch("photo_id").to_i
        @photo = Photo.find(id)
        render("pic_templates/prefilled_form.html.erb")
    
    end
    
    def destroy_row
        p = Photo.find(params.fetch("photo_id").to_s)
        p.destroy
        
        redirect_to("/photos")    
    end
    
    def create_row
        
        p = Photo.new
        p.source = params.fetch("the_source").to_s
        p.caption = params.fetch("the_caption").to_s
        p.save
        @photo_list = Photo.all
        
        #render("pic_templates/row_created.html.erb")
        redirect_to("/photos")    
    end

    def update_row
        p = Photo.find(params.fetch("photo_id").to_s)
        p.source = params.fetch("the_source").to_s
        p.caption = params.fetch("the_caption").to_s
        p.save
        
        redirect_to("/photos/"+params.fetch("photo_id").to_s)    
    end
    



 
end