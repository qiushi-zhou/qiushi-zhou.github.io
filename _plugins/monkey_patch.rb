# Monkey-patch for Liquid / Jekyll 3.9 on Ruby 3+
# `tainted?` was removed in Ruby 3.0. This no-op shim lets old Liquid run.
class String
  def tainted?
    false
  end
end unless String.method_defined?(:tainted?)
