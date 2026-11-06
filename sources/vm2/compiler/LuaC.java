package vm2.compiler;

import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import vm2.Globals;
import vm2.LuaClosure;
import vm2.LuaFunction;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Prototype;
import vm2.compiler.LexState;

/* JADX INFO: loaded from: classes6.dex */
public class LuaC extends Constants implements Globals.Compiler, Globals.Loader {
    public static final LuaC instance = new LuaC();

    public static void install(Globals globals) {
        LuaC luaC = instance;
        globals.compiler = luaC;
        globals.loader = luaC;
    }

    @Override // vm2.Globals.Compiler
    public Prototype compile(InputStream inputStream, String str) throws IOException {
        return new CompileState().luaY_parser(inputStream, str);
    }

    @Override // vm2.Globals.Loader
    public LuaFunction load(Prototype prototype, String str, LuaValue luaValue) throws IOException {
        return new LuaClosure(prototype, luaValue);
    }

    public LuaValue load(InputStream inputStream, String str, Globals globals) throws IOException {
        return new LuaClosure(compile(inputStream, str), globals);
    }

    public static class CompileState {
        int nCcalls = 0;
        private Hashtable strings = new Hashtable();

        public String pushfstring(String str) {
            return str;
        }

        public Prototype luaY_parser(InputStream inputStream, String str) throws IOException {
            LexState lexState = new LexState(this, inputStream);
            FuncState funcState = new FuncState();
            lexState.fs = funcState;
            lexState.setinput(this, inputStream.read(), inputStream, LuaValue.valueOf(str));
            Prototype prototype = new Prototype();
            funcState.f = prototype;
            prototype.source = LuaValue.valueOf(str);
            lexState.mainfunc(funcState);
            boolean z = false;
            Constants._assert(funcState.prev == null);
            LexState.Dyndata dyndata = lexState.dyd;
            if (dyndata == null || (dyndata.n_actvar == 0 && dyndata.n_gt == 0 && dyndata.n_label == 0)) {
                z = true;
            }
            Constants._assert(z);
            return funcState.f;
        }

        public LuaString newTString(String str) {
            return cachedLuaString(LuaString.valueOf(str));
        }

        public LuaString newTString(LuaString luaString) {
            return cachedLuaString(luaString);
        }

        public LuaString cachedLuaString(LuaString luaString) {
            LuaString luaString2 = (LuaString) this.strings.get(luaString);
            if (luaString2 != null) {
                return luaString2;
            }
            this.strings.put(luaString, luaString);
            return luaString;
        }
    }
}
