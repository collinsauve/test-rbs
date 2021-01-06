class Foo
  def call_me_maybe
    'Foo here'
  end
end

class Bar
  def call_me_maybe
    'Bar here'
  end
end

class Caller
  def call(callee)
    callee.call_me_maybe
  end
end

class Main
  def main
    puts Caller.new.call(Foo.new)
    puts Caller.new.call(Bar.new)
  end
end