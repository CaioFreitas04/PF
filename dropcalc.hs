dropr :: Int->Double->Double
dropr kills droprate = (1 - ((1 - droprate / 100)^kills)) * 100