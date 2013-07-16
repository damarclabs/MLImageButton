Pod::Spec.new do |s|
  s.name         = "MLImageButton"
  s.version      = "0.0.1"
  s.summary      = "ImageButton for OS X"
  s.homepage     = "https://github.com/MacLabs/MLImageButton"
  s.license      = 'LICENCE*.*'
  s.author       = { "Jason Lee" => "huacnlee@gmail.com" }
  s.source       = { :git => "https://github.com/MacLabs/MLImageButton.git", :tag => "0.0.1" }
  s.platform     = :osx
  s.source_files = 'MLImageButton/**/*.{h,m}'
  # s.exclude_files = 'Classes/Exclude'
  s.public_header_files = 'MLImageButton/**/*.h'
  s.requires_arc = true
end
