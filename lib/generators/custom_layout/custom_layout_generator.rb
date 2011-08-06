class CustomLayoutGenerator < Rails::Generators::Base  
  source_root File.expand_path('../templates', __FILE__)  
  argument :theme, :type => :string, :default => "black_mamba"

    
  def remove_existing_layout
    remove_file 'app/views/layouts/application.html.erb'
    remove_file 'app/assets/stylesheets/scaffolds.css.scss'
    remove_file 'app/assets/images/rails.png'
  end
  
  def create_new_layout
    template "#{theme}/layout.html.erb", "app/views/layouts/application.html.erb"
    copy_file "#{theme}/reset.css", "app/assets/stylesheets/reset.css"
    copy_file "#{theme}/print.css", "app/assets/stylesheets/print.css"
    copy_file "#{theme}/application.css", "app/assets/stylesheets/application.css"
    copy_file "#{theme}/layout.css.scss", "app/assets/stylesheets/layout.css.scss"
    template "#{theme}/bg.gif", "app/assets/images/bg.gif"
  end
end
