require 'rubygems'
require 'plist'

class AlfredInit
  attr_reader :query

  def initialize(query)
    @query = query
  end

  def plist_path
    File.join(File.dirname(__FILE__), 'info.plist')
  end

  def plist
    @plist ||= Plist::parse_xml(plist_path)
  end

  def bundleid
    plist['bundleid']
  end

  def log(msg)
    console_log(msg)
  end
end
