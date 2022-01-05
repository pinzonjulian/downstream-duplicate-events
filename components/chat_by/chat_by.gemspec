require_relative "lib/chat_by/version"

Gem::Specification.new do |spec|
  spec.name        = "chat_by"
  spec.version     = ChatBy::VERSION
  spec.authors     = ["Write your name"]
  spec.email       = ["Write your email address"]
  spec.summary     = "Summary of ChatBy."
  spec.description = "Description of ChatBy."
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "sprockets-rails", "3.4.2"
end
