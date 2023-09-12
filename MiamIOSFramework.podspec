Pod::Spec.new do |spec|
    spec.name              = 'MiamIOSFramework'
    spec.version           = ENV['MIAM_CORE_VERSION']
    spec.summary           = 'Miam SDK for iOS'
    spec.homepage          = 'https://www.miam.tech'
    spec.description           = <<-DESC
       Miam SDK for iOS.
       DESC
    spec.author            = { 'Diarmuid McGonagle' => 'it@miam.tech' }
    spec.license           = { :type => 'GPLv3', :file => 'LICENSE' }
    spec.swift_versions = "5.8"
    spec.platform          = :ios, "11.0"
    spec.source            = { :git => "https://github.com/miamtech/MiamPublicSPM.git", :tag => "#{spec.version}" }
    spec.source_files = 'Sources/**/*.{h,m,swift}'
    spec.ios.vendored_frameworks = 'Sources/MiamIOSFramework.xcframework'
    spec.dependency 'miamCore', ENV['MIAM_CORE_VERSION']
end
