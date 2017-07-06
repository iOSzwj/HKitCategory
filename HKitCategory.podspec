
Pod::Spec.new do |s|

s.name         = "HKitCategory"
s.version      = "0.0.3"
s.summary      = "UIKit的分类"

s.description  = <<-DESC
UIKit的分类
修改了部分类的备注，是它符合苹果的备注规范
DESC

s.homepage     = "https://github.com/hare27/HKitCategory"

s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

s.author             = { "hare27" => "hare27@foxmail.com" }

s.platform     = :ios
s.osx.deployment_target = "10.7"

s.source       = { :git => "https://github.com/hare27/HKitCategory.git", :tag => "0.0.3" }

s.source_files  = "HKitCategory", "HKitCategory/**/*.{h,m}"

end
