class AdminController < ApplicationController
  before_filter :require_admin 
  before_filter :add_jhtmlarea, :only => [:edit_home_page]

  def edit_home_page
    if params[:commit]
      if existing_block = ContentBlock.find_by_title("Home Page")
        existing_block.update_attributes!(:user => current_user, :data => params[:home_page_data])
      else
        ContentBlock.create!(:title => "Home Page", :user => current_user, :data => params[:home_page_data])
      end

    end

    home_block = ContentBlock.find_by_title("Home Page")
    @home_block_data = home_block ? home_block.data : ""
  end
  
  private

  def add_jhtmlarea
    
    javascript_includes << ["jHtmlArea-0.7.0.min", "jHtmlArea.ColorPickerMenu-0.7.0.min"]
    stylesheet_links << ["jHtmlArea", "jHtmlArea.ColorPickerMenu"]
  end
end
