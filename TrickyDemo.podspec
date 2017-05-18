Pod::Spec.new do |spec|
  spec.name         = 'TrickyDemo'
  spec.version      = '1.0'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://github.com/YYDD/TrickyDemo'
  spec.authors      = { 'YYDD' => '615689375@qq.com' }
  spec.summary      = 'ARC and GCD Compatible Reachability Class for iOS and OS X.'
  spec.source       = { :git => 'https://github.com/YYDD/TrickyDemo', :tag => '0.1.0' }
  spec.source_files = 'Trick/*/*.h'
end