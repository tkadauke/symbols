# encoding: UTF-8
class Module
  def const_def(hash)
    hash.each do |key, value|
      define_method key do
        value
      end
    end
  end
end

Dir.glob(File.expand_path(File.dirname(__FILE__) + '/**/*.rb')).each do |file|
  require file
end
