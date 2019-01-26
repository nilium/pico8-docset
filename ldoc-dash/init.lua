local sql = require("lsqlite3")

local custom = {
  classmod = {},
  module = {},
  file = './docSet.dsidx'
}

setmetatable(custom, { __index = _G })

local f = loadfile("./dash.ld", nil, custom)

if f then
  f()
end

return {
  docset = function(t)
    local db = sql.open(custom.file)

    db:exec("DROP TABLE searchIndex;")

    db:exec("CREATE TABLE searchIndex (id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);")
    db:exec("CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);")

    for _, mod in ipairs(t) do
      if mod.type == "classmod" then
        db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
        "VALUES ('" .. mod.name .. "', 'Class', " ..
        "'classes/" .. mod.name .. ".html');")

        for _,  item in ipairs(mod.items) do
          if custom.classmod[item.type] then
            custom.classmod[item.type](db, mod, item)
          elseif item.type == "function" then
            db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path)" ..
            " VALUES('" .. item.name:gsub("^.+:(.+)$", mod.name .. ":%1") .. "', 'Method', "..
            "'classes/" .. mod.name .. ".html#" .. item.name .. "')")
          elseif item.type == "field" then
            db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
            " VALUES(''" .. item.name .. "', 'Field'," ..
            " 'classes/" .. mod.name .. ".html#" .. item.name .. "');")
          end
        end
      elseif mod.type == "module" then
        db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
        "VALUES ('" .. mod.name .. "', 'Module', " ..
        "'modules/" .. mod.name .. ".html');")

        for _, item in ipairs(mod.items) do
          if custom.module[item.type] then
            custom.module[item.type](db, mod, item)
          elseif item.type == "function" then
            db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
            "VALUES('" .. mod.name .. "." .. item.name .. "', 'Function', "..
            "'modules/" .. mod.name .. ".html#" .. item.name .. "');")
          elseif item.type == "field" then
            db:exec("INSERT OR IGNORE INTO searchIndex(name, type, path) " ..
            " VALUES(''" .. mod.name .. "." .. item.name .. "', 'Field'," ..
            " 'modules/" .. mod.name .. ".html#" .. item.name .. "');")
          else
            print("Unknown Module Type: " .. item.type)
          end
        end
      elseif custom[mod.type] then
        custom[mod.type](db, mod)
      else
        print("Unknown top-level type: " .. mod.type)
      end

    end

    db:close()

    return t
  end
}
