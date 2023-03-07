require 'fileutils'

# Get the current time as a formatted string
timestamp = Time.now.strftime("%Y%m%d%H%M%S")

# Define an array of file names to create
files = ["#{timestamp}_create_users.rb", "#{timestamp}_create_products.rb", "#{timestamp}_create_reviews.rb"]

# Loop over each file name and create a new file with that name
files.each do |filename|
  # Use the FileUtils module to create a new file
  FileUtils.touch(filename)
end
