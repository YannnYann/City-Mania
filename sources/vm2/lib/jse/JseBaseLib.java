package vm2.lib.jse;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import vm2.LuaValue;
import vm2.lib.BaseLib;

/* JADX INFO: loaded from: classes6.dex */
public class JseBaseLib extends BaseLib {
    @Override // vm2.lib.BaseLib, vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        luaValue2.checkglobals().STDIN = System.in;
        return luaValue2;
    }

    @Override // vm2.lib.BaseLib, vm2.lib.ResourceFinder
    public InputStream findResource(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return super.findResource(str);
        }
        try {
            return new BufferedInputStream(new FileInputStream(file));
        } catch (IOException unused) {
            return null;
        }
    }
}
