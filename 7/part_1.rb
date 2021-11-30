# frozen_string_literal: true

# def trim(path)
#   File.write(path, File.readlines(path).reject { |s| s.strip.empty? }.join)
# end

def parse_f(path)
  f_lines = open_f("#{path}F.txt")
  File.open("#{path}G.txt", 'a') do |file|
    f_lines.each do |line|
     file.puts(line.downcase)
    end
  end
end

def write_f(path)
  input = gets.chomp
  File.open(path, 'a') do |file|
    until input.empty?
      file.puts(input)
      input = gets.chomp
    end
  end
end

def open_f(path)
  IO.readlines(path)
rescue StandardError => e
  puts e
  'Problem occured, while reading the file'
end

def execute(path)
  write_f("#{path}F.txt")
  parse_f(path)
end
