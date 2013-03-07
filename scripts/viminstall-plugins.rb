#!/usr/bin/env ruby

if ENV['OS'] == "Windows_NT"
    VIM_DIR = "vimfiles"
else
    VIM_DIR = ".vim"
end

VIM_BASE_DIR = File.join(ENV['HOME'], VIM_DIR)
VIM_BUNDLE_DIR = File.join(VIM_BASE_DIR, "bundle")
VIM_FTBUNDLE_DIR = File.join(VIM_BASE_DIR, "ftbundle")

def install_plugin(plugin_url, destination_dir)
    Dir.chdir destination_dir do
      plugin_name = File.basename(plugin_url).gsub(".git", "").gsub("\n", "")
      if File.exists? File.join(destination_dir, plugin_name)
        puts "Plugin #{plugin_name} already installed. Skipping." 
        next
      end

        `git clone #{plugin_url}`
    end
end

if not File.exists?VIM_BASE_DIR
    Dir.mkdir VIM_BASE_DIR
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

        if not File.exists?destination_dir
          Dir.mkdir destination_dir
        end

        install_plugin url, destination_dir
    end
end
