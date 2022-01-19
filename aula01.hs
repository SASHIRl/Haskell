func a b c = s + ( a + b + c)
    where 
        s = a + c

func2 x = 3 + f x + f a + f b
    where
        f x = x + 7 * c
        a = 3 * c
        b = f 2
        c = 10

func3 a = b + c
    where b = 1
          c = 2