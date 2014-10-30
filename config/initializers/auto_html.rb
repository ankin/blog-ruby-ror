require 'auto_html'

AutoHtml.add_filter(:image).with(:width => 600) do |text, options|

  text.gsub(/http:\/\/.+\.(jpg|jpeg|bmp|gif|png)(\?\S+)?/i) do |match|
    width = options[:width]
    height= options[:height]
    %|<a href="#{match}"><img src="#{match}" alt="" width="#{width}" height="#{height}" /></a>|
  end
end