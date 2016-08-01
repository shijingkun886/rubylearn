def wrap(str,line_width)
  str_array = str.split(/\.*\ /, )
  width = 0
  str_array.each do |s_str|
    if((width + s_str.length) > line_width) then
      print "\n#{s_str} "
      width = s_str.length + 1
    else
        print "#{s_str} "
        width += s_str.length + 1
    end
  end
  puts ""
end

output_str = 'The memory space or filesystem of the process can be used as a brief, single-transaction cache. For example, downloading a large file, operating on it, and storing the results of the operation in the database. The twelve-factor app never assumes that anything cached in memory or on disk will be available on a future request or job – with many processes of each type running, chances are high that a future request will be served by a different process. Even when running only one process, a restart (triggered by code deploy, config change, or the execution environment relocating the process to a different physical location) will usually wipe out all local (e.g., memory and filesystem) state.'
wrap(output_str,70)
