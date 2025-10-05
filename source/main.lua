-- STEADY FOOTING MOD
meta = {
  name = "Steady footing",
  version = "0.1",
  description = "Never lose your balance, never drop your stuff",
  author = "Quasar",
}

local BEHAVIOR_TEETERING <const> = 0

-- ==============================================================================

local function handle_level_start()
  for _, player in ipairs(get_local_players()) do
    local behavior = player:get_base_behavior(BEHAVIOR_TEETERING)
    player:clear_behavior(behavior)
  end
end

-- ==============================================================================

set_callback(handle_level_start, ON.LEVEL)
