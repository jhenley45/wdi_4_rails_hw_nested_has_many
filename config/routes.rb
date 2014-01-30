SharedBlog::Application.routes.draw do

  get "comment/show"
  get "comment/index"
  get "comment/create"
  get "comment/new"
  get "article/show"
  get "article/index"
  get "article/create"
  get "article/new"
  get "article/edit"
  get "user/show"
  get "user/index"
  get "user/create"
  get "user/new"
end
