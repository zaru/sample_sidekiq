Sidekiq.configure_server do |config|
  case Rails.env
    when 'production' then
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
    when 'staging' then
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
    else
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
  end
end

Sidekiq.configure_client do |config|
  case Rails.env
    when 'production' then
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
    when 'staging' then
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
    else
      config.redis = { url: 'redis://192.168.33.40:6379', namespace: 'sidekiq' }
  end
end

