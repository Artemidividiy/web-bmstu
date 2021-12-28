Rails.application.routes.draw do
  root 'armstrong#input'
  match 'armstrong/output', via: %I[get post]
   get 'armstrong/data'
end
