require 'spec_helper'

  describe package('httpd') do
    it { should be_installed }
  end

  describe package('squid') do
    it { should be_installed }
  end
  
  describe service('httpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe service('squid') do
    it { should be_enabled }
    it { should be_running }
  end
  
  describe port(80) do
    it { should be_listening.with('tcp') }
  end
  
  describe process("httpd") do
    it { should be_running }
  end