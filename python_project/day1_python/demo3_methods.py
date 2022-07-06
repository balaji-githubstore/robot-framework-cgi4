import area
import math as m



from math_logics import volume

output = area.area_of_circle(radius=10)
print(output)

output = area.area_of_circle(20)
print(output)

print(area.area_of_triangle(10, 10))

res=m.pow(2,3)
print(res)

res=m.sqrt(64)
print(res)

volume.print_module_detail()

res=volume.volume_of_cylinder(10,10)

print(res)