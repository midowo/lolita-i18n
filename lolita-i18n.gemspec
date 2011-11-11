# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "lolita-i18n"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ITHouse (Latvia)", "Arturs Meisters", "Gatis Tomsons"]
  s.date = "2011-11-11"
  s.description = "Lolita plugin, that enables .yml files management from administrative interface. Also faster access to translations, that DB store"
  s.email = "support@ithouse.lv"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "History.rdoc",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/assets/images/lolita/i18n/google_translate_icon.png",
    "app/assets/javascripts/lolita/i18n/application.js",
    "app/assets/javascripts/lolita/i18n/i18n.js.coffee",
    "app/assets/javascripts/lolita/i18n/spin.min.js",
    "app/assets/stylesheets/lolita/i18n/application.scss",
    "app/controllers/lolita/i18n_controller.rb",
    "app/helpers/lolita/i18n_helper.rb",
    "app/views/lolita/i18n/index.html.haml",
    "config/locales/en.yml",
    "config/locales/lv.yml",
    "config/routes.rb",
    "lib/lolita-i18n.rb",
    "lib/lolita-i18n/backend.rb",
    "lib/lolita-i18n/google_translate.rb",
    "lib/lolita-i18n/module.rb",
    "lib/lolita-i18n/rails.rb",
    "lolita-i18n.gemspec",
    "spec/controllers/lolita/i18n_controller_spec.rb",
    "spec/lolita-i18n/backend_spec.rb",
    "spec/lolita-i18n/google_translate_spec.rb",
    "spec/rails_app/app/controllers/application_controller.rb",
    "spec/rails_app/config/application.rb",
    "spec/rails_app/config/enviroment.rb",
    "spec/rails_app/config/initializers/lolita_i18n.rb",
    "spec/rails_app/config/locales/en.yml",
    "spec/rails_app/config/locales/lv.yml",
    "spec/rails_app/config/routes.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/ithouse/lolita-i18n"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Lolita plugin, that enables .yml management"
  s.test_files = [
    "spec/controllers/lolita/i18n_controller_spec.rb",
    "spec/lolita-i18n/backend_spec.rb",
    "spec/lolita-i18n/google_translate_spec.rb",
    "spec/rails_app/app/controllers/application_controller.rb",
    "spec/rails_app/config/application.rb",
    "spec/rails_app/config/enviroment.rb",
    "spec/rails_app/config/initializers/lolita_i18n.rb",
    "spec/rails_app/config/routes.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<lolita>, ["~> 3.2.0.rc.6"])
      s.add_runtime_dependency(%q<hiredis>, ["~> 0.3.1"])
      s.add_runtime_dependency(%q<redis>, ["~> 2.2.2"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<easy_translate>, ["~> 0.2.1"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<lolita>, ["~> 3.2.0.rc.6"])
      s.add_dependency(%q<hiredis>, ["~> 0.3.1"])
      s.add_dependency(%q<redis>, ["~> 2.2.2"])
      s.add_dependency(%q<yajl-ruby>, ["~> 1.0.0"])
      s.add_dependency(%q<easy_translate>, ["~> 0.2.1"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<lolita>, ["~> 3.2.0.rc.6"])
    s.add_dependency(%q<hiredis>, ["~> 0.3.1"])
    s.add_dependency(%q<redis>, ["~> 2.2.2"])
    s.add_dependency(%q<yajl-ruby>, ["~> 1.0.0"])
    s.add_dependency(%q<easy_translate>, ["~> 0.2.1"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

