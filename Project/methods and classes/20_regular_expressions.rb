# Simple pattern matches to dog
p1 = /dog/
p (p1 =~ 'cat-dog') # => 4
p (p1 =~ 'cat-doggy') # => 4
p (p1 =~ 'cat-dig') # => nil
p (p1 =~ 'cat-fox') # => nil

# Pattern matches to d, any letter, then g
p1 = /d\wg/
p (p1 =~ 'cat-dog') # => 4
p (p1 =~ 'cat-doggy') # => 4
p (p1 =~ 'cat-dig') # => 4
p (p1 =~ 'cat-fox') # => nil

# Pattern matches to d, any vowel, then g
p1 = /d[aeiou]g/
p (p1 =~ 'cat-dog') # => 4
p (p1 =~ 'cat-doggy') # => 4
p (p1 =~ 'cat-dig') # => 4
p (p1 =~ 'cat-fox') # => nil

# Pattern matches to dog at end of string
p1 = /dog\Z/
p (p1 =~ 'cat-dog') # => 4
p (p1 =~ 'cat-doggy') # => nil
p (p1 =~ 'cat-dig') # => nil
p (p1 =~ 'cat-fox') # => nil

# Pattern matches to d, anything other than o or u, then g
p1 = /d[^ou]g/
p (p1 =~ 'cat-dog') # => nil
p (p1 =~ 'cat-doggy') # => nil
p (p1 =~ 'cat-dig') # => 4
p (p1 =~ 'cat-fox') # => nil