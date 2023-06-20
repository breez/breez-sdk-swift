Pod::Spec.new do |spec|
  spec.name                   = "breez_sdkFFI"
  spec.version                = "0.1.0"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Low-level bindings to the Breez SDK Rust API"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :http => "https://github.com/breez/breez-sdk-swift/releases/download/#{spec.version}/breez_sdkFFI.xcframework.zip" }
  spec.ios.deployment_target  = "11.0"
  spec.vendored_frameworks    = "breez_sdkFFI.xcframework"
end
