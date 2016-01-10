# Generates a thumbnail to an image and renders an image tag.
# The image will be resized to fit within a max bounding box.
# The resulting filename is based on original and includes dimensions.
# All paths are relative to /source.

# Usage:
# 
# {% thumbnail /path/to/local/image.png 50x50< %}
#
# The dimensions will be given directly to imagemagick.
# You probably want the "<" at the end. See http://www.imagemagick.org/Magick++/Geometry.html.
#
# Installation:
# 
# * add the gem: gem "mini_magick" (and bundle install)
# * copy thumbnail.rb to plugins folder
#
# https://github.com/xfxf/jekyll-thumbnailer

require 'jekyll'
require 'mini_magick'

class Jekyll::Thumbnail < Liquid::Tag
  def initialize(tag_name, markup, tokens)
    if /(?<source>[^\s]+)\s+(?<dimensions>[^\s]+)/i =~ markup
      @source = source
      @dimensions = dimensions
    end
    super
  end

  def render(context)
    if @source

      site = context.registers[:site]

      # parking
      source = @source
      dimensions = @dimensions

      raise "#{source} is not readable" unless File.readable?(source)
      ext = File.extname(source)
      desc = dimensions.gsub(/[^\da-z]+/i, '')
      w, h = desc.split('x')

      dest = "#{File.dirname(source)}/#{File.basename(source, ext)}_#{desc}#{ext}"
      site.static_files += [ Jekyll::StaticFile.new(site, site.source, "#{File.dirname(source)}", "#{File.basename(source, ext)}_#{desc}#{ext}") ]

      # only thumbnail the image if it doesn't exist tor is less recent than the source file
      # will prevent re-processing thumbnails for a ton of images...
      if !File.exists?(dest) || File.mtime(dest) <= File.mtime(source)
        # puts ENV.inspect

        puts "Thumbnailing #{source} to #{dest} (#{dimensions})"

        MiniMagick::Tool::Convert.new do |convert|
          convert << source
          convert.resize dimensions
          convert.gravity 'center'
          convert.extent dimensions
          convert << dest
        end

      end

      """<img src='/#{dest}' width='#{w}' height='#{h}'/>"""

    else
      "Could not create thumbnail for #{source}. Usage: thumbnail /path/to/local/image.png 50x50<"
    end
  end
end

Liquid::Template.register_tag('thumbnail', Jekyll::Thumbnail)
