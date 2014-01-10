
def angles(a,b,c)

angle_a =  (Math.acos((((a**2)-(b**2)-(c**2)).to_f)/(-2*b*c)))*(180/Math::PI)
angle_b =  (Math.acos((((b**2)-(a**2)-(c**2)).to_f)/(-2*a*c)))*(180/Math::PI)
angle_c =  (Math.acos((((c**2)-(b**2)-(a**2)).to_f)/(-2*b*a)))*(180/Math::PI)

[angle_a, angle_b, angle_c]


end

puts angles(3,4,5)

