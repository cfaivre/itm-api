set :rails_env, "production"                                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                               
role :web, "87.106.53.59"                          # Your HTTP server, Apache/etc
role :app, "87.106.53.59"                          # This may be the same as your `Web` server
role :db,  "87.106.53.59", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
                                                                                                                                                                                                                                                                               
set :branch, "production"
