require "receive_self/version"

module Kernel
  def receive_self
    self.instance_methods.each do |inst_method|
      self.class_eval do |klass|
        define_method :"#{inst_method}__rself".to_sym do |*arg|
          org_return = self.send inst_method, *arg
          if org_return.instance_of?(klass.superclass)
            return klass.new(org_return)
          else
            org_return
          end
        end
      end
    end
  end
end