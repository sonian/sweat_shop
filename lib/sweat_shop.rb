require 'rubygems'
require 'mq'
require 'digest'
require '/../../i_can_daemonize/lib/i_can_daemonize' #fixme

$:.unshift(File.dirname(__FILE__))
require 'sweat_shop/metaid'
require 'sweat_shop/worker'
require 'sweat_shop/version'

if defined?(RAILS_ROOT)
  load_path = File.expand_path(File.join(RAILS_ROOT, 'app', 'workers'))
  Dir.glob("#{load_path}/**/*.rb").each{|worker| require worker }
end

module SweatShop
  extend self

  def workers
    @workers ||= []
  end

  def workers=(workers)
    @workers = workers 
  end

  def complete_tasks(workers)
    EM.run do
      workers.each do |worker|
        worker.complete_tasks
      end
    end
  end

  def workers_in_group(groups)
    groups = [groups] unless groups.is_a?(Array)
    if groups.include?(:all)
      workers
    else
      workers.select do |worker|
        groups.include?(worker.queue_group)
      end
    end
  end

  def complete_all_tasks
    complete_tasks(
      workers_in_group(:all)
    )
  end

  def complete_default_tasks
    complete_tasks(
      workers_in_group(:default)
    )
  end
end
