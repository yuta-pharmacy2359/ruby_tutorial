def convert_hash_syntax(old_syntax)
  old_syntax
end

def convert_hash_syntax2(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end