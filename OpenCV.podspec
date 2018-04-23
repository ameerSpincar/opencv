Pod::Spec.new do |s|
   s.name = 'OpenCV'
   s.version = '3.4.1'
   s.license = 'BSD'

   s.summary = 'OpenCV (Computer Vision) for iOS.'
   s.homepage = 'http://opencv.org'
   s.documentation_url = 'http://opencv.org'
   s.author = 'OpenCV'

   s.source = { :git => 'https://github.com/opencv/opencv.git', :tag => s.version }
   s.source_files = 'opencv2.framework/Headers/**/*{.h,.hpp}'
   s.header_mappings_dir = 'Headers'
   s.preserve_paths = '*'
   s.frameworks = 'Accelerate', 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreImage', 'CoreMedia', 'CoreVideo', 'Foundation', 'opencv2', 'QuartzCore', 'UIKit'
   s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/OpenCV' }
end
