RedmineApp::Application.routes.draw do
  match 'blocks/edit_overview', to: 'blocks#edit_overview', via: [:get, :post]
  match 'blocks/edit_home', to: 'blocks#edit_home', via: [:get, :post]
end
