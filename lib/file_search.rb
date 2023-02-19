# frozen_string_literal: true

require_relative "file_search/version"

module FileSearch
  class Error < StandardError; end
  
  def file_search(recursive: true)
    raise('empty') if self.empty?

    map do |path|
      path = File.expand_path(path)
      path_escaped = path.text_escape

      if File.directory?(path)
        if recursive
          Dir.glob(File.join(path_escaped, '**', '*'))
        else
          Dir.glob(File.join(path_escaped, '*'))
        end
      elsif File.file?(path)
        path
      else
        puts("Not exists file: #{path}")
      end
    end.flatten.compact.reject { |e| File.directory?(e) }
  end

  def text_escape
    gsub( %r'[\&\(\)\{\}\[\]\*\?\!\|\\\ \':]' ) { |c| "\\"+c }
  end
end

include FileSearch
