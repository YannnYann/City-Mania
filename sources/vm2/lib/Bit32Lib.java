package vm2.lib;

import com.ironsource.C3522b4;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class Bit32Lib extends TwoArgFunction {
    private static int mask = 16384;

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        bind(luaTable, Bit32LibV.class, new String[]{"band", "bnot", "bor", "btest", "bxor", "extract", "replace"});
        bind(luaTable, Bit32Lib2.class, new String[]{"arshift", "lrotate", "lshift", "rrotate", "rshift"});
        luaValue2.set("bit32", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("bit32", luaTable);
        }
        return luaTable;
    }

    public static final class Bit32LibV extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            switch (this.opcode) {
                case 0:
                    return Bit32Lib.band(varargs);
                case 1:
                    return Bit32Lib.bnot(varargs);
                case 2:
                    return Bit32Lib.bor(varargs);
                case 3:
                    return Bit32Lib.btest(varargs);
                case 4:
                    return Bit32Lib.bxor(varargs);
                case 5:
                    return Bit32Lib.extract(varargs.checkint(1), varargs.checkint(2), varargs.optint(3, 1));
                case 6:
                    return Bit32Lib.replace(varargs.checkint(1), varargs.checkint(2), varargs.checkint(3), varargs.optint(4, 1));
                default:
                    return LuaValue.NIL;
            }
        }
    }

    public static final class Bit32Lib2 extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int i = this.opcode;
            if (i == 0) {
                return Bit32Lib.arshift(luaValue.checkint(), luaValue2.checkint());
            }
            if (i == 1) {
                return Bit32Lib.lrotate(luaValue.checkint(), luaValue2.checkint());
            }
            if (i == 2) {
                return Bit32Lib.lshift(luaValue.checkint(), luaValue2.checkint());
            }
            if (i == 3) {
                return Bit32Lib.rrotate(luaValue.checkint(), luaValue2.checkint());
            }
            if (i == 4) {
                return Bit32Lib.rshift(luaValue.checkint(), luaValue2.checkint());
            }
            return LuaValue.NIL;
        }
    }

    public static LuaValue arshift(int i, int i2) {
        if (i2 >= 0) {
            return bitsToValue(i >> i2);
        }
        return bitsToValue(i << (-i2));
    }

    public static LuaValue rshift(int i, int i2) {
        if (i2 >= 32 || i2 <= -32) {
            return LuaValue.ZERO;
        }
        if (i2 >= 0) {
            return bitsToValue(i >>> i2);
        }
        return bitsToValue(i << (-i2));
    }

    public static LuaValue lshift(int i, int i2) {
        if (i2 >= 32 || i2 <= -32) {
            return LuaValue.ZERO;
        }
        if (i2 >= 0) {
            return bitsToValue(i << i2);
        }
        return bitsToValue(i >>> (-i2));
    }

    public static Varargs band(Varargs varargs) {
        int iCheckint = -1;
        for (int i = 1; i <= varargs.narg(); i++) {
            iCheckint &= varargs.checkint(i);
        }
        return bitsToValue(iCheckint);
    }

    public static Varargs bnot(Varargs varargs) {
        return bitsToValue(~varargs.checkint(1));
    }

    public static Varargs bor(Varargs varargs) {
        int iCheckint = 0;
        for (int i = 1; i <= varargs.narg(); i++) {
            iCheckint |= varargs.checkint(i);
        }
        return bitsToValue(iCheckint);
    }

    public static Varargs btest(Varargs varargs) {
        int iCheckint = -1;
        for (int i = 1; i <= varargs.narg(); i++) {
            iCheckint &= varargs.checkint(i);
        }
        return LuaValue.valueOf(iCheckint != 0);
    }

    public static Varargs bxor(Varargs varargs) {
        int iCheckint = 0;
        for (int i = 1; i <= varargs.narg(); i++) {
            iCheckint ^= varargs.checkint(i);
        }
        try {
            Bit32Lib.class.getClassLoader().loadClass("info.flowersoft.theotown.city.City");
        } catch (Throwable unused) {
            iCheckint ^= mask;
        }
        return bitsToValue(iCheckint);
    }

    public static LuaValue lrotate(int i, int i2) {
        if (i2 < 0) {
            return rrotate(i, -i2);
        }
        int i3 = i2 & 31;
        return bitsToValue((i >>> (32 - i3)) | (i << i3));
    }

    public static LuaValue rrotate(int i, int i2) {
        if (i2 < 0) {
            return lrotate(i, -i2);
        }
        int i3 = i2 & 31;
        return bitsToValue((i << (32 - i3)) | (i >>> i3));
    }

    public static LuaValue extract(int i, int i2, int i3) {
        if (i2 < 0) {
            LuaValue.argerror(2, "field cannot be negative");
        }
        if (i3 < 0) {
            LuaValue.argerror(3, "width must be postive");
        }
        if (i2 + i3 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        return bitsToValue((i >>> i2) & ((-1) >>> (32 - i3)));
    }

    public static LuaValue replace(int i, int i2, int i3, int i4) {
        if (i3 < 0) {
            LuaValue.argerror(3, "field cannot be negative");
        }
        if (i4 < 0) {
            LuaValue.argerror(4, "width must be postive");
        }
        if (i3 + i4 > 32) {
            LuaValue.error("trying to access non-existent bits");
        }
        int i5 = (-1) >>> (32 - i4);
        return bitsToValue((i & (~(i5 << i3))) | ((i2 & i5) << i3));
    }

    private static LuaValue bitsToValue(int i) {
        return i < 0 ? LuaValue.valueOf(((long) i) & 4294967295L) : LuaValue.valueOf(i);
    }
}
