package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.scripting.ScriptMethod;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vm2.LuaFunction;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class LuaHandler implements CommandHandler {
    public static final Map<String, ScriptMethod> luaFunctions = new HashMap();
    public static final List<Tuple<ScriptMethod, ScriptMethod>> generalFunctions = new ArrayList();

    public static void registerLuaCommand(String str, LuaFunction luaFunction, Script script) {
        luaFunctions.put(str, new ScriptMethod("<" + str + ">", script, luaFunction));
    }

    public static void registerLuaCommand(LuaFunction luaFunction, LuaFunction luaFunction2, Script script) {
        generalFunctions.add(new Tuple<>(new ScriptMethod("<unnamed cmd condition>", script, luaFunction), new ScriptMethod("<unnamed cmd>", script, luaFunction2)));
    }

    public static void reset() {
        luaFunctions.clear();
        generalFunctions.clear();
    }

    public LuaHandler(City city) {
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return getMethodForCmd(str) != null;
    }

    public final ScriptMethod getMethodForCmd(String str) {
        ScriptMethod scriptMethod = luaFunctions.get(str);
        int i = 0;
        while (true) {
            List<Tuple<ScriptMethod, ScriptMethod>> list = generalFunctions;
            if (i >= list.size() || scriptMethod != null) {
                break;
            }
            ScriptMethod first = list.get(i).getFirst();
            ScriptMethod second = list.get(i).getSecond();
            if (first.call(LuaValue.valueOf(str)).toboolean()) {
                scriptMethod = second;
            }
            i++;
        }
        return scriptMethod;
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException {
        ScriptMethod methodForCmd = getMethodForCmd(str);
        if (methodForCmd != null) {
            LuaValue luaValueCall = methodForCmd.call(LuaValue.valueOf(str), LuaTableSerializer.deserialize(jSONObject));
            if (luaValueCall.isstring()) {
                setter.set(luaValueCall.tojstring());
            }
        }
    }
}
