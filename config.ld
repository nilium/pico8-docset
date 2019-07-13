project = "PICO-8"

not_luadoc = true

add_section("stat", "Stat Code", "Returns")
new_type("stat", "Stat Codes", false, "Returns")

add_section("extcmd", "Extension Command", "Returns")
new_type("extcmd", "Extension Command", false, "Returns")

new_type("command", "Commands")

function custom_display_name_handler(item, def)
  if item.type == "stat" then
    return "stat(" .. item.name .. ")"
  elseif item.type == "extcmd" then
    return "extcmd(\"" .. item.name .. "\")"
  end

  return def(item)
end

file = {
  "src",
}