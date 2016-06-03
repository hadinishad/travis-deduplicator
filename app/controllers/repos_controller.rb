class ReposController < ApplicationController
  def deduplicate
    begin
      client = Travis::Client.new('https://api.travis-ci.com')
      client.access_token = ENV["access_token"]
      repository = client.repo("#{params[:repo]}")
      ids = []
      cancelled = []

      number_of_builds = params[:builds] || 20

      repository.first(number_of_builds).each do |build|
        if build.state == 'started' || build.state == 'queued' || build.state == 'created'
          if ids.include? build.pull_request_number
            cancelled << build.pull_request_number
            build.cancel if build.cancelable?
          else
            ids << build.pull_request_number
          end
        end
      end

      render json: cancelled
    rescue => error
      render json: error
    end
  end
end
