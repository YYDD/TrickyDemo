Pod::Spec.new do |spec|
  spec.name         = 'HLAlertView'
  spec.version      = '1.0'
  spec.ios.deployment_target = '7.0'
  spec.license      = { :type => 'BSD' }
  spec.authors      = { 'YYDD' => '615689375@qq.com' }
  spec.homepage     = 'https://github.com/xiekw2010/DXAlertView'
  spec.summary      = 'DXAlertView'
  spec.source       = { :git => 'https://github.com/xiekw2010/DXAlertView.git'}
  spec.source_files = 'Vendor/*'

  spec.subspec 'DXAlertView' do |ss|
    ss.source_files = 'DXAlertView/*'
    ss.public_header_files = 'DXAlertView/*.h'
  end



end
