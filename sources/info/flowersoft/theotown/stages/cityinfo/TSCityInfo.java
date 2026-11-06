package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.GUILibrary;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.lib.ZeroArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public class TSCityInfo extends ListBasedCityInfo {
    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 2783;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_PUBLICTRANSPORT;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(777);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        super.build(city, gadget, stapel2DGameContext, gameStack);
        List<TSSystem> systems = ((DefaultTSComponent) city.getComponent(22)).getSystems();
        LuaTable luaTableWrap = GUILibrary.wrap(this.listBox);
        ZeroArgFunction zeroArgFunction = new ZeroArgFunction() { // from class: info.flowersoft.theotown.stages.cityinfo.TSCityInfo.1
            @Override // vm2.lib.ZeroArgFunction, vm2.lib.LibFunction, vm2.LuaValue
            public LuaValue call() {
                gameStack.pop();
                return LuaValue.NIL;
            }
        };
        ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
        for (int i = 0; i < systems.size(); i++) {
            TSSystem tSSystem = systems.get(i);
            if (tSSystem.isAvailable()) {
                Script currentScript = scriptingEnvironment.getCurrentScript();
                try {
                    scriptingEnvironment.setCurrentScript(tSSystem.getDraft().getOwner());
                    tSSystem.call("buildCityInfoEntry", luaTableWrap, zeroArgFunction);
                } finally {
                    scriptingEnvironment.setCurrentScript(currentScript);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public boolean isAvailable(City city) {
        return !((DefaultTSComponent) city.getComponent(22)).getSystems().isEmpty();
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "TSCityInfo";
    }
}
