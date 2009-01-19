Gem::Specification.new do |s|
  s.name = %q{sweat_shop}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Amos Elliston"]
  s.date = %q{2009-01-19}
  s.description = %q{TODO}
  s.email = %q{amos@geni.com}
  s.files = ["History.txt", "Rakefile", "README.txt", "VERSION.yml", "lib/sweat_shop", "lib/sweat_shop/metaid.rb", "lib/sweat_shop/sweatd.rb", "lib/sweat_shop/worker.rb", "lib/sweat_shop.rb", "test/hello_worker.rb", "test/test_functional_worker.rb", "test/test_helper.rb", "test/test_sweatshop.rb", "config/sweatshop.yml"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/famoseagle/sweat-shop}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{SweatShop is a simple asynchronous worker queue build on top of rabbitmq/ampq}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
