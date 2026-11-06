package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;

/* JADX INFO: loaded from: classes4.dex */
public class RemoveUndergroundWireTool extends RemoveTool {
    public RemoveUndergroundWireTool() {
        super(false, false);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        enterRemoveUndergroundWiresMode();
    }

    @Override // info.flowersoft.theotown.tools.RemoveTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RemoveUndergroundWire";
    }
}
