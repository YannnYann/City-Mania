package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.scripting.ManagedLibrary;
import info.flowersoft.theotown.scripting.SimpleLuaLibrary;
import io.blueflower.stapel2d.util.IntList;
import java.util.List;
import vm2.Globals;
import vm2.LuaFunction;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class ArrayLibrary extends ManagedLibrary implements SimpleLuaLibrary.LibraryInjector {
    public LuaFunction applyArray;
    public LuaValue lib;

    public ArrayLibrary() {
        super("libs/Array.lua");
    }

    @Override // info.flowersoft.theotown.scripting.SimpleLuaLibrary.LibraryInjector
    public void inject(LuaValue luaValue, LuaValue luaValue2, Globals globals) {
        this.lib = luaValue;
        this.applyArray = luaValue.get("new").checkfunction();
    }

    public LuaTable createArray(IntList intList) {
        LuaTable luaTableCreateRawTable = createRawTable(intList);
        this.applyArray.call(this.lib, luaTableCreateRawTable);
        return luaTableCreateRawTable;
    }

    public LuaTable createArray(List<LuaValue> list) {
        LuaTable luaTableCreateRawTable = createRawTable(list);
        this.applyArray.call(this.lib, luaTableCreateRawTable);
        return luaTableCreateRawTable;
    }

    public static LuaTable createRawTable(IntList intList) {
        int i = 0;
        LuaTable luaTableTableOf = LuaValue.tableOf(intList.size(), 0);
        while (i < intList.size()) {
            int i2 = i + 1;
            luaTableTableOf.rawset(i2, LuaValue.valueOf(intList.get(i)));
            i = i2;
        }
        return luaTableTableOf;
    }

    public static LuaTable createRawTable(List<LuaValue> list) {
        int i = 0;
        LuaTable luaTableTableOf = LuaValue.tableOf(list.size(), 0);
        while (i < list.size()) {
            LuaValue luaValue = list.get(i);
            if (luaValue == null) {
                luaValue = LuaValue.NIL;
            }
            i++;
            luaTableTableOf.rawset(i, luaValue);
        }
        return luaTableTableOf;
    }
}
