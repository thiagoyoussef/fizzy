require "fizzy/saas/version"
require "fizzy/saas/engine"

module Fizzy
  module Saas
    def self.append_test_paths
      saas_test_dir = "#{Gem::Specification.find_by_name("fizzy-saas").gem_dir}/test"
      ENV["DEFAULT_TEST"] = "{#{saas_test_dir},test}/**/*_test.rb"
      ENV["DEFAULT_TEST_EXCLUDE"] = "{#{saas_test_dir},test}/{system,dummy,fixtures}/**/*_test.rb"
    end
  end
end
