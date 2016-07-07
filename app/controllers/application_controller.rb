class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #alias_method :current_user, :current_author
  def current_ability
  	@current_ability ||= Ability.new(current_author)
  end

   def index
     search_term = params[:search].to_s.strip
     resources = Administrate::Search.new(resource_resolver, search_term).run
     resources = order.apply(resources)
     resources = resources.paginate(:page => params[:page])     
     page = Administrate::Page::Collection.new(dashboard, order: order)

     render locals: {
       resources: resources.paginate(:page => params[:page]),
       search_term: search_term,
       page: page,
     }
   end
  
end
