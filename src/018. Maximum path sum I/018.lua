-- literal brute force
local a1 = {75}
local a2 = {95,64}
local a3 = {17,47,82}
local a4 = {18,35,87,10}
local a5 = {20,04,82,47,65}
local a6 = {19,01,23,75,03,34}
local a7 = {88,02,77,73,07,63,67}
local a8 = {99,65,04,28,06,16,70,92}
local a9 = {41,41,26,56,83,40,80,70,33}
local a10 = {41,48,72,33,47,32,37,16,94,29}
local a11 = {53,71,44,65,25,43,91,52,97,51,14}
local a12 = {70,11,33,28,77,73,17,78,39,68,17,57}
local a13 = {91,71,52,38,17,14,91,43,58,50,27,29,48}
local a14 = {63,66,04,68,89,53,67,30,73,16,69,87,40,31}
local a15 = {04,62,98,27,23,09,70,98,73,93,38,53,60,04,23}

local max = 0
for i1 = 1, 1 do
  for i2 = i1, i1 + 1 do
    for i3 = i2, i2 + 1 do
      for i4 = i3, i3 + 1 do
        for i5 = i4, i4 + 1 do
          for i6 = i5, i5 + 1 do
            for i7 = i6, i6 + 1 do
              for i8 = i7, i7 + 1 do
                for i9 = i8, i8 + 1 do
                  for i10 = i9, i9 + 1 do
                    for i11 = i10, i10 + 1 do
                      for i12 = i11, i11 + 1 do
                        for i13 = i12, i12 + 1 do
                          for i14 = i13, i13 + 1 do
                            for i15 = i14, i14 + 1 do
                              local sum = a1[i1] + a2[i2] + a3[i3] + a4[i4] + a5[i5] + a6[i6] + a7[i7] + a8[i8] + a9[i9] + a10[i10] + a11[i11] + a12[i12] + a13[i13] + a14[i14] + a15[i15]
                              if (sum > max) then
                                max = sum
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

print(max)