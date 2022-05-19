# frozen_string_literal: true

require "get_process_mem"

# This class allows to log the memory footprint of the service.
# It can also be used to start the garbage-collector and observe its effect.
class MemControl
  class << self
    def collect_and_log(info)
      GC.start
      freed = GC.stat(:total_freed_objects)
      allocated = GC.stat(:total_allocated_objects)
      puts "*** #{info} *** freed: #{freed}, allocated: #{allocated}"
    end

    def log_memory_usage(info)
      mem = GetProcessMem.new
      bytes = mem.bytes.to_i
      msg = "*** #{info} *** Mem: #{bytes} [B], #{mem.mb(bytes)} [MB]"
      puts msg
    end
  end
end
