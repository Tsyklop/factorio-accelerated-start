data:extend({
  {
    type = "double-setting",
    name = "accelerated-start-robot-speed",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 100,
    order = "a"
  },
  {
    type = "bool-setting",
    name = "accelerated-start-skip-intro",
    setting_type = "startup",
    default_value = false,
    order = "b"
  },
  {
    type = "bool-setting",
    name = "accelerated-start-disable-crashsite",
    setting_type = "startup",
    default_value = false,
    order = "c"
  }
})
