class User
end

user = User.new

puts user.to_s
# #<User:0x00007fabce8f9ae0>

puts user.nil?
# false

puts User.superclass
# Object

p user.methods.sort
# [:!, :!=, :!~, :<=>, :==, :===, :=~, :__id__, :__send__, :class, :clone, :define_singleton_method, :display, :dup, :enum_for, :eql?, :equal?, :extend, :freeze, :frozen?, :hash, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :is_a?, :itself, :kind_of?, :method, :methods, :nil?, :object_id, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :remove_instance_variable, :respond_to?, :send, :singleton_class, :singleton_method, :singleton_methods, :taint, :tainted?, :tap, :then, :to_enum, :to_s, :trust, :untaint, :untrust, :untrusted?, :yield_self]