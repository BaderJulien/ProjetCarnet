class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy
  before_filter :authenticate, :except => [:show, :new, :create]
  
  def show
    @user = User.find(params[:id])
    @micropost = @user.microposts.paginate(:page => params[:page])
    @title = @user.nom
  end
  
  def new
    @user = User.new
    @title = "Sign Up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Bienvenue dans l'Application Exemple !"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit"
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profil actualise."
      redirect_to @user
    else
      @title = "Edition profil"
      render 'edit'
    end
  end
  
  def index
    @title = "Tous les utilisateurs"
    @users = User.paginate(:page => params[:page])
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Utilisateur supprime."
    redirect_to users_path
  end
  
   def following
    @titre = "Following"
    @user = User.find(params[:id])
    @users = @user.following.paginate(:page => params[:page])
    render 'show_follow'
  end

  def followers
    @titre = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(:page => params[:page])
    render 'show_follow'
  end
  
  private

    def authenticate
      deny_access unless signed_in?
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end
