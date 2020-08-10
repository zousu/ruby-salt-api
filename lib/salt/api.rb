require "salt/api/version"
require "salt/api/configure"
require "salt/api/client"
require "salt/api/minions"
require "salt/api/events"
require "salt/api/run"
require "salt/api/jobs"
require "salt/api/keys"

module Salt
  module Api
    extend Configure
    extend Client
    extend Minions
    extend Events
    extend Run
    extend Jobs
    extend Keys
  end
end
