{
  "name": "OpenCV",
  "version": "3.3.1",
  "summary": "OpenCV (Computer Vision) for iOS",
  "homepage": "https://opencv.org/",
  "description": "OpenCV: open source computer vision library\n\n    Homepage: https://opencv.org/\n    Online docs: https://docs.opencv.org/master/\n    Q&A forum: http://answers.opencv.org/questions/\n    Dev zone: https://github.com/opencv/opencv",
  "documentation_url": "https://docs.opencv.org/master/",
  "authors": "https://github.com/opencv/opencv/graphs/contributors",
  "license": {
    "type": "3-clause BSD",
    "text": "By downloading, copying, installing or using the software you agree to this license.\nIf you do not agree to this license, do not download, install,\ncopy or use the software.\n\n\n    License Agreement\n    For Open Source Computer Vision Library\n    (3-clause BSD License)\n\nRedistribution and use in source and binary forms, with or without modification,\nare permitted provided that the following conditions are met:\n\n    * Redistribution's of source code must retain the above copyright notice,\n    this list of conditions and the following disclaimer.\n\n    * Redistribution's in binary form must reproduce the above copyright notice,\n    this list of conditions and the following disclaimer in the documentation\n    and/or other materials provided with the distribution.\n\n    * The name of the copyright holders may not be used to endorse or promote products\n    derived from this software without specific prior written permission.\n\nThis software is provided by the copyright holders and contributors \"as is\" and\n any express or implied warranties, including, but not limited to, the implied\n warranties of merchantability and fitness for a particular purpose are disclaimed.\nIn no event shall the Intel Corporation or contributors be liable for any direct,\nindirect, incidental, special, exemplary, or consequential damages\n(including, but not limited to, procurement of substitute goods or services;\nloss of use, data, or profits; or business interruption) however caused\nand on any theory of liability, whether in contract, strict liability,\nor tort (including negligence or otherwise) arising in any way out of\nthe use of this software, even if advised of the possibility of such damage.\n\n"
  },
  "platforms": {
    "ios": "6.0"
  },
  "source": {
    "http": "https://www.dropbox.com/s/hnd98gy6b9pox0a/opencv2.framework.zip?dl=0",
    "sha256": "52df8bb72f4191fde49bc4764bcbbd29d1d51187e7379d3acf291f19e2f88748"
  },
  "prepare_command": "touch Empty.m && mv ios/opencv2.framework/Versions/A/opencv2 ios/libopencv2Static.a && mv ios/opencv2.framework/Versions/A/Headers ios/include",
  "ios": {
    "source_files": [
      "Empty.m",
      "ios/include/**/*.{h,hpp}"
    ],
    "public_header_files": "ios/include/**/*.{h,hpp}",
    "header_mappings_dir": "ios/include",
    "vendored_libraries": "ios/libopencv2Static.a",
    "frameworks": [
      "AssetsLibrary",
      "AVFoundation",
      "CoreGraphics",
      "CoreMedia",
      "CoreVideo",
      "Foundation",
      "QuartzCore",
      "UIKit"
    ],
    "pod_target_xcconfig": {
      "OTHER_LDFLAGS": "-force_load \"${PODS_ROOT}/OpenCV/ios/libopencv2Static.a\""
    }
  },
  "header_dir": "opencv2",
  "libraries": "c++",
  "user_target_xcconfig": {
    "CLANG_WARN_DOCUMENTATION_COMMENTS": "NO"
  },
  "requires_arc": false
}
