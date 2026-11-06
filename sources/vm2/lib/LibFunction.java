package vm2.lib;

import vm2.LuaError;
import vm2.LuaFunction;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LibFunction extends LuaFunction {
    protected String name;
    protected int opcode;

    @Override // vm2.LuaFunction, vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        if (this.name == null) {
            return super.tojstring();
        }
        return "function: " + this.name;
    }

    public void bind(LuaValue luaValue, Class cls, String[] strArr) {
        bind(luaValue, cls, strArr, 0);
    }

    public void bind(LuaValue luaValue, Class cls, String[] strArr, int i) {
        try {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                LibFunction libFunction = (LibFunction) cls.newInstance();
                libFunction.opcode = i + i2;
                String str = strArr[i2];
                libFunction.name = str;
                luaValue.set(str, libFunction);
            }
        } catch (Exception e) {
            throw new LuaError("bind failed: " + e);
        }
    }

    public static LuaValue[] newupe() {
        return new LuaValue[1];
    }

    public static LuaValue[] newupn() {
        return new LuaValue[]{LuaValue.NIL};
    }

    public static LuaValue[] newupl(LuaValue luaValue) {
        return new LuaValue[]{luaValue};
    }

    @Override // vm2.LuaValue
    public LuaValue call() {
        return LuaValue.argerror(1, "value expected");
    }

    @Override // vm2.LuaValue
    public LuaValue call(LuaValue luaValue) {
        return call();
    }

    @Override // vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return call(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return call(luaValue, luaValue2);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        return call(luaValue, luaValue2, luaValue3);
    }

    @Override // vm2.LuaValue
    public Varargs invoke(Varargs varargs) {
        int iNarg = varargs.narg();
        if (iNarg == 0) {
            return call();
        }
        if (iNarg == 1) {
            return call(varargs.arg1());
        }
        if (iNarg == 2) {
            return call(varargs.arg1(), varargs.arg(2));
        }
        if (iNarg == 3) {
            return call(varargs.arg1(), varargs.arg(2), varargs.arg(3));
        }
        return call(varargs.arg1(), varargs.arg(2), varargs.arg(3), varargs.arg(4));
    }
}
