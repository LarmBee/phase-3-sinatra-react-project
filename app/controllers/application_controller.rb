class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/netflix_originals" do
    NetflixOriginal.all.to_json
  end

  get "/netflix_originals/:id" do
    movie = NetflixOriginal.find(params[:id])
    movie.to_json
  end

  get "/netflix_original_comments" do
    NetflixOriginalComment.all.to_json
  end

  post "/netflix_original_comments" do
    NetflixOriginalComment.create(
      comment: params[:comment],
      likes:params[:likes],
      netflix_original_id: params[:mov_id]
    ).to_json
    
  end

  
  get "/netflix_original_comments/:id" do
    movie = NetflixOriginalComment.find(params[:id])
    movie.to_json
  end

  patch "/netflix_original_comments/:id" do
    movie = NetflixOriginalComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/trending" do
    Trending.all.to_json
  end
  get "/trending/:id" do
    movie = Trending.find(params[:id])
    movie.to_json
  end

  get "/trending_comments" do
    TrendingComment.all.to_json
  end

  post "/trending_comments" do
    
    TrendingComment.create(
      comment: params[:comment],
      likes:params[:likes],
      trending_id: params[:mov_id]
    ).to_json
    
  end

  get "/trending_comments/:id" do
    movie = TrendingComment.find(params[:id])
    movie.to_json
  end
  patch "/trending_comments/:id" do
    movie = TrendingComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/top_rated" do 
    TopRated.all.to_json
  end
  get "/top_rated/:id" do
    movie = TopRated.find(params[:id])
    movie.to_json
  end

  get "/top_rated_comments" do
    TopRatedComment.all.to_json
  end
  post "/top_rated_comments" do
    
    TopRatedComment.create(
      comment: params[:comment],
      likes:params[:likes],
      top_rated_id: params[:mov_id]
    ).to_json
    
  end

  get "/top_rated_comments/:id" do
    movie = TopRatedComment.find(params[:id])
    movie.to_json
  end

  patch "/top_rated_comments/:id" do
    movie = TopRatedComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end


  get "/action" do 
    Action.all.to_json
  end
  get "/action/:id" do
    movie = Action.find(params[:id])
    movie.to_json
  end
  get "/action_comments" do
    ActionComment.all.to_json
  end
  get "/action_comments/:action_id" do
    ActionComment.findByActionId(params[:action_id]).to_json
  end
  post "/action_comments" do
    
    ActionComment.create(
      comment: params[:comment],
      likes:params[:likes],
      action_id: params[:mov_id]
    ).to_json
    
  end

  patch "/action_comments/:id" do
    movie = ActionComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/comedy" do
    Comedy.all.to_json
  end
  get "/comedy/:id" do
    movie = Comedy.find(params[:id])
    movie.to_json
  end
  get "/comedy_comments" do
    ComedyComment.all.to_json
  end
  post "/comedy_comments" do
    
    ComedyComment.create(
      comment: params[:comment],
      likes:params[:likes],
      comedy_id: params[:mov_id]
    ).to_json
    
  end


  patch "/comedy_comments/:id" do
    movie = ComedyComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/horror" do
    Horror.all.to_json
  end
  get "/horror/:id" do
    movie = Horror.find(params[:id])
    movie.to_json
  end

  get "/horror_comments" do
    HorrorComment.all.to_json
  end

  post "/horror_comments" do
    
    HorrorComment.create(
      comment: params[:comment],
      likes:params[:likes],
      horror_id: params[:mov_id]
    ).to_json
    
  end
  

  patch "/horror_comments/:id" do
    movie = HorrorComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/romance" do
    Romance.all.to_json
  end
  get "/romance/:id" do
    movie = Romance.find(params[:id])
    movie.to_json
  end

  get "/romance_comments" do
    RomanceComment.all.to_json
  end

  post "romance_comments" do
    
    RomanceComment.create(
      comment: params[:comment],
      likes:params[:likes],
      romance_id: params[:mov_id]
    ).to_json
    
  end
  
  patch "/romance_comments/:id" do
    movie = RomanceComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end

  get "/documentaries" do
    Documentary.all.to_json
  end
  get "/documentaries/:id" do
    movie = Documentary.find(params[:id])
    movie.to_json
  end
  get "/documentary_comments" do
    DocumentaryComment.all.to_json
  end
  post "/documentary_comments" do
    
    DocumentaryComment.create(
      comment: params[:comment],
      likes:params[:likes],
      documentary_id: params[:mov_id]
    ).to_json
    
  end


  patch "/documentary_comments/:id" do
    movie = DocumentaryComment.find(params[:id])
    movie.update(
      likes:params[:likes]
    )
    movie.to_json
  end


end
