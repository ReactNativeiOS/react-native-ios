#
#  Be sure to run `pod spec lint AFNetworking_PinLib.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "react-native-ios"
  s.version      = "0.56.0"
  s.summary      = "react-native-ios for iOS"
  s.homepage     = "http://facebook.github.io/react-native/"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  s.author             = { "Facebook" => "weishqdev@gmail.com" }

  s.ios.deployment_target = '9.0'

  s.requires_arc            = true

  s.source       = {:git => "https://git.coding.net/PinssibleGX_iOSPod/react-native-ios.git", :tag => "#{s.version}"}

  #s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/**"', 'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/**"'}

  s.pod_target_xcconfig     = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++14" }

  s.default_subspec         = "Core"

  s.subspec "Core" do |ss|
    ss.dependency             "yoga-ios", "~> 0.56.1"
    ss.source_files         = "react-native-ios/**/*.{c,h,m,mm,S,cpp}"
    ss.header_dir           = "react-native-ios"
    ss.exclude_files        = "**/__tests__/*",
                              "IntegrationTests/*",
                              "react-native-ios/DevSupport/*",
                              "react-native-ios/Inspector/*",
                              "ReactCommon/yoga/*",
                              "react-native-ios/Cxx*/*",
                              "react-native-ios/Fabric/**/*"
    ss.ios.exclude_files    = "react-native-ios/**/RCTTV*.*"

    ss.framework            = "JavaScriptCore"
    ss.libraries            = "stdc++"
    ss.pod_target_xcconfig  = { "HEADER_SEARCH_PATHS" => "\"$(PODS_TARGET_SRCROOT)/ReactCommon\"" }
    # ss.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/ReactCommon/**"', 'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/**"'}
  end



end
