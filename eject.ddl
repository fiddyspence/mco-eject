metadata    :name        => "cd eject agent",
            :description => "eject a cdrom tray",
            :author      => "fiddyspence",
            :license     => "ASL2",
            :version     => "1.0",
            :url         => "https://github.com/fiddyspence/mco-eject",
            :timeout     => 180

  action "eject", :description => "eject a cdrom" do
    display :always
    input :device,
            :prompt      => "Name of the node to compile a catalog for",
            :description => "Which managed node we are compiling a catalog for",
            :type        => :string,
            :validation  => :shellsafe,
            :maxlength   => 16,
            :optional    => false

    output :result,
      :description => "return code",
      :display_as  => "return code"
  end

