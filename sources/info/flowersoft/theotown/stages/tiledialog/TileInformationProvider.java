package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.stages.cityinfo.CityInfo;
import info.flowersoft.theotown.ui.Dialog;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.Setter;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TileInformationProvider {
    public City city;
    public int level = 0;
    public int tileX;
    public int tileY;
    public Translator translator;

    public abstract boolean canHandle();

    public void finish(Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
    }

    public Runnable finishImmediately(Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        return null;
    }

    public void finishLast(Dialog dialog) {
    }

    public Action[] getActions() {
        return null;
    }

    public CityInfo[] getCityInfos() {
        return null;
    }

    public int getIcon() {
        return 0;
    }

    public int[] getInfluenceVector() {
        return null;
    }

    public int getPluginId() {
        return 0;
    }

    public int getSound() {
        return -1;
    }

    public abstract boolean isMutualExclusive();

    public void setContext(City city, int i, int i2) {
        this.city = city;
        this.translator = city.getTranslator();
        this.tileX = i;
        this.tileY = i2;
    }

    public String getTitle() {
        return "";
    }

    public String getText() {
        return "";
    }

    public LuaValue resolveScriptValue(Draft draft, String str) {
        return resolveScriptValue(draft, str, LuaValue.NIL);
    }

    public LuaValue resolveScriptValue(Draft draft, String str, LuaValue luaValue) {
        LuaValue luaValueArg1;
        for (int i = 0; i < draft.luaScripts.size(); i++) {
            Script script = draft.luaScripts.get(i);
            ScriptMethod method = script.getMethod(str);
            if (method != null && (luaValueArg1 = method.call(new LuaValue[]{script.getScript(), LuaValue.valueOf(this.tileX), LuaValue.valueOf(this.tileY), LuaValue.valueOf(this.level), luaValue}).arg1()) != null && luaValueArg1 != LuaValue.NIL) {
                return luaValueArg1;
            }
        }
        return LuaValue.NIL;
    }
}
