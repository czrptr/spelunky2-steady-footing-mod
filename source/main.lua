-- STEADY FOOTING MOD
meta = {
  name = "Steady footing",
  version = "1.1",
  description = "Never lose your balance, never drop your stuff",
  author = "Quasar",
}

local BEHAVIOR_TEETERING <const> = 0

---@param entity Entity
---@return boolean
local function is_player(entity)
  ---@diagnostic disable-next-line undefined-field
  return entity ~= nil and entity.get_short_name ~= nil
end

-- ==============================================================================

---@param entity Entity
local function on_spawn(entity)
  if is_player(entity) then
    ---@cast entity Player
    local behavior = entity:get_base_behavior(BEHAVIOR_TEETERING)
    entity:clear_behavior(behavior)
  end
end

-- ==============================================================================

set_post_entity_spawn(on_spawn, SPAWN_TYPE.ANY, MASK.ANY)
