-- Represents a collection of drawable entities.  Each gamestate holds one of these.


local Entities = {
	active = true,
	entityList = {}
}

function Entities:enter(world)
	self:clear()

	self.world = world
end

function Entities:add(entity)
	table.insert(self.entityList, entity)
end

function Entities:addMany(entities)
	for k, entity in pairs(entities) do
		table.insert(self.entityList, entity)
	end
end

function Entities:remove(entity)
	for i, e in ipairs(self.entityList) do
		if e == entity then
			table.remove(self.entityList, i)
			return
		end
	end
end

function Entities:removeAt(index)
	table.remove(self.entityList, index)
end

function Entities:clear()
	self.entityList = {}
end

function Entities:draw()
	for i, e in ipairs(self.entityList) do
		e:draw(i)
	end
end

function Entities:update(dt)
	for i, e in ipairs(self.entityList) do
		e:update(dt, i)
	end
end

return Entities
