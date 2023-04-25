require 'chronic'
date = Chronic.parse('lundi prochain a 9h', :now => Time.local(2000, 1, 1))
puts date
# Output: 2023-05-01 09:00:00 +0200
