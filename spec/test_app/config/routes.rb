Rails.application.routes.draw do
  mount DryCrudJsonapi::Engine => "/jsonapi"
end
