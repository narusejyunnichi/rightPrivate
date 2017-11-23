Pod::Spec.new do |s|
s.name         = "rightPrivate"
s.version      = "0.0.1"
s.summary      = "rightPrivate"
s.homepage     = "https://github.com/stguoke/rightPrivate.git"
s.license      = "MIT"
s.license      = { :type => "MIT", :file => "file_license.txt" }
s.author    = "xge"
s.platform     = :ios, "9.0"
s.source       = { :git => "https://github.com/stguoke/rightPrivate.git", :tag => s.version }
s.frameworks  = "UIKit","Foundation"
s.vendored_frameworks = 'rightPrivate/Assets/GXNetWork.framework'
s.dependency 'AFNetworking' , '~> 3.0'
s.requires_arc = true
end
