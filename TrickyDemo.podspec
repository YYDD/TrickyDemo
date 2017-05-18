Pod::Spec.new do |s|
    s.name = 'Trick'
    s.version = '0.1.0'
    s.license = 'MIT'
    s.summary = '[summary]'
    s.homepage = 'http://www.itiger.me'
    s.description = '[s.description]'
    s.author = {'Dandan Huang' => 'f@itiger.me' }
    s.source = { :git => 'https://github.com/YYDD/TrickyDemo.git', :tag => '0.1.0' }
    s.platform = :ios,'7.0'
    s.source_files = 'src'
    s.frameworks = 'UIKit'
end