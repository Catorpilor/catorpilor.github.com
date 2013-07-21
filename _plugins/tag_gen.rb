module Jekyll
  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Posts Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      self.data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
    end
  end
  class TagGenerator < Generator
    safe true
    def generate(site)
      if site.layouts.key? 'tag_index'
        dir = site.config['tag_dir'] || 'tag'
	  puts dir
        site.tags.keys.each do |tag|
	  #puts File.join(dir,tag)
	  #puts site.source
	  dirr =site.source
	  temp = '/'
          temp += dirr
	  temp = File.join(temp,dir)
          #puts temp
	  #puts File.join(File.join(temp, dir), tag)
	  puts File.join(temp, tag)
          write_tag_index(site, File.join(dir, tag), tag)
	  write_tag_index(site, File.join(temp, tag), tag)
        end
      end
    end
    def write_tag_index(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end
end
