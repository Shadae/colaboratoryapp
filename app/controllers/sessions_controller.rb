class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    # Vimeo
    # video = Vimeo::Advanced::Video.new(ENV["VIMEO_KEY"], ENV["VIMEO_SECRET"], token: auth_hash.extra.access_token.token, secret: auth_hash.extra.access_token.secret)
    # raise

    # video_embed = Vimeo::Advanced::Video.new(ENV["VIMEO_KEY"], ENV["VIMEO_SECRET"], token: auth_hash.extra.access_token.token, secret: auth_hash.extra.access_token.secret)
    # video_embed.get_presets({ page: "1", per_page: "10" })
  end

end
