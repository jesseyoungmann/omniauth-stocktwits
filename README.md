# OmniAuth StockTwits

This gem contains an unofficial StockTwits strategy for OmniAuth 2.0 .

Read more at the [StockTwits Authentication Documentation](http://stocktwits.com/developers/docs/authentication).

## How To Use It

Add the following to your `config/initializers/omniauth.rb`:

    use OmniAuth::Builder do
      provider :stocktwits, ENV['STOCKTWITS_KEY'], ENV['STOCKTWITS_SECRET']
    end

Or, if you're authenticating with devise, put this in your `config/initializers/devise.rb`

    require "omniauth-stocktwits"
    config.omniauth :stocktwits, ENV['STOCKTWITS_KEY'], ENV['STOCKTWITS_SECRET']

### Scopes

This gem defaults to the `read` scope, but you can pass in scope options on initialization as a comma separated string:

    use OmniAuth::Builder do
      provider :stocktwits, ENV['STOCKTWITS_KEY'], ENV['STOCKTWITS_SECRET'], scope: => "read,watch_lists,publish_messages"
    end

## Contribute

1. Fork it
2. Create your feature branch (`git checkout -b some-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin some-feature`)
5. Create new Pull Request

## License

Copyright (c) 2012 by Jesse Youngmann

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
