# frozen_string_literal: true

require_relative "file_manipulator/version"
require_relative "file_manipulator/file_met"

module FileManipulator
  class Error < StandardError; end

  class FileManipulator
    def call!
      puts "Creating"
      file_met.create(filename)
      puts

      puts "Reading"
      puts file_met.read(filename)
      puts

      puts "Writing"
      file_met.write(filename)
      puts

      puts "Reading"
      puts file_met.read(filename) # Ensure write
    end

    private

    def filename
      puts "Filename?"
      gets.chomp
    end

    def file_met
      FileMet.new
    end
  end
end
