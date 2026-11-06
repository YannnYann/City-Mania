package vm2;

import vm2.lib.MathLib;

/* JADX INFO: loaded from: classes6.dex */
public class LuaInteger extends LuaNumber {
    private static final int INTEGER_CACHE_OFFSET = -1024;
    private static final int INTEGER_CACHE_SIZE = 2048;
    private static final LuaInteger[] intValues = new LuaInteger[2048];
    public final int v;

    public static int hashCode(int i) {
        return i;
    }

    @Override // vm2.LuaValue
    public LuaInteger checkinteger() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isint() {
        return true;
    }

    @Override // vm2.LuaValue
    public boolean isinttype() {
        return true;
    }

    @Override // vm2.LuaValue
    public boolean islong() {
        return true;
    }

    @Override // vm2.LuaNumber, vm2.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return this;
    }

    static {
        for (int i = 0; i < 2048; i++) {
            intValues[i] = new LuaInteger(i + INTEGER_CACHE_OFFSET);
        }
    }

    public static LuaInteger valueOf(int i) {
        return (i < INTEGER_CACHE_OFFSET || i >= 1024) ? new LuaInteger(i) : intValues[i - INTEGER_CACHE_OFFSET];
    }

    public static LuaNumber valueOf(long j) {
        int i = (int) j;
        if (j != i) {
            return LuaDouble.valueOf(j);
        }
        if (i >= INTEGER_CACHE_OFFSET && i < 1024) {
            return intValues[i - INTEGER_CACHE_OFFSET];
        }
        return new LuaInteger(i);
    }

    public LuaInteger(int i) {
        this.v = i;
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
        return this.v;
    }

    @Override // vm2.LuaValue
    public int toint() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public long tolong() {
        return this.v;
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
        return this.v;
    }

    @Override // vm2.LuaValue
    public long optlong(long j) {
        return this.v;
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return Integer.toString(this.v);
    }

    @Override // vm2.LuaValue
    public LuaString strvalue() {
        return LuaString.valueOf(Integer.toString(this.v));
    }

    @Override // vm2.LuaValue
    public LuaString optstring(LuaString luaString) {
        return LuaString.valueOf(Integer.toString(this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue tostring() {
        return LuaString.valueOf(Integer.toString(this.v));
    }

    @Override // vm2.LuaValue
    public String optjstring(String str) {
        return Integer.toString(this.v);
    }

    public int hashCode() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public LuaValue neg() {
        return valueOf(-this.v);
    }

    @Override // vm2.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaInteger) && ((LuaInteger) obj).v == this.v;
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
        return ((double) this.v) == d;
    }

    @Override // vm2.LuaValue
    public boolean raweq(int i) {
        return this.v == i;
    }

    @Override // vm2.LuaValue
    public LuaValue add(LuaValue luaValue) {
        return luaValue.add(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue add(double d) {
        return LuaDouble.valueOf(d + ((double) this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue add(int i) {
        return valueOf(((long) i) + ((long) this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        return luaValue.subFrom(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(double d) {
        return LuaDouble.valueOf(((double) this.v) - d);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(int i) {
        return LuaValue.valueOf(this.v - i);
    }

    @Override // vm2.LuaValue
    public LuaValue subFrom(double d) {
        return LuaDouble.valueOf(d - ((double) this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue subFrom(int i) {
        return valueOf(((long) i) - ((long) this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        return luaValue.mul(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(double d) {
        return LuaDouble.valueOf(d * ((double) this.v));
    }

    @Override // vm2.LuaValue
    public LuaValue mul(int i) {
        return valueOf(((long) i) * ((long) this.v));
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
        return LuaDouble.ddiv(this.v, d);
    }

    @Override // vm2.LuaValue
    public LuaValue div(int i) {
        return LuaDouble.ddiv(this.v, i);
    }

    @Override // vm2.LuaValue
    public LuaValue divInto(double d) {
        return LuaDouble.ddiv(d, this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        return luaValue.modFrom(this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(double d) {
        return LuaDouble.dmod(this.v, d);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(int i) {
        return LuaDouble.dmod(this.v, i);
    }

    @Override // vm2.LuaValue
    public LuaValue modFrom(double d) {
        return LuaDouble.dmod(d, this.v);
    }

    @Override // vm2.LuaValue
    public LuaValue lt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.lt(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue lt(double d) {
        return ((double) this.v) < d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue lt(int i) {
        return this.v < i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gt_b(this.v) : super.lt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lt_b(int i) {
        return this.v < i;
    }

    @Override // vm2.LuaValue
    public boolean lt_b(double d) {
        return ((double) this.v) < d;
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(double d) {
        return ((double) this.v) <= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(int i) {
        return this.v <= i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.gteq_b(this.v) : super.lteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(int i) {
        return this.v <= i;
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(double d) {
        return ((double) this.v) <= d;
    }

    @Override // vm2.LuaValue
    public LuaValue gt(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.gt(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue gt(double d) {
        return ((double) this.v) > d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue gt(int i) {
        return this.v > i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lt_b(this.v) : super.gt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gt_b(int i) {
        return this.v > i;
    }

    @Override // vm2.LuaValue
    public boolean gt_b(double d) {
        return ((double) this.v) > d;
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.v) ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(double d) {
        return ((double) this.v) >= d ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(int i) {
        return this.v >= i ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue instanceof LuaNumber ? luaValue.lteq_b(this.v) : super.gteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(int i) {
        return this.v >= i;
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(double d) {
        return ((double) this.v) >= d;
    }

    @Override // vm2.LuaValue
    public int strcmp(LuaString luaString) {
        typerror("attempt to compare number with string");
        return 0;
    }

    @Override // vm2.LuaValue
    public int checkint() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public long checklong() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public double checkdouble() {
        return this.v;
    }

    @Override // vm2.LuaValue
    public String checkjstring() {
        return String.valueOf(this.v);
    }

    @Override // vm2.LuaValue
    public LuaString checkstring() {
        return LuaValue.valueOf(String.valueOf(this.v));
    }
}
