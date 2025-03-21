Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/insert_director", { :controller => "directors", :action => "insert" })
  get("/delete_director/:an_id", { :controller => "directors", :action => "delete" })
  post("/update_director/:an_id", { :controller => "directors", :action => "update" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie", { :controller => "movies", :action => "insert" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "delete" })
  post("/update_movie/:an_id", { :controller => "movies", :action => "update" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor", { :controller => "actors", :action => "insert" })
  get("/delete_actor/:an_id", { :controller => "actors", :action => "delete" })
  post("/update_actor/:an_id", { :controller => "actors", :action => "update" })
end
