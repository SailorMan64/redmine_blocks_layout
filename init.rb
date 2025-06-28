require 'redmine'

REDMINE_BLOCKS_LAYOUT_VERSION_NUMBER = '1.0'

Redmine::Plugin.register :redmine_blocks_layout do
  name "Blocks Layout plugin (#{REDMINE_BLOCKS_LAYOUT_VERSION_NUMBER})"
  author 'Manuel Palachuk'
  description 'Manage presence of boxes on Home, Project Overview and My Page'
  version REDMINE_BLOCKS_LAYOUT_VERSION_NUMBER

  requires_redmine version_or_higher: '5.0'

  project_module :blocks_layout do
    permission :edit_overview, { blocks: [:edit_overview]}
  end
end

if (Rails.configuration.respond_to?(:autoloader) && Rails.configuration.autoloader == :zeitwerk) || Rails.version > '7.0'
  Rails.autoloaders.each { |loader| loader.ignore(File.dirname(__FILE__) + '/lib') }
end
require File.dirname(__FILE__) + '/lib/redmine_blocks_layout'
