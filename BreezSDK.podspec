Pod::Spec.new do |spec|
  spec.name                   = "BreezSDK"
  spec.version                = "0.2.15"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :git => 'https://github.com/breez/breez-sdk-swift.git', :tag => spec.version }
  spec.source                 = { :http => "https://github.com/breez/breez-sdk-swift/releases/download/#{spec.version}/breez_sdkFFI.xcframework.zip" }
  spec.ios.deployment_target  = "11.0"
  spec.source_files           = "Sources/BreezSDK/BreezSDK.swift"
  spec.vendored_frameworks    = "breez_sdkFFI.xcframework"
end
