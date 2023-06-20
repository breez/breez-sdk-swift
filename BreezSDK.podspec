Pod::Spec.new do |spec|
  spec.name                   = "BreezSDK"
  spec.version                = "0.1.0"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :git => 'https://github.com/breez/breez-sdk-swift.git', :tag => spec.version }
  spec.ios.deployment_target  = "11.0"
  spec.source_files           = "Sources/BreezSDK/BreezSDK.swift"
  spec.static_framework       = true

  spec.dependency "breez_sdkFFI", "= #{spec.version}"
end
