$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'contactable/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'contactable'
  s.version     = Contactable::VERSION
  s.authors     = ['Jiri Kolarik']
  s.email       = ['jiri.kolarik@imin.cz']
  s.homepage    = 'http://werein.cz'
  s.summary     = 'Contact engine.'
  s.description = 'Contact engine for Project CMS.'

  s.files       = Dir['{app,config,db,lib}/**/*', 'LICENSE.txt', 'Rakefile', 'README.md']
  s.test_files  = Dir['test/*.*' ,'test/{cells,controllers,data,helpers,integration,models}/**/*','test/dummy/*.*', 'test/dummy/{app,bin,config,db,lib}/**/*']

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'foundationstone', '~> 0.0.1'
  s.add_dependency 'simple_form'

  s.add_development_dependency 'tuberack'
end
