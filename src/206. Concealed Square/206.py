import math
import re

for num in range(int(math.sqrt(10203040506070809)), int(math.sqrt(19293949596979899))):
    if num % 10 == 3 or num % 10 == 7:
        if re.match(r"1\d2\d3\d4\d5\d6\d7\d8\d9", str(num * num)):
            print(num * 10)
            break
