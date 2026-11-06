package info.flowersoft.theotown.scripting;

import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;

/* JADX INFO: loaded from: classes4.dex */
public interface LuaLibrary {

    public interface CodeLoader {
        LuaFunction loadBase64(String str, String str2);
    }

    void load(Globals globals, LuaTable luaTable, CodeLoader codeLoader);

    void unload(Globals globals);
}
