require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Buffer < OmniAuth::Strategies::OAuth2

      option :name, 'buffer'

      option :client_options, {
        :site => 'https://api.bufferapp.com',
        :authorize_url => 'https://bufferapp.com/oauth2/authorize',
        :token_url => 'https://api.bufferapp.com/1/oauth2/token'
      }

      uid { raw_info['id'] }

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        data = access_token.get('/1/user.json').parsed
        puts data.inspect
        @raw_info ||= data
      end

    end
  end
end

OmniAuth.config.add_camelization 'buffer2', 'Buffer2'