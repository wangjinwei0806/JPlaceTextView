

Pod::Spec.new do |s|


  s.name         = "JPlaceHolderTextView"
  s.version      = "0.0.2"
  s.summary      = "JPlaceHolderTextView"

  s.description  = <<-DESC
                   It is a Player used on iOS, which implement by Objective-C.  
                   DESC

  s.homepage     = "https://github.com/wangjinwei0806/JPlaceTextView"

  s.license      = "MIT"

  s.author             = { "wangjinwei" => "21418925@qq.com" }
  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/wangjinwei0806/JPlaceTextView.git", :tag => s.version.to_s }

  s.source_files = "JPlaceHolderTextView/*"
  s.requires_arc = true


end