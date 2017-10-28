class Application

  def call(env)
    resp = Rack::Response.new

    welcome = "Welcome, to the worst gambling experience of your life...\n\n"

    one = Kernel.rand(1..3)
    two = Kernel.rand(1..3)
    three = Kernel.rand(1..3)
    def win?(one,two,three)
      win = ((one == two) && (two == three))
    end
    def spinner
      "spinning...\n\n"
    end


    resp.write welcome
    if win?(one,two,three)
      resp.write spinner
      resp.write "AYYLMAO U WON BRUV... #{one} == #{two} == #{three}\n\n\nThis is for the nerds over at rspec('You Win')"
    else
      resp.write spinner
      resp.write "#{one} != #{two} || #{two} != #{three} U SUCC BOI\n\n\nThis is for the nerds over at rspec('You Lose')"
    end
    resp.finish
  end

end
