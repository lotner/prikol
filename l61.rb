# frozen_string_literal: true

# Module for Math
def recurse(eps)
  num = 1.0
  arg = 0
  while (part = (1 / num)) > eps
    arg += part
    num *= 2.0
  end
  arg
end
