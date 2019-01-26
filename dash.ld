-- lint-mode: api

file = "PICO-8.docset/Contents/Resources/docSet.dsidx"

module['function'] = function(db, mod, item)
  db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
    "VALUES('" .. item.name .. "', 'Function', " ..
    "'modules/" .. mod.name .. ".html#" .. item.name .. "');")
end

function module.stat(db, mod, item)
  db:exec("INSERT OR IGNORE INTO searchINdex(name, type, path) " ..
    "VALUES('stat(" .. item.name .. ")', 'Directive', "..
    "'modules/" .. mod.name .. ".html#" .. item.name .. "');")
end

function module.command(db, mod, item)
  db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
    "VALUES('" .. item.name .. "', 'Command', " ..
    "'modules/" .. mod.name .. ".html#" .. item.name .. "');")
end