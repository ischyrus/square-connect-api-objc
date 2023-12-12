#
# Be sure to run `pod lib lint SquareConnectAPI.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "SquareConnectAPI"
    s.version          = "1.0.0"

    s.summary          = "Square Connect API"
    s.description      = <<-DESC
                         Client library for accessing the Square Connect APIs
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Steven Schermerhorn" => "steven@thegardenstop.us" }

    s.source_files = 'SquareConnectAPI/**/*.{m,h}'
    s.public_header_files = 'SquareConnectAPI/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

