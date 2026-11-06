package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.util.json.JSONObject;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class DataDraft extends Draft {
    public JSONObject content;
    public LuaValue luaContent;

    public LuaValue getLuaContent() {
        if (this.luaContent == null) {
            try {
                LuaTable luaTableDeserialize = LuaTableSerializer.deserialize(this.content);
                this.luaContent = luaTableDeserialize;
                luaTableDeserialize.set("privileged", LuaValue.NIL);
            } catch (Exception e) {
                e.printStackTrace();
                this.luaContent = LuaValue.NIL;
            }
        }
        return this.luaContent;
    }
}
