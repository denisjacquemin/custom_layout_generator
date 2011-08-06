class CustomLayoutGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
    
  def remove_existing_layout
    remove_file 'app/views/layouts/application.html.erb'
    remove_file 'app/assets/stylesheets/scaffolds.css.scss'
    remove_file 'app/assets/images/rails.png'
  end
  
  def create_new_layout
    template "layout.html.erb", "app/views/layouts/application.html.erb"
    template "reset.css.erb", "app/assets/stylesheets/reset.css"
    template "print.css.erb", "app/assets/stylesheets/print.css"
    template "layout.css.scss.erb", "app/assets/stylesheets/layout.css.scss"
    template "bg.gif", "app/assets/images/bg.gif"
  end
end
