class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end
  helpers Sinatra:: Cookies
  enable :Sessions

  # $posts = [{
  #   	 id: 0,
  #   	 title: "Post 1",
  #   	 body: "This is the first post"
  #   },
  #   {
  #       id: 1,
  #       title: "Post 2",
  #       body: "This is the second post"
  #   },
  #   {
  #       id: 2,
  #       title: "Post 3",
  #       body: "This is the third post"
  #   }];

  # INDEX
  get "/" do
    unless cookies[:visited]
      @show_message = true
      response.set_cookie(:visited,:value=>1, :expires => Time.now+(10))
    end
    @title = "Blog Posts"
    @posts = Post.all
    erb :"posts/index"
  end

  # NEW
  get "/new" do
    post = Post.new
    @post = post
     post.id = ""
     post.title = ""
     post.body = ""
    erb :"posts/new"
  end

  # SHOW
  get "/:id" do
    id = params[:id].to_i
    if(!session[:posts])
      session[:posts] = []
    end
    if (!session[:posts].include?(id))
      session[:posts].push(id)
    end
    puts "The user has visited #{session[:posts]}"
    @post = Post.find(id)
    erb :"posts/show"
  end

  # CREATE
  post "/" do
    post = Post.new

    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
  end

  # EDIT
  get "/:id/edit" do
    id = params[:id].to_i
    @post = Post.find(id)
    erb :"posts/edit"
  end

  # UPDATE
  put "/:id" do
    id = params[:id].to_i
    post = Post.find(id)
    post.title = params[:title]
    post.body = params[:body]

    post.save

    redirect "/"
  end

  # DESTROY
  delete "/:id" do
    # get the ID
    id = params[:id].to_i
    # delete the post from the database
    Post.destroy(id)
    # redirect back to the homepage
    redirect "/"
  end

end
