#
# Be sure to run `pod lib lint Phoenix.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Phoenix'
  s.version          = '0.1.0'
  s.summary          = 'A flexible job system with persistence for Swift.'

  s.description      = <<-DESC
The Phoenix is a persistence job queue system for Swift. It allows to build
idempotent and asynchronous job tasks using Foundation's
`Operation` (NSOperation), that allows for jobs to be "stored" when the
application is about to terminate, and be restored (resume) once the app has
relaunched.
                       DESC

  s.homepage         = 'https://github.com/modernistik/Phoenix'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anthony Persaud' => 'persaud@modernistik.com' }
  s.source           = { :git => 'https://github.com/modernistik/Phoenix.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'Phoenix/**/*'

end
# To publish `pod trunk push Phoenix.podspec`
# https://guides.cocoapods.org/making/getting-setup-with-trunk.html
# Register a new authentication token: pod trunk register <email> '<name>' --description='Macbook'
