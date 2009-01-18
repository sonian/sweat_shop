class HelloWorker < SweatShop::Worker
  TEST_FILE = File.join(File.dirname(__FILE__), 'test.txt') unless defined?(TEST_FILE)

  def hello(name)
    "Hi, #{name}"
  end

  after_task do |task|
    File.open(TEST_FILE, 'w'){|f| f << task[:result]}
  end
end
