
require 'sinatra/base'

class LcmApp < Sinatra::Base
  EMAIL_PATH = 'maryam_kh1374_gmail_com'

  get "/#{EMAIL_PATH}" do
    content_type 'text/plain'

    x, y = params.values_at('x', 'y')

    if [x, y].all? { |n| n.is_a?(String) && /\A[0-9]+\z/.match?(n) }
      (x.to_i.lcm(y.to_i)).to_s
    else
      'NaN'
    end
  end
end
