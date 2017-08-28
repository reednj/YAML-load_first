require 'yaml'
require "YAML/load_first/version"

module YAML
	def self.load_first_file(files)
		files = [files] unless files.is_a? Array

		files.each do |file|
			return load_file(file) if File.exist? file
		end

		raise 'Could not load any file'
	end
end
