# frozen_string_literal: true

module FileManipulator
  class FileMet
    BASE_PATH = "#{Dir.pwd}/"

    def create(filename)
      File.new(full_path(filename), 'w')
    end

    def read(filename)
      File.open(full_path(filename)).read
    end

    def write(filename)
      modifications = request_modifications

      File.open(full_path(filename), 'w') { |f| f.write(modifications) }
    end

    private

    def full_path(filename)
      "#{BASE_PATH}#{filename}"
    end

    def request_modifications
      puts "What would you like to add to this file?"
      gets.chomp
    end
  end
end