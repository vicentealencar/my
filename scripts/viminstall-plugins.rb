#!/usr/bin/env ruby

VIM_BASE_DIR = File.join(Dir.home, ".vim")
VIM_BUNDLE_DIR = File.join(VIM_BASE_DIR, "bundle")
VIM_FTBUNDLE_DIR = File.join(VIM_BASE_DIR, "ftbundle")

def install_plugin(plugin_url, destination_dir)
    Dir.chdir destination_dir do
        `git clone #{plugin_url}`
    end
end

if not File.exists?VIM_BUNDLE_DIR
    Dir.mkdir VIM_BUNDLE_DIR
end

if not File.exists?VIM_FTBUNDLE_DIR
    Dir.mkdir VIM_FTBUNDLE_DIR
end

File.open "../vim/plugins.txt" do |file|
    file.read.strip!.each_line do |line|
        install_plugin line, VIM_BUNDLE_DIR
    end
end

File.open "../vim/ftplugins.txt" do |file|
    file.read.strip!.each_line do |line|
        filetype, url = *(line.split " ")
        destination_dir = File.join VIM_FTBUNDLE_DIR, filetype

        if File.exists?destination_dir
            Dir.rmdir destination_dir
        end

        Dir.mkdir destination_dir
        install_plugin url, destination_dir
    end
end