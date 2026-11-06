package vm2.lib;

import com.ironsource.C3522b4;
import java.util.Random;
import vm2.LuaDouble;
import vm2.LuaNumber;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public class MathLib extends TwoArgFunction {
    public static MathLib MATHLIB;

    public MathLib() {
        MATHLIB = this;
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaTable = new LuaTable(0, 30);
        luaTable.set("abs", new abs());
        luaTable.set("ceil", new ceil());
        luaTable.set("cos", new cos());
        luaTable.set("deg", new deg());
        luaTable.set("exp", new exp(this));
        luaTable.set("floor", new floor());
        luaTable.set("fmod", new fmod());
        luaTable.set("frexp", new frexp());
        luaTable.set("huge", LuaDouble.POSINF);
        luaTable.set("ldexp", new ldexp());
        luaTable.set("max", new max());
        luaTable.set("min", new min());
        luaTable.set("modf", new modf());
        luaTable.set("pi", 3.141592653589793d);
        luaTable.set("pow", new pow());
        random randomVar = new random();
        luaTable.set("random", randomVar);
        luaTable.set("randomseed", new randomseed(randomVar));
        luaTable.set("rad", new rad());
        luaTable.set("sin", new sin());
        luaTable.set("sqrt", new sqrt());
        luaTable.set("tan", new tan());
        luaValue2.set("math", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("math", luaTable);
        }
        return luaTable;
    }

    public static abstract class UnaryOp extends OneArgFunction {
        public abstract double call(double d);

        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(call(luaValue.checkdouble()));
        }
    }

    public static abstract class BinaryOp extends TwoArgFunction {
        public abstract double call(double d, double d2);

        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            return LuaValue.valueOf(call(luaValue.checkdouble(), luaValue2.checkdouble()));
        }
    }

    public static final class abs extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.abs(d);
        }
    }

    public static final class ceil extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.ceil(d);
        }
    }

    public static final class cos extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.cos(d);
        }
    }

    public static final class deg extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.toDegrees(d);
        }
    }

    public static final class floor extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.floor(d);
        }
    }

    public static final class rad extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.toRadians(d);
        }
    }

    public static final class sin extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.sin(d);
        }
    }

    public static final class sqrt extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.sqrt(d);
        }
    }

    public static final class tan extends UnaryOp {
        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return Math.tan(d);
        }
    }

    public static final class exp extends UnaryOp {
        final MathLib mathlib;

        public exp(MathLib mathLib) {
            this.mathlib = mathLib;
        }

        @Override // vm2.lib.MathLib.UnaryOp
        public double call(double d) {
            return this.mathlib.dpow_lib(2.718281828459045d, d);
        }
    }

    public static final class fmod extends TwoArgFunction {
        @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.islong() && luaValue2.islong()) {
                return LuaValue.valueOf(luaValue.tolong() % luaValue2.tolong());
            }
            return LuaValue.valueOf(luaValue.checkdouble() % luaValue2.checkdouble());
        }
    }

    public static final class ldexp extends BinaryOp {
        @Override // vm2.lib.MathLib.BinaryOp
        public double call(double d, double d2) {
            return d * Double.longBitsToDouble((((long) d2) + 1023) << 52);
        }
    }

    public static final class pow extends BinaryOp {
        @Override // vm2.lib.MathLib.BinaryOp
        public double call(double d, double d2) {
            return MathLib.dpow_default(d, d2);
        }
    }

    public static class frexp extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            double dCheckdouble = varargs.checkdouble(1);
            if (dCheckdouble == 0.0d) {
                LuaNumber luaNumber = LuaValue.ZERO;
                return LuaValue.varargsOf(luaNumber, luaNumber);
            }
            return LuaValue.varargsOf(LuaValue.valueOf(((4503599627370495L & r0) + 4503599627370496L) * (Double.doubleToLongBits(dCheckdouble) >= 0 ? 1.1102230246251565E-16d : -1.1102230246251565E-16d)), LuaValue.valueOf((((int) (r0 >> 52)) & 2047) - 1022));
        }
    }

    public static class max extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValueCheckvalue = varargs.checkvalue(1);
            int iNarg = varargs.narg();
            for (int i = 2; i <= iNarg; i++) {
                LuaValue luaValueCheckvalue2 = varargs.checkvalue(i);
                if (luaValueCheckvalue.lt_b(luaValueCheckvalue2)) {
                    luaValueCheckvalue = luaValueCheckvalue2;
                }
            }
            return luaValueCheckvalue;
        }
    }

    public static class min extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValueCheckvalue = varargs.checkvalue(1);
            int iNarg = varargs.narg();
            for (int i = 2; i <= iNarg; i++) {
                LuaValue luaValueCheckvalue2 = varargs.checkvalue(i);
                if (luaValueCheckvalue2.lt_b(luaValueCheckvalue)) {
                    luaValueCheckvalue = luaValueCheckvalue2;
                }
            }
            return luaValueCheckvalue;
        }
    }

    public static class modf extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaValue luaValueArg1 = varargs.arg1();
            if (luaValueArg1.islong()) {
                return LuaValue.varargsOf(luaValueArg1, LuaValue.valueOf(0.0d));
            }
            double dCheckdouble = luaValueArg1.checkdouble();
            double dFloor = dCheckdouble > 0.0d ? Math.floor(dCheckdouble) : Math.ceil(dCheckdouble);
            return LuaValue.varargsOf(LuaValue.valueOf(dFloor), LuaValue.valueOf(dCheckdouble != dFloor ? dCheckdouble - dFloor : 0.0d));
        }
    }

    public static class random extends LibFunction {
        Random random = new Random();

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call() {
            return LuaValue.valueOf(this.random.nextDouble());
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            int iCheckint = luaValue.checkint();
            if (iCheckint < 1) {
                LuaValue.argerror(1, "interval is empty");
            }
            return LuaValue.valueOf(this.random.nextInt(iCheckint) + 1);
        }

        @Override // vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
            int iCheckint = luaValue.checkint();
            int iCheckint2 = luaValue2.checkint();
            if (iCheckint2 < iCheckint) {
                LuaValue.argerror(2, "interval is empty");
            }
            return LuaValue.valueOf(iCheckint + this.random.nextInt((iCheckint2 + 1) - iCheckint));
        }
    }

    public static class randomseed extends OneArgFunction {
        final random random;

        public randomseed(random randomVar) {
            this.random = randomVar;
        }

        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            long jChecklong = luaValue.checklong();
            this.random.random = new Random(jChecklong);
            return LuaValue.NONE;
        }
    }

    public static LuaValue dpow(double d, double d2) {
        double dDpow_default;
        MathLib mathLib = MATHLIB;
        if (mathLib != null) {
            dDpow_default = mathLib.dpow_lib(d, d2);
        } else {
            dDpow_default = dpow_default(d, d2);
        }
        return LuaDouble.valueOf(dDpow_default);
    }

    public static double dpow_d(double d, double d2) {
        MathLib mathLib = MATHLIB;
        if (mathLib != null) {
            return mathLib.dpow_lib(d, d2);
        }
        return dpow_default(d, d2);
    }

    public double dpow_lib(double d, double d2) {
        return dpow_default(d, d2);
    }

    public static double dpow_default(double d, double d2) {
        double d3 = 1.0d;
        if (d2 < 0.0d) {
            return 1.0d / dpow_default(d, -d2);
        }
        int i = (int) d2;
        double d4 = d;
        while (i > 0) {
            if ((i & 1) != 0) {
                d3 *= d4;
            }
            i >>= 1;
            d4 *= d4;
        }
        double d5 = d2 - ((double) i);
        if (d5 > 0.0d) {
            for (int i2 = (int) (d5 * 65536.0d); (65535 & i2) != 0; i2 <<= 1) {
                d = Math.sqrt(d);
                if ((32768 & i2) != 0) {
                    d3 *= d;
                }
            }
        }
        return d3;
    }
}
