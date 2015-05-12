class Sample
  include Sidekiq::Worker
  #sidekiq_options queue: :event

  def perform(data)
    puts data
    #Rails.logger.debug(data)
  end
end
