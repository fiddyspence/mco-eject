require 'puppet'
require 'puppet/face'

module MCollective
  module Agent
    class Eject<RPC::Agent
      metadata :name        => "Eject agent",
               :description => "Ask a puppetmaster to compile a catalog via mcollective",
               :author      => "fiddyspence",
               :license     => "ASL2",
               :version     => "1.0",
               :url         => "https://github.com/fiddyspence/mco-catalogcompile",
               :timeout     => 180

      action "eject" do

       result = {:exitcode => nil,
                 :output => "",
       }
       cmd = Shell.new("/usr/sbin/eject #{request[:device]}", :stdout => result[:output], :stderr => result[:output])
       cmd.runcommand
       result[:exitcode] = cmd.status.exitstatus
       reply[:status] = result[:exitcode]
       reply[:result] = result[:output]

      end

    end
  end
end

# vi:tabstop=2:expandtab:ai:filetype=ruby
