class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    counter = 0
    # until num_1 == num_2 && num_2 == num_3
    # if num_1 == num_2 && num_2 == num_3
      # resp.write "#{num_1}  - #{num_2} - #{num_3} \n"
      # resp.write "You Win"

  #     resp.write "#{num_1}  - #{num_2} - #{num_3} \n"
  #     resp.write "You Lose\n"
  #     num_1 = Kernel.rand(1..20)
  #     num_2 = Kernel.rand(1..20)
  #     num_3 = Kernel.rand(1..20)
  #     counter += 1
  #   end
  #   resp.write "It took #{counter} tries to win anything\n"
  #   resp.write "#{num_1}  - #{num_2} - #{num_3} \n"
  #   resp.write "You Win"
  #   resp.finish
  # end

  if num_1==num_2 && num_2==num_3
    resp.write "You Win"
  else
    resp.write "You Lose"
  end

  resp.finish
end

end
