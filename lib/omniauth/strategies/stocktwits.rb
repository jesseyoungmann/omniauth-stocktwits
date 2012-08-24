require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class StockTwits < OmniAuth::Strategies::OAuth2
      option :name, "stocktwits"

      option :client_options, {
        :site =>  "https://api.stocktwits.com",
        :token_url => 'https://api.stocktwits.com/api/2/oauth/token',
        :authorize_url => 'https://api.stocktwits.com/api/2/oauth/authorize'
      }

      option :scope, 'read'

      def authorize_params
        super.tap do |params|
          params[:response_type] = "code"
        end
      end

      uid{ access_token.params['user_id'] }

      info do
        {
          :name => raw_info['user']['name'],
          :avatar_url => raw_info['user']['avatar_url'],
          :nickname => raw_info['user']['username']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        access_token.options[:param_name] = 'access_token'
        @raw_info ||= access_token.get("/api/2/account/verify.json").parsed
      end

    end
  end
end

OmniAuth.config.add_camelization 'stocktwits', 'StockTwits'
