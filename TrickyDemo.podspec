
Pod::Spec.new do |s|
  s.name         = "TrickyDemo"
  s.version      = "1.0"
  s.summary      = "A short description of TrickyDemo."
  s.description  = "test ."
  s.homepage     = "https://github.com/YYDD/TrickyDemo"
  s.author             = { "YYDD" => "615689375@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/YYDD/TrickyDemo" }
  s.source_files  = "Trick/**/*.{h,m}"

end