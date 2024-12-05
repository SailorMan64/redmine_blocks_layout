module RedmineBlocksLayout
end

REDMINE_BLOCKS_LAYOUT_REQUIRED_FILES = [
  'redmine_blocks_layout/hooks'
]

base_url = File.dirname(__FILE__)
REDMINE_BLOCKS_LAYOUT_REQUIRED_FILES.each { |file| require(base_url + '/' + file) }
