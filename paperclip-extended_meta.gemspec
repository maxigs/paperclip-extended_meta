Gem::Specification.new do |s|
  s.name      = 'paperclip-extended_meta'
  s.version   = '0.0.0'
  s.platform  = Gem::Platform::RUBY
  s.author    = 'Benjamin Huettinger'
  s.email     = 'benjamin.huettinger@gmail.com'
  s.homepage  = 'https://github.com/maxigs/paperclip-extended_meta'
  s.summary   = 'Extension for Paperclip to allow storage of extended meta information on styles'

  s.files     = ['lib/paperclip-extended_meta.rb']

  s.add_runtime_dependency('paperclip')
end
