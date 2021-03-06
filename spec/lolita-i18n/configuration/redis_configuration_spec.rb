require 'spec_helper'

describe Lolita::I18n::Redis_Configuration do 
  let(:klass){Lolita::I18n::Redis_Configuration}
  let(:conf){klass.new}
  let(:redis){double("redis")}

  it "should load rails if Rails is defined" do 
    Lolita.stub(:rails3?).and_return(true)
    conf.should_receive(:require).with('lolita-i18n/rails')
    conf.load_rails!
  end

  it "should allow to assign store with Hash as connection options" do 
    Redis.should_receive(:new).with({:key => "value"}).and_return(redis)
    conf.store = {:key => "value"}
  end

  it "should allow to assign store as store itself" do 
    conf.store = redis 
    conf.store.should eq(redis)
  end

  it "should return assigned store" do 
    conf.store = redis
    conf.store.should eq(redis)
  end

  it "should return new Redis connection and warn when no store is assigned"  do 
    Redis.should_receive(:new).and_return(redis)
    #conf.should_receive(:warn).with("Lolita::I18n No store specified. See Lolita::I18n")
    conf.store#.should eq(redis)
  end

  it "should lazy create and Redis_Configuration" do 
    Redis_conf = klass.new
    klass.should_receive(:new).and_return(Redis_conf)
    ::I18n::Backend::KeyValue.should_receive(:new)

    conf.backend
  end

  it "should load translations" do 
    yaml_backend = double("yaml_backend")
    conf.yaml_backend = yaml_backend
    yaml_backend.should_receive(:load_translations)
    conf.load_translations
  end

  it "should initialize chain" do 
    conf.yaml_backend = double("yaml backend")
    Redis.stub(:new).and_return(redis)
    ::I18n::Backend::Chain.should_receive(:new).with(conf.backend,conf.yaml_backend)
    conf.initialize_chain
  end

  it "include module in ::I18n::Backend::Simple" do 
    conf.include_modules
    ::I18n::Backend::Simple.ancestors.should include(::I18n::Backend::Flatten)
    ::I18n::Backend::Simple.ancestors.should include(::I18n::Backend::Pluralization)
    ::I18n::Backend::Simple.ancestors.should include(::I18n::Backend::Metadata)
    ::I18n::Backend::Simple.ancestors.should include(::I18n::Backend::InterpolationCompiler)
  end

end




