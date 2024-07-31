modGuid = "dee0a1c8-7ea5-43cb-9c4c-806f5977db81"
subClassGuid = "b7c4c071-740d-4667-bbe2-b5e3048a7d78"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    AuthorSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "sorcerer",
      subClassName = "BloodMagicSorcerer"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end
