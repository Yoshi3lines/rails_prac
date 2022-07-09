Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
      provider :github, "aa619f3bc52adc3f1085", "f23389e717de583b55140c95e38520a824ade4bf"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end