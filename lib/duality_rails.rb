require 'active_support'
require 'duality'

class DualityRails < ActiveSupport::Cache::Store
  VERSION = "0.0.1pre1"
  include Duality

  # Active Support methods:
  #
  # cleanup
  def cleanup(*args)
    flush_expired(*args)
  end

  # clear
  def clear(*args)
    flush
  end

  # decrement 
  # - supported through Duality::missing_method

  # delete
  # - implemented in duality

  # delete_matched
  # - supported through Duality::missing_method

  # exists?
  # - supported through Duality::missing_method

  # fetch
  # - inherited from ActiveSupport

  # increment
  # - supported through Duality::missing_method

  # mute
  # - inherited from ActiveSupport

  # read
  def read(*args)
    get(*args)
  end

  # read_multi
  # - inherited from ActiveSupport

  # silence!
  # - inherited from ActiveSupport
  
  # write
  def write(*args)
    get(*args)
  end

end
