Pod::Spec.new do |s|
  s.name             = 'PiQue'
  s.version          = '0.1.0'
  s.summary          = 'The P and Q appending framework.'
  s.swift_version    = '5.5'

  s.description      = <<-DESC
PiQue is a small framework designed to take a string and by appending "P" and "Q" as its prefix using iteration, to compare the results to another string provided by the developer.
                       DESC

  s.homepage         = 'https://github.com/TheCodingDJ/PiQue'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TheCodingDJ' => 'L.Marinov@outlook.com' }
  s.source           = { :git => 'https://github.com/TheCodingDJ/PiQue.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/PiQue/**/*'
end
