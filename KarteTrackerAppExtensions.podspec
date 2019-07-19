#
# Be sure to run `pod lib lint KarteTrackerAppExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                    = 'KarteTrackerAppExtensions'
  s.version                 = '1.0.3'
  s.summary                 = 'KARTE SDK for iOS App Extensions'
  s.homepage                = 'https://karte.io/'
  s.author                  = { 'Plaid' => 'dev.share@plaid.co.jp' }
  s.social_media_url        = 'https://twitter.com/karte_io'
  s.documentation_url       = 'https://developers.karte.io/docs/ios-sdk'
  s.license                 = {
    :type => 'Commercial',
    :text => 'Copyright© Plaid Inc., All Rights Reserved.'
  }
  s.platform                = :ios
  s.requires_arc            = true
  s.ios.deployment_target   = '10.0'

  if ENV['RELEASE'] == 'true' then
    s.source                = { :git => 'https://github.com/plaidev/karte-tracker-ios-app-extensions.git', :tag => "v#{s.version}" }
    s.vendored_frameworks   = 'KarteTrackerAppExtensions.framework'
    s.compiler_flags        = '-ObjC'
    s.ios.frameworks        = 'MobileCoreServices'
    s.ios.weak_frameworks   = 'UserNotifications'
  else
    s.source                = { :git => 'https://github.com/plaidev/tracker-ios.git', :tag => 'v0.0.0' }
    s.source_files          = 'KarteTrackerAppExtensions/Classes/**/*'
    s.public_header_files   = 'KarteTrackerAppExtensions/Classes/*.h'
    s.private_header_files  = 'KarteTrackerAppExtensions/Classes/Private/*.h'
    s.pod_target_xcconfig   = { 'OTHER_CFLAGS' => '-fembed-bitcode' }
  end
end
