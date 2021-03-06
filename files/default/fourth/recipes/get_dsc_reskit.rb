remote_file "#{Chef::Config[:file_cache_path]}\\DSCResourceKit620082014.zip" do
  source 'http://gallery.technet.microsoft.com/DSC-Resource-Kit-All-c449312d/file/124481/1/DSC%20Resource%20Kit%20Wave%206%2008282014.zip'
end

dsc_script 'get-dsc-resource-kit' do
  code <<-EOH
  Archive reskit
  {
    ensure = 'Present'
    path = "#{Chef::Config[:file_cache_path]}\\DSCResourceKit620082014.zip"
    destination = "#{ENV['PROGRAMW6432']}\\WindowsPowerShell\\Modules"
  }
EOH
end
