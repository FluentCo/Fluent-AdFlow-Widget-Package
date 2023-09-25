Pod::Spec.new do |s|
  s.name             = 'FluentAdFlowAdsWidget'
  s.version          = '0.0.1'
  s.summary          = 'Fluent AdFlow Ads Widget iOS SDK'
  s.description      = 'The FluentAdFlowWidget iOS SDK enables you to integrate Fluent into your native iOS mobile apps.'

  s.homepage         = 'https://github.com/FluentCo/Fluent-AdFlow-Widget-Package.git'
  s.license          =  { :type => 'Copyright 2023 Fluent', :text => <<-LICENSE
    Licensed under the FluentAdsKit Software Development Kit (SDK) Terms of Use Version 1.0 (the "License")
    LICENSE
  }
  s.author           = { 'awongfluentco' => 'awong@fluentco.com' }
  s.source           = { :http => 'https://fluent-adflow-mobile-sdk.s3.amazonaws.com/ios/FluentAdFlowAdsWidget.xcframework.v0.0.1.zip' }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.8'
  s.vendored_frameworks = 'FluentAdFlowAdsWidget.xcframework'
end
