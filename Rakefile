# Rakefile based off the one in Octopress
#
#require "highline/import"
require "rubygems"
require "rake"
require "date"
require "stringex"

## -- Misc Configs -- ##
source_dir      = "."    # source file directory
posts_dir       = "_posts"    # directory for blog files
new_post_ext    = "textile"  # default new post file extension when using the new_post task
new_page_ext    = "textile"  # default new page file extension when using the new_page task
my_post_ext     = "md"
server_port     = "4000"      # port for preview server eg. localhost:4000
JEKYLL = "jekyll"

desc "Before deploy"
task :bdeploy do
  system "rm -rf tags"
  system "sh tag.sh"
  puts   "all set to deploy"
end



desc "Delete generated _site files"
task :clean do
  system "rm -rf _site"
end

desc "builds _site from current source"
task :build do
  system "#{JEKYLL} build"
end



namespace :serve do
  desc "Run the jekyll server for all posts"
  task :all do
    system "#{JEKYLL} serve --watch"
  end

  desc "Run the jekyll server for most recent post"
  task :one do
    system "#{JEKYLL} serve --watch --limit_posts 1"
  end
end


# usage rake new_post[my-new-post] or rake new_post['my new post'] or rake new_post (defaults to "new-post")
desc "Begin a new post in #{source_dir}/#{posts_dir}"
task :new_post, :title do |t, args|
  raise "### You haven't set anything up yet. First run `rake install` to set up an Octopress theme." unless File.directory?(source_dir)
  mkdir_p "#{source_dir}/#{posts_dir}"
  args.with_defaults(:title => 'new-post')
  title = args.title
  filename = "#{source_dir}/#{posts_dir}/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.#{new_post_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  puts "Creating new post: #{filename}"
  puts "vim #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: #{title.gsub(/&/,'&amp;')}"
    post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    post.puts "tags:"
    post.puts "summary:"
    post.puts "---"
    post.puts ""
    post.puts ""
  end
end

desc "Begin a new post in #{source_dir}/#{posts_dir}"
task :post, :title do |t, args|
  raise "### You haven't set anything up yet. First run `rake install` to set up an Octopress theme." unless File.directory?(source_dir)
  mkdir_p "#{source_dir}/#{posts_dir}"
  args.with_defaults(:title => 'new-post')
  title = args.title
  filename = "#{source_dir}/#{posts_dir}/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.#{my_post_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  puts "Creating new post: #{filename}"
  puts "vim #{filename}"
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: #{title.gsub(/&/,'&amp;')}"
    post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    post.puts "updatetime:"
    post.puts "tags:"
    post.puts "summary:"
    post.puts "---"
    post.puts ""
    post.puts ""
  end
end
