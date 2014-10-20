module Gym
   class Push
     def up
       40
     end
   end
end

module Dojo
   class Push
     def up
       30
     end
   end
end

dojo_push = Dojo::Push.new
p dojo_push.up

gym_push = Gym::Push.new
p gym_push.up