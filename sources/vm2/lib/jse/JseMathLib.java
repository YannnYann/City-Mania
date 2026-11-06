package vm2.lib.jse;

import vm2.LuaValue;
import vm2.lib.MathLib;
import vm2.lib.TwoArgFunction;

/* JADX INFO: loaded from: classes6.dex */
public class JseMathLib extends MathLib {
    @Override // vm2.lib.MathLib, vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        super.call(luaValue, luaValue2);
        LuaValue luaValue3 = luaValue2.get("math");
        luaValue3.set("acos", new acos());
        luaValue3.set("asin", new asin());
        atan2 atan2Var = new atan2();
        luaValue3.set("atan", atan2Var);
        luaValue3.set("atan2", atan2Var);
        luaValue3.set("cosh", new cosh());
        luaValue3.set("exp", new exp());
        luaValue3.set("log", new log());
        luaValue3.set("pow", new pow());
        luaValue3.set("sinh", new sinh());
        luaValue3.set("tanh", new tanh());
        return luaValue3;
    }

    public static final class acos extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.acos(d);
        }
    }

    public static final class asin extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.asin(d);
        }
    }

    public static final class atan2 extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(Math.atan2(luaValue.checkdouble(), luaValue2.optdouble(1.0d)));
        }
    }

    public static final class cosh extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.cosh(d);
        }
    }

    public static final class exp extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.exp(d);
        }
    }

    public static final class log extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            double dLog = Math.log(luaValue.checkdouble());
            double dOptdouble = luaValue2.optdouble(2.718281828459045d);
            if (dOptdouble != 2.718281828459045d) {
                dLog /= Math.log(dOptdouble);
            }
            return LuaValue.valueOf(dLog);
        }
    }

    public static final class pow extends MathLib.BinaryOp {
        @Override // vm2.lib.MathLib.BinaryOp
        public double call(double d, double d2) {
            return Math.pow(d, d2);
        }
    }

    public static final class sinh extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.sinh(d);
        }
    }

    public static final class tanh extends MathLib.UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.tanh(d);
        }
    }

    @Override // vm2.lib.MathLib
    public double dpow_lib(double d, double d2) {
        return Math.pow(d, d2);
    }
}
