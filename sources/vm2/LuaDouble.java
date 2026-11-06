package vm2;

import vm2.lib.MathLib;

/* JADX INFO: loaded from: classes6.dex */
public class LuaDouble extends LuaNumber {
    public static final String JSTR_NAN = "nan";
    public static final String JSTR_NEGINF = "-inf";
    public static final String JSTR_POSINF = "inf";
    final double v;
    public static final LuaDouble NAN = new LuaDouble(Double.NaN);
    public static final LuaDouble POSINF = new LuaDouble(Double.POSITIVE_INFINITY);
    public static final LuaDouble NEGINF = new LuaDouble(Double.NEGATIVE_INFINITY);

    public static double ddiv_d(double d, double d2) {
        if (d2 != 0.0d) {
            return d / d2;
        }
        if (d > 0.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return d == 0.0d ? Double.NaN : Double.NEGATIVE_INFINITY;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public LuaNumber checknumber() {
        return this;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public boolean isnumber() {
        return true;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return this;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public LuaValue tonumber() {
        return this;
    }

    public static LuaNumber valueOf(double d) {
        int i = (int) d;
        return d == ((double) i) ? LuaInteger.valueOf(i) : new LuaDouble(d);
    }

    private LuaDouble(double d) {
        this.v = d;
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.v + 1.0d);
        return ((int) (jDoubleToLongBits >> 32)) + ((int) jDoubleToLongBits);
    }

    @Override // vm2.LuaValue
    public boolean islong() {
        double d = this.v;
        return d == ((double) ((long) d));
    }

    @Override // vm2.LuaValue
    public byte tobyte() {
        return (byte) this.v;
    }

    @Override // vm2.LuaValue
    public char tochar() {
        return (char) this.v;
    }

    @Override // vm2.LuaValue
    public double todouble() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public float tofloat() {
        return (float) this.v;
    }

    @Override // vm2.LuaValue
    public int toint() {
        return (int) this.v;
    }

    @Override // vm2.LuaValue
    public long tolong() {
        return (long) this.v;
    }

    @Override // vm2.LuaValue
    public short toshort() {
        return (short) this.v;
    }

    @Override // vm2.LuaValue
    public double optdouble(double d) {
        return this.v;
    }

    @Override // vm2.LuaValue
    public int optint(int i) {
        return (int) this.v;
    }

    @Override // vm2.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return LuaInteger.valueOf((int) this.v);
    }

    @Override // vm2.LuaValue
    public long optlong(long j) {
        return (long) this.v;
    }

    @Override // vm2.LuaValue
    public LuaInteger checkinteger() {
        return LuaInteger.valueOf((int) this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue neg() {
        return valueOf(-this.v);
    }

    @Override // vm2.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaDouble) && ((LuaDouble) obj).v == this.v;
    }

    @Override // vm2.LuaValue
    public LuaValue eq(LuaValue luaValue) {
        return luaValue.raweq(this.v) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this.v);
    }

    @Override // vm2.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this.v);
    }

    @Override // vm2.LuaValue
    public boolean raweq(double d) {
        return this.v == d;
    }

    @Override // vm2.LuaValue
    public boolean raweq(int i) {
        return this.v == ((double) i);
    }

    @Override // vm2.LuaValue
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue add(double d) {
        return valueOf(d + this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(double d) {
        return valueOf(this.v - d);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(int i) {
        return valueOf(this.v - ((double) i));
    }

    @Override // vm2.LuaValue
    public LuaValue subFrom(double d) {
        return valueOf(d - this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(double d) {
        return valueOf(d * this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(int i) {
        return valueOf(((double) i) * this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue pow(LuaValue luaValue) {
        return luaValue.powWith(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue pow(double d) {
        return MathLib.dpow(this.v, d);
    }

    @Override // vm2.LuaValue
    public LuaValue pow(int i) {
        return MathLib.dpow(this.v, i);
    }

    @Override // vm2.LuaValue
    public LuaValue powWith(double d) {
        return MathLib.dpow(d, this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue powWith(int i) {
        return MathLib.dpow(i, this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue div(LuaValue luaValue) {
        return luaValue.divInto(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue div(double d) {
        return ddiv(this.v, d);
    }

    @Override // vm2.LuaValue
    public LuaValue div(int i) {
        return ddiv(this.v, i);
    }

    @Override // vm2.LuaValue
    public LuaValue divInto(double d) {
        return ddiv(d, this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(double d) {
        return dmod(this.v, d);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(int i) {
        return dmod(this.v, i);
    }

    @Override // vm2.LuaValue
    public LuaValue modFrom(double d) {
        return dmod(d, this.v);
    }

    public static LuaValue ddiv(double d, double d2) {
        if (d2 != 0.0d) {
            return valueOf(d / d2);
        }
        return d > 0.0d ? POSINF : d == 0.0d ? NAN : NEGINF;
    }

    public static LuaValue dmod(double d, double d2) {
        if (d2 == 0.0d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY) {
            return NAN;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return d < 0.0d ? POSINF : valueOf(d);
        }
        if (d2 == Double.NEGATIVE_INFINITY) {
            return d > 0.0d ? NEGINF : valueOf(d);
        }
        return valueOf(d - (d2 * Math.floor(d / d2)));
    }

    public static double dmod_d(double d, double d2) {
        if (d2 == 0.0d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY) {
            return Double.NaN;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            if (d < 0.0d) {
                return Double.POSITIVE_INFINITY;
            }
        } else {
            if (d2 != Double.NEGATIVE_INFINITY) {
                return d - (d2 * Math.floor(d / d2));
            }
            if (d > 0.0d) {
                return Double.NEGATIVE_INFINITY;
            }
        }
        return d;
    }

    @Override // vm2.LuaValue
    public LuaValue lt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.lt(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue lt(double d) {
        return this.v < d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue lt(int i) {
        return this.v < ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.v) : super.lt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lt_b(int i) {
        return this.v < ((double) i);
    }

    @Override // vm2.LuaValue
    public boolean lt_b(double d) {
        return this.v < d;
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(double d) {
        return this.v <= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(int i) {
        return this.v <= ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.v) : super.lteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(int i) {
        return this.v <= ((double) i);
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(double d) {
        return this.v <= d;
    }

    @Override // vm2.LuaValue
    public LuaValue gt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.gt(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue gt(double d) {
        return this.v > d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue gt(int i) {
        return this.v > ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.v) : super.gt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gt_b(int i) {
        return this.v > ((double) i);
    }

    @Override // vm2.LuaValue
    public boolean gt_b(double d) {
        return this.v > d;
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(double d) {
        return this.v >= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(int i) {
        return this.v >= ((double) i) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.v) : super.gteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(int i) {
        return this.v >= ((double) i);
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(double d) {
        return this.v >= d;
    }

    @Override // vm2.LuaValue
    public int strcmp(LuaString luaString) {
        typerror("attempt to compare number with string");
        return 0;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        double d = this.v;
        long j = (long) d;
        if (j == d) {
            return Long.toString(j);
        }
        if (Double.isNaN(d)) {
            return JSTR_NAN;
        }
        if (Double.isInfinite(this.v)) {
            return this.v < 0.0d ? JSTR_NEGINF : JSTR_POSINF;
        }
        return Float.toString((float) this.v);
    }

    @Override // vm2.LuaValue
    public LuaString strvalue() {
        return LuaString.valueOf(tojstring());
    }

    @Override // vm2.LuaValue
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(tojstring());
    }

    @Override // vm2.LuaValue
    public LuaValue tostring() {
        return LuaString.valueOf(tojstring());
    }

    @Override // vm2.LuaValue
    public String optjstring(String str) {
        return tojstring();
    }

    @Override // vm2.LuaValue
    public int checkint() {
        return (int) this.v;
    }

    @Override // vm2.LuaValue
    public long checklong() {
        return (long) this.v;
    }

    @Override // vm2.LuaValue
    public double checkdouble() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public String checkjstring() {
        return tojstring();
    }

    @Override // vm2.LuaValue
    public LuaString checkstring() {
        return LuaString.valueOf(tojstring());
    }

    @Override // vm2.LuaValue
    public boolean isvalidkey() {
        return !Double.isNaN(this.v);
    }
}
