require 'faraday'
require 'faraday_middleware'
require 'ostruct'
require 'be_gateway_v2/version'
require 'backports/2.0.0/stdlib/ostruct'

module BeGatewayV2
  autoload :Connection, "be_gateway_v2/connection"
  autoload :Client, "be_gateway_v2/client"
  autoload :AsyncClient, "be_gateway_v2/async_client"
  autoload :Checkout, "be_gateway_v2/checkout"
  autoload :Base, "be_gateway_v2/response/base"
  autoload :Response, "be_gateway_v2/response/response"
  autoload :ErrorResponse, "be_gateway_v2/response/error_response"
  autoload :Transaction, "be_gateway_v2/response/transaction"
  autoload :AsyncResponse, "be_gateway_v2/response/async_response"
end
