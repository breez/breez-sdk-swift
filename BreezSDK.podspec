podspec_dir = File.dirname(__FILE__)
tag_version = "0.2.16"
framework = 'breez_sdkFFI.xcframework'
lib_name = "breez-sdk.#{tag_version}"
url = "https://github.com/breez/breez-sdk-swift/releases/download/#{tag_version}/breez_sdkFFI.xcframework.zip"
frameworks_dir = "bindings-swift"

`

if [ ! -d #{frameworks_dir}/#{framework} ]; then
    curl -L #{url} -o #{lib_name}.zip    
fi

if [ ! -d #{frameworks_dir}/#{framework} ]; then
    mkdir -p #{frameworks_dir}
    curl -L #{url} -o #{frameworks_dir}/#{lib_name}.zip
    cd #{frameworks_dir}
    unzip #{lib_name}.zip
    rm -rf __MACOSX
    rm #{lib_name}.zip    
fi
`

Pod::Spec.new do |spec|
  spec.name                   = "BreezSDK"
  spec.version                = "0.2.15"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"    
  spec.source                 = { :git => 'https://github.com/breez/breez-sdk-swift.git', :branch => single-pod2 }
  spec.ios.deployment_target  = "11.0"
  spec.source_files           = "Sources/BreezSDK/BreezSDK.swift"
  spec.vendored_frameworks    = "bindings-swift/breez_sdkFFI.xcframework"  
end
