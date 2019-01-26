project = "PICO-8"

not_luadoc = true

add_section("stat", "Stat Code", "Returns")

new_type("stat", "Stat Codes", false, "Results")

new_type("command", "Commands")

function custom_display_name_handler(item, def)
  if item.type ~= "stat" then
    return def(item)
  end

  return "stat(" .. item.name .. ")"
end

file = {
  "src",
}