local class = require 'bluclass'



local vec2 = class()
function vec2:initialize(x, y)
	self.x = x
	self.y = y
end
function vec2:__tostring()
	return self.x .. ',' .. self.y
end
function vec2:get_x()
	return self.x
end
my_vec2 = vec2:new(23, 0)
print(my_vec2)



local vec3 = class(vec2)
function vec3:initialize(x, y, z)
	vec2.initialize(self, x, y)
	self.z = z
end
function vec3:__tostring()
	return self.x .. ',' .. self.y .. ',' .. self.z
end

my_vec3 = vec3:new(2, 0, -23)
print(my_vec3)

print(my_vec3:get_x())