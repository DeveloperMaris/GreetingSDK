Pod::Spec.new do |spec|
  spec.name         = "GreetingSDK"
  spec.version      = "1.1.0-beta"
  spec.summary      = "GreetingSDK is a sample SDK for showing how semantic versioning works with CocoaPods"
  spec.description  = "GreetingSDK is a sample SDK for showing how semantic versioning works with CocoaPods."
  spec.homepage     = "https://github.com/DeveloperMaris/cocoapod-sdk-version-changes"
  spec.license      = "MIT"
  spec.author       = { "Maris Lagzdins" => "maaris.lagzdins@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/DeveloperMaris/cocoapod-sdk-version-changes.git", :tag => "v#{spec.version}" }
  spec.source_files = "GreetingSDK/**/*.{h,m,swift}"
  spec.public_header_files  = "GreetingSDK/**/*.h"
  spec.swift_versions   = "5"
end
