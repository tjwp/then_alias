require "then_alias/version"

module ThenAlias
  alias_method :then, :yield_self
end
