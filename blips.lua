function createMapBlip(name , color , coords , questType , type)
  local markerName = name
  local markerCoords = coords

  local marker = Game.GetTargetingSystem():CreateWorldMarker(markerCoords, markerName, Game.GetPlayer())
  marker:SetColor(Game.GetUIColorScheme():GetColor(color))
  marker:SetType(type)
  marker:SetQuestMarkerType(questType)

  return marker
end

local blip = createMapBlip("Oskar Developer", "yellow" , Vector4.new(-2459.9, 1131.5, 10.0, 0.0) , "questObjective" , "markerMainObjective")
