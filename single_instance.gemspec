Gem::Specification.new do |spec|
  spec.name          = 'single_instance'
  spec.version       = '0.1'
  spec.summary       = %q(In the sky, it's a class, no it's an instance!)
  spec.authors       = ['Justin Bishop']
  spec.email         = ['jubishop@gmail.com']
  spec.homepage      = 'https://github.com/jubishop/single_instance'
  spec.license       = 'MIT'
  spec.files         = Dir['lib/**/*.rb'] + Dir['sig/**/*.rbs']
  spec.require_paths = ['lib']
  spec.bindir        = 'bin'
  spec.executables   = []
  spec.metadata      = {
    'source_code_uri' => 'https://github.com/jubishop/single_instance',
    'steep_types' => 'sig'
  }
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0')
end