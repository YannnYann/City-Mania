package info.flowersoft.theotown.scripting;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.scripting.LuaLibrary;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class SimpleLuaLibrary implements LuaLibrary {
    public static final LuaValue origKey = LuaValue.tableOf();
    public String code;
    public LibraryInjector injector;
    public String name;
    public String path;

    public interface LibraryInjector {
        void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals);
    }

    public SimpleLuaLibrary(String str, String str2, String str3, LibraryInjector libraryInjector) {
        if (str == null) {
            throw new IllegalArgumentException("name may not be null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("code may not be null");
        }
        if (str3 == null) {
            throw new IllegalArgumentException("path may not be null");
        }
        this.name = str;
        this.code = str2;
        this.path = str3;
        this.injector = libraryInjector;
    }

    @Override // info.flowersoft.theotown.scripting.LuaLibrary
    public void load(Globals globals, LuaTable luaTable, LuaLibrary.CodeLoader codeLoader) {
        TimeUtils.millis();
        codeLoader.loadBase64(this.code, this.path).call(origKey, luaTable);
        TimeUtils.millis();
        LuaValue luaValue = globals.get(this.name);
        LuaValue luaValue2 = luaValue.get("_private");
        LibraryInjector libraryInjector = this.injector;
        if (libraryInjector != null) {
            libraryInjector.inject(luaValue, luaValue2, globals);
        }
        LuaFunction luaFunctionOptfunction = luaValue.get("finalize").optfunction(null);
        if (luaFunctionOptfunction != null) {
            luaFunctionOptfunction.call(luaValue);
        }
    }

    @Override // info.flowersoft.theotown.scripting.LuaLibrary
    public void unload(Globals globals) {
        globals.set(this.name, LuaValue.NIL);
    }
}
