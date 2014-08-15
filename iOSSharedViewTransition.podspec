Pod::Spec.new do |s|

  s.name         = "iOSSharedViewTransition"
  s.version      = "1.0.2"
  s.summary      = "iOS 7 based transition library for View Controllers having a Common View"

  s.description  = <<-DESC
                   An iOS 7 based transition library for View Controllers having a Common View.
                   DESC

  s.homepage     = "https://github.com/asifmujteba/iOSSharedViewTransition"
  s.screenshots  = "https://raw.githubusercontent.com/asifmujteba/iOSSharedViewTransition/master/sample.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  
  s.author             = { "Asif Mujteba" => "asifmujteba@gmail.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/asifmujteba/iOSSharedViewTransition.git", :tag => "1.0.2" }

  s.source_files  = "Classes", "*.{h,m}"

  s.public_header_files = "Classes/*.h"

  s.requires_arc = true

end
