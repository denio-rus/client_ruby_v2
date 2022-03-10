require 'faraday'
require 'faraday_middleware'
require 'ostruct'
require 'be_gateway_v3/version'
require 'backports/2.0.0/stdlib/ostruct'

module BeGatewayV3
  autoload :Connection, "be_gateway_v3/connection"
  autoload :Client, "be_gateway_v3/client"
  autoload :AsyncClient, "be_gateway_v3/async_client"
  autoload :Checkout, "be_gateway_v3/checkout"
  autoload :Base, "be_gateway_v3/response/base"
  autoload :Response, "be_gateway_v3/response/response"
  autoload :ErrorResponse, "be_gateway_v3/response/error_response"
  autoload :Transaction, "be_gateway_v3/response/transaction"
  autoload :AsyncResponse, "be_gateway_v3/response/async_response"
end
