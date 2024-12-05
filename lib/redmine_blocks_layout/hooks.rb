module RedmineBlocksLayout
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_projects_show_left, partial: 'hooks/redmine_blocks_layout/view_projects_show_left'
    render_on :view_projects_show_right, partial: 'hooks/redmine_blocks_layout/view_projects_show_right'
    render_on :view_welcome_index_left, partial: 'hooks/redmine_blocks_layout/view_welcome_index_left'
    render_on :view_welcome_index_right, partial: 'hooks/redmine_blocks_layout/view_welcome_index_right'
  end
end