require 'liquid'

module PostsizeImageFilter
  def postsizeimage(text)
    parts = text.split ' '
    if parts.size > 1 then
      title = parts[1..-1].join ' '
    else
      title = "Non-titled image"
    end
    file = parts[0]
    file_parts = file.split '.'
    filepostsize = file_parts[0..-2].join('.') + "-postsize." + file_parts.last
    "<a rel=\"photo\" href=\"/images/#{file}\"><img src=\"/images/#{filepostsize}\" title=\"#{title}\" /></a>"
  end
end

Liquid::Template.register_filter(PostsizeImageFilter)
