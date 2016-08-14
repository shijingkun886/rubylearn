class SoftWrap
  def wrap(str,line_width)
    result = ''
    str_array = str.split(/\.*\ /, )
    width = 0
    str_array.each do |s_str|
      if((width + s_str.length) > line_width) then
        result += "\n#{s_str} "
        width = s_str.length + 1
      else
          result += "#{s_str} "
          width += s_str.length + 1
      end
    end
    return result.strip
  end
end