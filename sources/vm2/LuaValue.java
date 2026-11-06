package vm2;

import com.ironsource.C3522b4;
import com.ironsource.G5;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import vm2.Varargs;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LuaValue extends Varargs {
    private static final int MAXTAGLOOP = 100;
    public static final int TBOOLEAN = 2;
    public static final int TFUNCTION = 7;
    public static final int TINT = -2;
    public static final int TLIGHTUSERDATA = 0;
    public static final int TNIL = 1;
    public static final int TNONE = -1;
    public static final int TNUMBER = 4;
    public static final int TSTRING = 5;
    public static final int TTABLE = 3;
    public static final int TTHREAD = 9;
    public static final int TUSERDATA = 6;
    public static final int TVALUE = 8;
    public static final String[] TYPE_NAMES = {"lightuserdata", "nil", "boolean", G5.R, "number", "string", "userdata", "function", C3522b4.i.X, "thread"};
    public static final LuaValue NIL = LuaNil._NIL;
    public static final LuaBoolean TRUE = LuaBoolean._TRUE;
    public static final LuaBoolean FALSE = LuaBoolean._FALSE;
    public static final LuaValue NONE = None._NONE;
    public static final LuaNumber ZERO = LuaInteger.valueOf(0);
    public static final LuaNumber ONE = LuaInteger.valueOf(1);
    public static final LuaNumber MINUSONE = LuaInteger.valueOf(-1);
    public static final LuaValue[] NOVALS = new LuaValue[0];
    public static LuaString ENV = valueOf("_ENV");
    public static final LuaString INDEX = valueOf("__index");
    public static final LuaString NEWINDEX = valueOf("__newindex");
    public static final LuaString CALL = valueOf("__call");
    public static final LuaString MODE = valueOf("__mode");
    public static final LuaString METATABLE = valueOf("__metatable");
    public static final LuaString ADD = valueOf("__add");
    public static final LuaString SUB = valueOf("__sub");
    public static final LuaString DIV = valueOf("__div");
    public static final LuaString MUL = valueOf("__mul");
    public static final LuaString POW = valueOf("__pow");
    public static final LuaString MOD = valueOf("__mod");
    public static final LuaString UNM = valueOf("__unm");
    public static final LuaString LEN = valueOf("__len");
    public static final LuaString EQ = valueOf("__eq");
    public static final LuaString LT = valueOf("__lt");
    public static final LuaString LE = valueOf("__le");
    public static final LuaString TOSTRING = valueOf("__tostring");
    public static final LuaString CONCAT = valueOf("__concat");
    public static final LuaString EMPTYSTRING = valueOf("");
    private static int MAXSTACK = 250;
    public static final LuaValue[] NILS = new LuaValue[250];

    @Override // vm2.Varargs
    public LuaValue arg1() {
        return this;
    }

    public LuaValue checknotnil() {
        return this;
    }

    public boolean eq_b(LuaValue luaValue) {
        return this == luaValue;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public LuaValue getmetatable() {
        return null;
    }

    public void initupvalue1(LuaValue luaValue) {
    }

    public boolean isboolean() {
        return false;
    }

    public boolean isclosure() {
        return false;
    }

    public boolean isfunction() {
        return false;
    }

    public boolean isint() {
        return false;
    }

    public boolean isinttype() {
        return false;
    }

    public boolean islong() {
        return false;
    }

    public boolean isnil() {
        return false;
    }

    public boolean isnumber() {
        return false;
    }

    public boolean isstring() {
        return false;
    }

    public boolean istable() {
        return false;
    }

    public boolean isthread() {
        return false;
    }

    public boolean isuserdata() {
        return false;
    }

    public boolean isuserdata(Class cls) {
        return false;
    }

    public boolean isvalidkey() {
        return true;
    }

    @Override // vm2.Varargs
    public int narg() {
        return 1;
    }

    public LuaValue optvalue(LuaValue luaValue) {
        return this;
    }

    public boolean raweq(double d) {
        return false;
    }

    public boolean raweq(int i) {
        return false;
    }

    public boolean raweq(LuaString luaString) {
        return false;
    }

    public boolean raweq(LuaUserdata luaUserdata) {
        return false;
    }

    public boolean raweq(LuaValue luaValue) {
        return this == luaValue;
    }

    public LuaValue strongvalue() {
        return this;
    }

    public boolean toboolean() {
        return true;
    }

    public byte tobyte() {
        return (byte) 0;
    }

    public char tochar() {
        return (char) 0;
    }

    public double todouble() {
        return 0.0d;
    }

    public float tofloat() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public int toint() {
        return 0;
    }

    public long tolong() {
        return 0L;
    }

    public short toshort() {
        return (short) 0;
    }

    public Object touserdata() {
        return null;
    }

    public Object touserdata(Class cls) {
        return null;
    }

    public abstract int type();

    public abstract String typename();

    static {
        for (int i = 0; i < MAXSTACK; i++) {
            NILS[i] = NIL;
        }
    }

    @Override // vm2.Varargs
    public String tojstring() {
        return typename() + ": " + Integer.toHexString(hashCode());
    }

    @Override // vm2.Varargs
    public String toString() {
        return tojstring();
    }

    public LuaValue tonumber() {
        return NIL;
    }

    public LuaValue tostring() {
        return NIL;
    }

    public boolean optboolean(boolean z) {
        argerror("boolean");
        return false;
    }

    public LuaClosure optclosure(LuaClosure luaClosure) {
        argerror("closure");
        return null;
    }

    public double optdouble(double d) {
        argerror("number");
        return 0.0d;
    }

    public LuaFunction optfunction(LuaFunction luaFunction) {
        argerror("function");
        return null;
    }

    public int optint(int i) {
        argerror("int");
        return 0;
    }

    public LuaInteger optinteger(LuaInteger luaInteger) {
        argerror("integer");
        return null;
    }

    public long optlong(long j) {
        argerror("long");
        return 0L;
    }

    public LuaNumber optnumber(LuaNumber luaNumber) {
        argerror("number");
        return null;
    }

    public String optjstring(String str) {
        argerror("String");
        return null;
    }

    public LuaString optstring(LuaString luaString) {
        argerror("string");
        return null;
    }

    public LuaTable opttable(LuaTable luaTable) {
        argerror(G5.R);
        return null;
    }

    public LuaThread optthread(LuaThread luaThread) {
        argerror("thread");
        return null;
    }

    public Object optuserdata(Object obj) {
        argerror("object");
        return null;
    }

    public Object optuserdata(Class cls, Object obj) {
        argerror(cls.getName());
        return null;
    }

    public boolean checkboolean() {
        argerror("boolean");
        return false;
    }

    public LuaClosure checkclosure() {
        argerror("closure");
        return null;
    }

    public double checkdouble() {
        argerror("number");
        return 0.0d;
    }

    public LuaFunction checkfunction() {
        argerror("function");
        return null;
    }

    public Globals checkglobals() {
        argerror("globals");
        return null;
    }

    public int checkint() {
        argerror("int");
        return 0;
    }

    public LuaInteger checkinteger() {
        argerror("integer");
        return null;
    }

    public long checklong() {
        argerror("long");
        return 0L;
    }

    public LuaNumber checknumber() {
        argerror("number");
        return null;
    }

    public LuaNumber checknumber(String str) {
        throw new LuaError(str);
    }

    public String checkjstring() {
        argerror("string");
        return null;
    }

    public LuaString checkstring() {
        argerror("string");
        return null;
    }

    public LuaTable checktable() {
        argerror(G5.R);
        return null;
    }

    public LuaThread checkthread() {
        argerror("thread");
        return null;
    }

    public Object checkuserdata() {
        argerror("userdata");
        return null;
    }

    public Object checkuserdata(Class cls) {
        argerror("userdata");
        return null;
    }

    public static LuaValue error(String str) {
        throw new LuaError(str);
    }

    public static void assert_(boolean z, String str) {
        if (!z) {
            throw new LuaError(str);
        }
    }

    public LuaValue argerror(String str) {
        throw new LuaError("bad argument: " + str + " expected, got " + typename());
    }

    public static LuaValue argerror(int i, String str) {
        throw new LuaError("bad argument #" + i + ": " + str);
    }

    public LuaValue typerror(String str) {
        throw new LuaError(str + " expected, got " + typename());
    }

    public LuaValue unimplemented(String str) {
        throw new LuaError("'" + str + "' not implemented for " + typename());
    }

    public LuaValue illegal(String str, String str2) {
        throw new LuaError("illegal operation '" + str + "' for " + str2);
    }

    public LuaValue lenerror() {
        throw new LuaError("attempt to get length of " + typename());
    }

    public LuaValue aritherror() {
        throw new LuaError("attempt to perform arithmetic on " + typename());
    }

    public LuaValue aritherror(String str) {
        throw new LuaError("attempt to perform arithmetic '" + str + "' on " + typename());
    }

    public LuaValue compareerror(String str) {
        throw new LuaError("attempt to compare " + typename() + " with " + str);
    }

    public LuaValue compareerror(LuaValue luaValue) {
        throw new LuaError("attempt to compare " + typename() + " with " + luaValue.typename());
    }

    public LuaValue get(LuaValue luaValue) {
        return gettable(this, luaValue);
    }

    public LuaValue get(int i) {
        return get(LuaInteger.valueOf(i));
    }

    public LuaValue get(String str) {
        return get(valueOf(str));
    }

    public void set(LuaValue luaValue, LuaValue luaValue2) {
        settable(this, luaValue, luaValue2);
    }

    public void set(int i, LuaValue luaValue) {
        set(LuaInteger.valueOf(i), luaValue);
    }

    public void set(int i, String str) {
        set(i, valueOf(str));
    }

    public void set(String str, LuaValue luaValue) {
        set(valueOf(str), luaValue);
    }

    public void set(String str, double d) {
        set(valueOf(str), valueOf(d));
    }

    public void set(String str, int i) {
        set(valueOf(str), valueOf(i));
    }

    public void set(String str, String str2) {
        set(valueOf(str), valueOf(str2));
    }

    public LuaValue rawget(LuaValue luaValue) {
        return unimplemented("rawget");
    }

    public LuaValue rawget(int i) {
        return rawget(valueOf(i));
    }

    public LuaValue rawget(String str) {
        return rawget(valueOf(str));
    }

    public void rawset(LuaValue luaValue, LuaValue luaValue2) {
        unimplemented("rawset");
    }

    public void rawset(int i, LuaValue luaValue) {
        rawset(valueOf(i), luaValue);
    }

    public void rawset(int i, String str) {
        rawset(i, valueOf(str));
    }

    public void rawset(String str, LuaValue luaValue) {
        rawset(valueOf(str), luaValue);
    }

    public void rawset(String str, double d) {
        rawset(valueOf(str), valueOf(d));
    }

    public void rawset(String str, int i) {
        rawset(valueOf(str), valueOf(i));
    }

    public void rawset(String str, String str2) {
        rawset(valueOf(str), valueOf(str2));
    }

    public void rawsetlist(int i, Varargs varargs) {
        int iNarg = varargs.narg();
        int i2 = 0;
        while (i2 < iNarg) {
            int i3 = i + i2;
            i2++;
            rawset(i3, varargs.arg(i2));
        }
    }

    public void presize(int i) {
        typerror(G5.R);
    }

    public Varargs next(LuaValue luaValue) {
        return typerror(G5.R);
    }

    public Varargs inext(LuaValue luaValue) {
        return typerror(G5.R);
    }

    public LuaValue load(LuaValue luaValue) {
        return luaValue.call(EMPTYSTRING, this);
    }

    @Override // vm2.Varargs
    public LuaValue arg(int i) {
        return i == 1 ? this : NIL;
    }

    public LuaValue setmetatable(LuaValue luaValue) {
        return argerror(G5.R);
    }

    public LuaValue call() {
        return callmt().call(this);
    }

    public LuaValue call(LuaValue luaValue) {
        return callmt().call(this, luaValue);
    }

    public LuaValue call(String str) {
        return call(valueOf(str));
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        return callmt().call(this, luaValue, luaValue2);
    }

    public LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return callmt().invoke(new LuaValue[]{this, luaValue, luaValue2, luaValue3}).arg1();
    }

    public LuaValue method(String str) {
        return get(str).call(this);
    }

    public LuaValue method(LuaValue luaValue) {
        return get(luaValue).call(this);
    }

    public LuaValue method(String str, LuaValue luaValue) {
        return get(str).call(this, luaValue);
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2) {
        return get(luaValue).call(this, luaValue2);
    }

    public LuaValue method(String str, LuaValue luaValue, LuaValue luaValue2) {
        return get(str).call(this, luaValue, luaValue2);
    }

    public LuaValue method(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return get(luaValue).call(this, luaValue2, luaValue3);
    }

    public Varargs invoke() {
        return invoke(NONE);
    }

    public Varargs invoke(Varargs varargs) {
        return callmt().invoke(this, varargs);
    }

    public Varargs invoke(LuaValue luaValue, Varargs varargs) {
        return invoke(varargsOf(luaValue, varargs));
    }

    public Varargs invoke(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        return invoke(varargsOf(luaValue, luaValue2, varargs));
    }

    public Varargs invoke(LuaValue[] luaValueArr) {
        return invoke(varargsOf(luaValueArr));
    }

    public Varargs invoke(LuaValue[] luaValueArr, Varargs varargs) {
        return invoke(varargsOf(luaValueArr, varargs));
    }

    public Varargs invokemethod(String str) {
        return get(str).invoke(this);
    }

    public Varargs invokemethod(LuaValue luaValue) {
        return get(luaValue).invoke(this);
    }

    public Varargs invokemethod(String str, Varargs varargs) {
        return get(str).invoke(varargsOf(this, varargs));
    }

    public Varargs invokemethod(LuaValue luaValue, Varargs varargs) {
        return get(luaValue).invoke(varargsOf(this, varargs));
    }

    public Varargs invokemethod(String str, LuaValue[] luaValueArr) {
        return get(str).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public Varargs invokemethod(LuaValue luaValue, LuaValue[] luaValueArr) {
        return get(luaValue).invoke(varargsOf(this, varargsOf(luaValueArr)));
    }

    public LuaValue callmt() {
        return checkmetatag(CALL, "attempt to call ");
    }

    public LuaValue not() {
        return FALSE;
    }

    public LuaValue neg() {
        return checkmetatag(UNM, "attempt to perform arithmetic on ").call(this);
    }

    public LuaValue len() {
        return checkmetatag(LEN, "attempt to get length of ").call(this);
    }

    public int length() {
        return len().toint();
    }

    public int rawlen() {
        typerror("table or string");
        return 0;
    }

    public LuaValue eq(LuaValue luaValue) {
        return eq_b(luaValue) ? TRUE : FALSE;
    }

    public LuaValue neq(LuaValue luaValue) {
        return eq_b(luaValue) ? FALSE : TRUE;
    }

    public boolean neq_b(LuaValue luaValue) {
        return !eq_b(luaValue);
    }

    public static final boolean eqmtcall(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        LuaString luaString = EQ;
        LuaValue luaValueRawget = luaValue2.rawget(luaString);
        if (luaValueRawget.isnil() || luaValueRawget != luaValue4.rawget(luaString)) {
            return false;
        }
        return luaValueRawget.call(luaValue, luaValue3).toboolean();
    }

    public LuaValue add(LuaValue luaValue) {
        return arithmt(ADD, luaValue);
    }

    public LuaValue add(double d) {
        return arithmtwith(ADD, d);
    }

    public LuaValue add(int i) {
        return add(i);
    }

    public LuaValue sub(LuaValue luaValue) {
        return arithmt(SUB, luaValue);
    }

    public LuaValue sub(double d) {
        return aritherror("sub");
    }

    public LuaValue sub(int i) {
        return aritherror("sub");
    }

    public LuaValue subFrom(double d) {
        return arithmtwith(SUB, d);
    }

    public LuaValue subFrom(int i) {
        return subFrom(i);
    }

    public LuaValue mul(LuaValue luaValue) {
        return arithmt(MUL, luaValue);
    }

    public LuaValue mul(double d) {
        return arithmtwith(MUL, d);
    }

    public LuaValue mul(int i) {
        return mul(i);
    }

    public LuaValue pow(LuaValue luaValue) {
        return arithmt(POW, luaValue);
    }

    public LuaValue pow(double d) {
        return aritherror("pow");
    }

    public LuaValue pow(int i) {
        return aritherror("pow");
    }

    public LuaValue powWith(double d) {
        return arithmtwith(POW, d);
    }

    public LuaValue powWith(int i) {
        return powWith(i);
    }

    public LuaValue div(LuaValue luaValue) {
        return arithmt(DIV, luaValue);
    }

    public LuaValue div(double d) {
        return aritherror("div");
    }

    public LuaValue div(int i) {
        return aritherror("div");
    }

    public LuaValue divInto(double d) {
        return arithmtwith(DIV, d);
    }

    public LuaValue mod(LuaValue luaValue) {
        return arithmt(MOD, luaValue);
    }

    public LuaValue mod(double d) {
        return aritherror("mod");
    }

    public LuaValue mod(int i) {
        return aritherror("mod");
    }

    public LuaValue modFrom(double d) {
        return arithmtwith(MOD, d);
    }

    public LuaValue arithmt(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValueMetatag = metatag(luaValue);
        if (luaValueMetatag.isnil()) {
            luaValueMetatag = luaValue2.metatag(luaValue);
            if (luaValueMetatag.isnil()) {
                error("attempt to perform arithmetic " + luaValue + " on " + typename() + " and " + luaValue2.typename());
            }
        }
        return luaValueMetatag.call(this, luaValue2);
    }

    public LuaValue arithmtwith(LuaValue luaValue, double d) {
        LuaValue luaValueMetatag = metatag(luaValue);
        if (luaValueMetatag.isnil()) {
            error("attempt to perform arithmetic " + luaValue + " on number and " + typename());
        }
        return luaValueMetatag.call(valueOf(d), this);
    }

    public LuaValue lt(LuaValue luaValue) {
        return comparemt(LT, luaValue);
    }

    public LuaValue lt(double d) {
        return compareerror("number");
    }

    public LuaValue lt(int i) {
        return compareerror("number");
    }

    public boolean lt_b(LuaValue luaValue) {
        return comparemt(LT, luaValue).toboolean();
    }

    public boolean lt_b(int i) {
        compareerror("number");
        return false;
    }

    public boolean lt_b(double d) {
        compareerror("number");
        return false;
    }

    public LuaValue lteq(LuaValue luaValue) {
        return comparemt(LE, luaValue);
    }

    public LuaValue lteq(double d) {
        return compareerror("number");
    }

    public LuaValue lteq(int i) {
        return compareerror("number");
    }

    public boolean lteq_b(LuaValue luaValue) {
        return comparemt(LE, luaValue).toboolean();
    }

    public boolean lteq_b(int i) {
        compareerror("number");
        return false;
    }

    public boolean lteq_b(double d) {
        compareerror("number");
        return false;
    }

    public LuaValue gt(LuaValue luaValue) {
        return luaValue.comparemt(LE, this);
    }

    public LuaValue gt(double d) {
        return compareerror("number");
    }

    public LuaValue gt(int i) {
        return compareerror("number");
    }

    public boolean gt_b(LuaValue luaValue) {
        return luaValue.comparemt(LE, this).toboolean();
    }

    public boolean gt_b(int i) {
        compareerror("number");
        return false;
    }

    public boolean gt_b(double d) {
        compareerror("number");
        return false;
    }

    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.comparemt(LT, this);
    }

    public LuaValue gteq(double d) {
        return compareerror("number");
    }

    public LuaValue gteq(int i) {
        return valueOf(todouble() >= ((double) i));
    }

    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.comparemt(LT, this).toboolean();
    }

    public boolean gteq_b(int i) {
        compareerror("number");
        return false;
    }

    public boolean gteq_b(double d) {
        compareerror("number");
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (r1.isnil() == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public vm2.LuaValue comparemt(vm2.LuaValue r4, vm2.LuaValue r5) {
        /*
            r3 = this;
            vm2.LuaValue r0 = r3.metatag(r4)
            boolean r1 = r0.isnil()
            if (r1 == 0) goto L6a
            vm2.LuaValue r0 = r5.metatag(r4)
            boolean r1 = r0.isnil()
            if (r1 != 0) goto L15
            goto L6a
        L15:
            vm2.LuaString r0 = vm2.LuaValue.LE
            boolean r0 = r0.raweq(r4)
            if (r0 == 0) goto L3c
            vm2.LuaString r0 = vm2.LuaValue.LT
            vm2.LuaValue r1 = r3.metatag(r0)
            boolean r2 = r1.isnil()
            if (r2 == 0) goto L33
            vm2.LuaValue r1 = r5.metatag(r0)
            boolean r0 = r1.isnil()
            if (r0 != 0) goto L3c
        L33:
            vm2.LuaValue r4 = r1.call(r5, r3)
            vm2.LuaValue r4 = r4.not()
            return r4
        L3c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "attempt to compare "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = " on "
            r0.append(r4)
            java.lang.String r4 = r3.typename()
            r0.append(r4)
            java.lang.String r4 = " and "
            r0.append(r4)
            java.lang.String r4 = r5.typename()
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            vm2.LuaValue r4 = error(r4)
            return r4
        L6a:
            vm2.LuaValue r4 = r0.call(r3, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaValue.comparemt(vm2.LuaValue, vm2.LuaValue):vm2.LuaValue");
    }

    public int strcmp(LuaValue luaValue) {
        error("attempt to compare " + typename());
        return 0;
    }

    public int strcmp(LuaString luaString) {
        error("attempt to compare " + typename());
        return 0;
    }

    public LuaValue concat(LuaValue luaValue) {
        return concatmt(luaValue);
    }

    public LuaValue concatTo(LuaValue luaValue) {
        return luaValue.concatmt(this);
    }

    public LuaValue concatTo(LuaNumber luaNumber) {
        return luaNumber.concatmt(this);
    }

    public LuaValue concatTo(LuaString luaString) {
        return luaString.concatmt(this);
    }

    public Buffer buffer() {
        return new Buffer(this);
    }

    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    public LuaValue concatmt(LuaValue luaValue) {
        LuaString luaString = CONCAT;
        LuaValue luaValueMetatag = metatag(luaString);
        if (luaValueMetatag.isnil()) {
            luaValueMetatag = luaValue.metatag(luaString);
            if (luaValueMetatag.isnil()) {
                error("attempt to concatenate " + typename() + " and " + luaValue.typename());
            }
        }
        return luaValueMetatag.call(this, luaValue);
    }

    public LuaValue and(LuaValue luaValue) {
        return toboolean() ? luaValue : this;
    }

    public LuaValue or(LuaValue luaValue) {
        return toboolean() ? this : luaValue;
    }

    public boolean testfor_b(LuaValue luaValue, LuaValue luaValue2) {
        return luaValue2.gt_b(0) ? lteq_b(luaValue) : gteq_b(luaValue);
    }

    public LuaString strvalue() {
        typerror("string or number");
        return null;
    }

    public static LuaBoolean valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public static LuaInteger valueOf(int i) {
        return LuaInteger.valueOf(i);
    }

    public static LuaNumber valueOf(double d) {
        return LuaDouble.valueOf(d);
    }

    public static LuaString valueOf(String str) {
        return LuaString.valueOf(str);
    }

    public static LuaString valueOf(byte[] bArr) {
        return LuaString.valueOf(bArr);
    }

    public static LuaString valueOf(byte[] bArr, int i, int i2) {
        return LuaString.valueOf(bArr, i, i2);
    }

    public static LuaTable tableOf() {
        return new LuaTable();
    }

    public static LuaTable tableOf(Varargs varargs, int i) {
        return new LuaTable(varargs, i);
    }

    public static LuaTable tableOf(int i, int i2) {
        return new LuaTable(i, i2);
    }

    public static LuaTable listOf(LuaValue[] luaValueArr) {
        return new LuaTable(null, luaValueArr, null);
    }

    public static LuaTable listOf(LuaValue[] luaValueArr, Varargs varargs) {
        return new LuaTable(null, luaValueArr, varargs);
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr) {
        return new LuaTable(luaValueArr, null, null);
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2) {
        return new LuaTable(luaValueArr, luaValueArr2, null);
    }

    public static LuaTable tableOf(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, Varargs varargs) {
        return new LuaTable(luaValueArr, luaValueArr2, varargs);
    }

    public static LuaUserdata userdataOf(Object obj) {
        return new LuaUserdata(obj);
    }

    public static LuaUserdata userdataOf(Object obj, LuaValue luaValue) {
        return new LuaUserdata(obj, luaValue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static vm2.LuaValue gettable(vm2.LuaValue r4, vm2.LuaValue r5) {
        /*
            r0 = 0
        L1:
            boolean r1 = r4.istable()
            if (r1 == 0) goto L21
            vm2.LuaValue r1 = r4.rawget(r5)
            boolean r2 = r1.isnil()
            if (r2 == 0) goto L20
            vm2.LuaString r2 = vm2.LuaValue.INDEX
            vm2.LuaValue r2 = r4.metatag(r2)
            boolean r3 = r2.isnil()
            if (r3 == 0) goto L1e
            goto L20
        L1e:
            r1 = r2
            goto L34
        L20:
            return r1
        L21:
            vm2.LuaString r1 = vm2.LuaValue.INDEX
            vm2.LuaValue r1 = r4.metatag(r1)
            boolean r2 = r1.isnil()
            if (r2 == 0) goto L34
            java.lang.String r2 = r5.tojstring()
            r4.indexerror(r2)
        L34:
            boolean r2 = r1.isfunction()
            if (r2 == 0) goto L3f
            vm2.LuaValue r4 = r1.call(r4, r5)
            return r4
        L3f:
            int r0 = r0 + 1
            r4 = 100
            if (r0 < r4) goto L4d
            java.lang.String r4 = "loop in gettable"
            error(r4)
            vm2.LuaValue r4 = vm2.LuaValue.NIL
            return r4
        L4d:
            r4 = r1
            goto L1
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaValue.gettable(vm2.LuaValue, vm2.LuaValue):vm2.LuaValue");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
    
        r5.rawset(r6, r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean settable(vm2.LuaValue r5, vm2.LuaValue r6, vm2.LuaValue r7) {
        /*
            r0 = 0
            r1 = r0
        L2:
            boolean r2 = r5.istable()
            r3 = 1
            if (r2 == 0) goto L23
            vm2.LuaValue r2 = r5.rawget(r6)
            boolean r2 = r2.isnil()
            if (r2 == 0) goto L1f
            vm2.LuaString r2 = vm2.LuaValue.NEWINDEX
            vm2.LuaValue r2 = r5.metatag(r2)
            boolean r4 = r2.isnil()
            if (r4 == 0) goto L2f
        L1f:
            r5.rawset(r6, r7)
            return r3
        L23:
            vm2.LuaString r2 = vm2.LuaValue.NEWINDEX
            vm2.LuaValue r2 = r5.metatag(r2)
            boolean r4 = r2.isnil()
            if (r4 != 0) goto L46
        L2f:
            boolean r4 = r2.isfunction()
            if (r4 == 0) goto L39
            r2.call(r5, r6, r7)
            return r3
        L39:
            int r1 = r1 + r3
            r5 = 100
            if (r1 < r5) goto L44
            java.lang.String r5 = "loop in settable"
            error(r5)
            return r0
        L44:
            r5 = r2
            goto L2
        L46:
            vm2.LuaError r7 = new vm2.LuaError
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "table expected for set index ('"
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = "') value, got "
            r0.append(r6)
            java.lang.String r5 = r5.typename()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r7.<init>(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaValue.settable(vm2.LuaValue, vm2.LuaValue, vm2.LuaValue):boolean");
    }

    public LuaValue metatag(LuaValue luaValue) {
        LuaValue luaValue2 = getmetatable();
        if (luaValue2 == null) {
            return NIL;
        }
        return luaValue2.rawget(luaValue);
    }

    public LuaValue checkmetatag(LuaValue luaValue, String str) {
        LuaValue luaValueMetatag = metatag(luaValue);
        if (!luaValueMetatag.isnil()) {
            return luaValueMetatag;
        }
        throw new LuaError(str + "a " + typename() + " value");
    }

    public static Metatable metatableOf(LuaValue luaValue) {
        if (luaValue == null || !luaValue.istable()) {
            if (luaValue != null) {
                return new NonTableMetatable(luaValue);
            }
            return null;
        }
        LuaValue luaValueRawget = luaValue.rawget(MODE);
        if (luaValueRawget.isstring()) {
            String str = luaValueRawget.tojstring();
            boolean z = str.indexOf(107) >= 0;
            boolean z2 = str.indexOf(Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE) >= 0;
            if (z || z2) {
                return new WeakTable(z, z2, luaValue);
            }
        }
        return (LuaTable) luaValue;
    }

    private void indexerror(String str) {
        error("attempt to index ? (a " + typename() + " value) with key '" + str + "'");
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr) {
        int length = luaValueArr.length;
        if (length == 0) {
            return NONE;
        }
        if (length == 1) {
            return luaValueArr[0];
        }
        if (length == 2) {
            return new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]);
        }
        return new Varargs.ArrayVarargs(luaValueArr, NONE);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, Varargs varargs) {
        int length = luaValueArr.length;
        if (length == 0) {
            return varargs;
        }
        if (length == 1) {
            if (varargs.narg() > 0) {
                return new Varargs.PairVarargs(luaValueArr[0], varargs);
            }
            return luaValueArr[0];
        }
        if (length == 2) {
            if (varargs.narg() > 0) {
                return new Varargs.ArrayVarargs(luaValueArr, varargs);
            }
            return new Varargs.PairVarargs(luaValueArr[0], luaValueArr[1]);
        }
        return new Varargs.ArrayVarargs(luaValueArr, varargs);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i, int i2) {
        if (i2 == 0) {
            return NONE;
        }
        if (i2 == 1) {
            return luaValueArr[i];
        }
        if (i2 == 2) {
            return new Varargs.PairVarargs(luaValueArr[i], luaValueArr[i + 1]);
        }
        return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, NONE);
    }

    public static Varargs varargsOf(LuaValue[] luaValueArr, int i, int i2, Varargs varargs) {
        if (i2 == 0) {
            return varargs;
        }
        if (i2 == 1) {
            if (varargs.narg() > 0) {
                return new Varargs.PairVarargs(luaValueArr[i], varargs);
            }
            return luaValueArr[i];
        }
        if (i2 == 2) {
            if (varargs.narg() > 0) {
                return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, varargs);
            }
            return new Varargs.PairVarargs(luaValueArr[i], luaValueArr[i + 1]);
        }
        return new Varargs.ArrayPartVarargs(luaValueArr, i, i2, varargs);
    }

    public static Varargs varargsOf(LuaValue luaValue, Varargs varargs) {
        return varargs.narg() != 0 ? new Varargs.PairVarargs(luaValue, varargs) : luaValue;
    }

    public static Varargs varargsOf(LuaValue luaValue, LuaValue luaValue2, Varargs varargs) {
        if (varargs.narg() == 0) {
            return new Varargs.PairVarargs(luaValue, luaValue2);
        }
        return new Varargs.ArrayPartVarargs(new LuaValue[]{luaValue, luaValue2}, 0, 2, varargs);
    }

    public static Varargs tailcallOf(LuaValue luaValue, Varargs varargs) {
        return new TailcallVarargs(luaValue, varargs);
    }

    public Varargs onInvoke(Varargs varargs) {
        return invoke(varargs);
    }

    public static final class None extends LuaNil {
        static None _NONE = new None();

        @Override // vm2.LuaValue, vm2.Varargs
        public int narg() {
            return 0;
        }

        private None() {
        }

        @Override // vm2.LuaValue, vm2.Varargs
        public LuaValue arg(int i) {
            return LuaValue.NIL;
        }

        @Override // vm2.LuaValue, vm2.Varargs
        public LuaValue arg1() {
            return LuaValue.NIL;
        }

        @Override // vm2.LuaNil, vm2.LuaValue, vm2.Varargs
        public String tojstring() {
            return "none";
        }

        @Override // vm2.LuaValue, vm2.Varargs
        public Varargs subargs(int i) {
            return i > 0 ? this : LuaValue.argerror(1, "start must be > 0");
        }

        @Override // vm2.Varargs
        public void copyto(LuaValue[] luaValueArr, int i, int i2) {
            while (i2 > 0) {
                luaValueArr[i] = LuaValue.NIL;
                i2--;
                i++;
            }
        }
    }

    @Override // vm2.Varargs
    public Varargs subargs(int i) {
        if (i == 1) {
            return this;
        }
        if (i > 1) {
            return NONE;
        }
        return argerror(1, "start must be > 0");
    }
}
