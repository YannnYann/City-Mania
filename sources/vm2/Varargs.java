package vm2;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Varargs {
    public abstract LuaValue arg(int i);

    public abstract LuaValue arg1();

    public Varargs eval() {
        return this;
    }

    public boolean isTailcall() {
        return false;
    }

    public abstract int narg();

    public abstract Varargs subargs(int i);

    public int type(int i) {
        return arg(i).type();
    }

    public boolean isnil(int i) {
        return arg(i).isnil();
    }

    public boolean isfunction(int i) {
        return arg(i).isfunction();
    }

    public boolean isnumber(int i) {
        return arg(i).isnumber();
    }

    public boolean isstring(int i) {
        return arg(i).isstring();
    }

    public boolean istable(int i) {
        return arg(i).istable();
    }

    public boolean isthread(int i) {
        return arg(i).isthread();
    }

    public boolean isuserdata(int i) {
        return arg(i).isuserdata();
    }

    public boolean isvalue(int i) {
        return i > 0 && i <= narg();
    }

    public boolean optboolean(int i, boolean z) {
        return arg(i).optboolean(z);
    }

    public LuaClosure optclosure(int i, LuaClosure luaClosure) {
        return arg(i).optclosure(luaClosure);
    }

    public double optdouble(int i, double d) {
        return arg(i).optdouble(d);
    }

    public LuaFunction optfunction(int i, LuaFunction luaFunction) {
        return arg(i).optfunction(luaFunction);
    }

    public int optint(int i, int i2) {
        return arg(i).optint(i2);
    }

    public LuaInteger optinteger(int i, LuaInteger luaInteger) {
        return arg(i).optinteger(luaInteger);
    }

    public long optlong(int i, long j) {
        return arg(i).optlong(j);
    }

    public LuaNumber optnumber(int i, LuaNumber luaNumber) {
        return arg(i).optnumber(luaNumber);
    }

    public String optjstring(int i, String str) {
        return arg(i).optjstring(str);
    }

    public LuaString optstring(int i, LuaString luaString) {
        return arg(i).optstring(luaString);
    }

    public LuaTable opttable(int i, LuaTable luaTable) {
        return arg(i).opttable(luaTable);
    }

    public LuaThread optthread(int i, LuaThread luaThread) {
        return arg(i).optthread(luaThread);
    }

    public Object optuserdata(int i, Object obj) {
        return arg(i).optuserdata(obj);
    }

    public Object optuserdata(int i, Class cls, Object obj) {
        return arg(i).optuserdata(cls, obj);
    }

    public LuaValue optvalue(int i, LuaValue luaValue) {
        return (i <= 0 || i > narg()) ? luaValue : arg(i);
    }

    public boolean checkboolean(int i) {
        return arg(i).checkboolean();
    }

    public LuaClosure checkclosure(int i) {
        return arg(i).checkclosure();
    }

    public double checkdouble(int i) {
        return arg(i).checkdouble();
    }

    public LuaFunction checkfunction(int i) {
        return arg(i).checkfunction();
    }

    public int checkint(int i) {
        return arg(i).checkint();
    }

    public LuaInteger checkinteger(int i) {
        return arg(i).checkinteger();
    }

    public long checklong(int i) {
        return arg(i).checklong();
    }

    public LuaNumber checknumber(int i) {
        return arg(i).checknumber();
    }

    public String checkjstring(int i) {
        return arg(i).checkjstring();
    }

    public LuaString checkstring(int i) {
        return arg(i).checkstring();
    }

    public LuaTable checktable(int i) {
        return arg(i).checktable();
    }

    public LuaThread checkthread(int i) {
        return arg(i).checkthread();
    }

    public Object checkuserdata(int i) {
        return arg(i).checkuserdata();
    }

    public Object checkuserdata(int i, Class cls) {
        return arg(i).checkuserdata(cls);
    }

    public LuaValue checkvalue(int i) {
        return i <= narg() ? arg(i) : LuaValue.argerror(i, "value expected");
    }

    public LuaValue checknotnil(int i) {
        return arg(i).checknotnil();
    }

    public void argcheck(boolean z, int i, String str) {
        if (z) {
            return;
        }
        LuaValue.argerror(i, str);
    }

    public boolean isnoneornil(int i) {
        return i > narg() || arg(i).isnil();
    }

    public boolean toboolean(int i) {
        return arg(i).toboolean();
    }

    public byte tobyte(int i) {
        return arg(i).tobyte();
    }

    public char tochar(int i) {
        return arg(i).tochar();
    }

    public double todouble(int i) {
        return arg(i).todouble();
    }

    public float tofloat(int i) {
        return arg(i).tofloat();
    }

    public int toint(int i) {
        return arg(i).toint();
    }

    public long tolong(int i) {
        return arg(i).tolong();
    }

    public String tojstring(int i) {
        return arg(i).tojstring();
    }

    public short toshort(int i) {
        return arg(i).toshort();
    }

    public Object touserdata(int i) {
        return arg(i).touserdata();
    }

    public Object touserdata(int i, Class cls) {
        return arg(i).touserdata(cls);
    }

    public String tojstring() {
        Buffer buffer = new Buffer();
        buffer.append("(");
        int iNarg = narg();
        for (int i = 1; i <= iNarg; i++) {
            if (i > 1) {
                buffer.append(",");
            }
            buffer.append(arg(i).tojstring());
        }
        buffer.append(")");
        return buffer.tojstring();
    }

    public String toString() {
        return tojstring();
    }

    public static class SubVarargs extends Varargs {
        private final int end;
        private final int start;
        private final Varargs v;

        public SubVarargs(Varargs varargs, int i, int i2) {
            this.v = varargs;
            this.start = i;
            this.end = i2;
        }

        @Override // vm2.Varargs
        public LuaValue arg(int i) {
            int i2 = this.start;
            int i3 = i + (i2 - 1);
            return (i3 < i2 || i3 > this.end) ? LuaValue.NIL : this.v.arg(i3);
        }

        @Override // vm2.Varargs
        public LuaValue arg1() {
            return this.v.arg(this.start);
        }

        @Override // vm2.Varargs
        public int narg() {
            return (this.end + 1) - this.start;
        }

        @Override // vm2.Varargs
        public Varargs subargs(int i) {
            if (i == 1) {
                return this;
            }
            int i2 = (this.start + i) - 1;
            if (i > 0) {
                int i3 = this.end;
                if (i2 >= i3) {
                    return LuaValue.NONE;
                }
                if (i2 == i3) {
                    return this.v.arg(i3);
                }
                if (i2 == i3 - 1) {
                    return new PairVarargs(this.v.arg(i3 - 1), this.v.arg(this.end));
                }
                return new SubVarargs(this.v, i2, i3);
            }
            return new SubVarargs(this.v, i2, this.end);
        }
    }

    public static final class PairVarargs extends Varargs {
        private final LuaValue v1;
        private final Varargs v2;

        public PairVarargs(LuaValue luaValue, Varargs varargs) {
            this.v1 = luaValue;
            this.v2 = varargs;
        }

        @Override // vm2.Varargs
        public LuaValue arg(int i) {
            return i == 1 ? this.v1 : this.v2.arg(i - 1);
        }

        @Override // vm2.Varargs
        public int narg() {
            return this.v2.narg() + 1;
        }

        @Override // vm2.Varargs
        public LuaValue arg1() {
            return this.v1;
        }

        @Override // vm2.Varargs
        public Varargs subargs(int i) {
            if (i == 1) {
                return this;
            }
            if (i == 2) {
                return this.v2;
            }
            if (i > 2) {
                return this.v2.subargs(i - 1);
            }
            return LuaValue.argerror(1, "start must be > 0");
        }
    }

    public static final class ArrayVarargs extends Varargs {
        private final Varargs r;
        private final LuaValue[] v;

        public ArrayVarargs(LuaValue[] luaValueArr, Varargs varargs) {
            this.v = luaValueArr;
            this.r = varargs;
        }

        @Override // vm2.Varargs
        public LuaValue arg(int i) {
            if (i < 1) {
                return LuaValue.NIL;
            }
            LuaValue[] luaValueArr = this.v;
            return i <= luaValueArr.length ? luaValueArr[i - 1] : this.r.arg(i - luaValueArr.length);
        }

        @Override // vm2.Varargs
        public int narg() {
            return this.v.length + this.r.narg();
        }

        @Override // vm2.Varargs
        public LuaValue arg1() {
            LuaValue[] luaValueArr = this.v;
            return luaValueArr.length > 0 ? luaValueArr[0] : this.r.arg1();
        }

        @Override // vm2.Varargs
        public Varargs subargs(int i) {
            if (i <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i == 1) {
                return this;
            }
            LuaValue[] luaValueArr = this.v;
            if (i > luaValueArr.length) {
                return this.r.subargs(i - luaValueArr.length);
            }
            int i2 = i - 1;
            return LuaValue.varargsOf(luaValueArr, i2, luaValueArr.length - i2, this.r);
        }

        @Override // vm2.Varargs
        public void copyto(LuaValue[] luaValueArr, int i, int i2) {
            int iMin = Math.min(this.v.length, i2);
            System.arraycopy(this.v, 0, luaValueArr, i, iMin);
            this.r.copyto(luaValueArr, i + iMin, i2 - iMin);
        }
    }

    public static final class ArrayPartVarargs extends Varargs {
        private final int length;
        private final Varargs more;
        private final int offset;
        private final LuaValue[] v;

        public ArrayPartVarargs(LuaValue[] luaValueArr, int i, int i2) {
            this.v = luaValueArr;
            this.offset = i;
            this.length = i2;
            this.more = LuaValue.NONE;
        }

        public ArrayPartVarargs(LuaValue[] luaValueArr, int i, int i2, Varargs varargs) {
            this.v = luaValueArr;
            this.offset = i;
            this.length = i2;
            this.more = varargs;
        }

        @Override // vm2.Varargs
        public LuaValue arg(int i) {
            if (i < 1) {
                return LuaValue.NIL;
            }
            int i2 = this.length;
            return i <= i2 ? this.v[(this.offset + i) - 1] : this.more.arg(i - i2);
        }

        @Override // vm2.Varargs
        public int narg() {
            return this.length + this.more.narg();
        }

        @Override // vm2.Varargs
        public LuaValue arg1() {
            return this.length > 0 ? this.v[this.offset] : this.more.arg1();
        }

        @Override // vm2.Varargs
        public Varargs subargs(int i) {
            if (i <= 0) {
                LuaValue.argerror(1, "start must be > 0");
            }
            if (i == 1) {
                return this;
            }
            int i2 = this.length;
            if (i > i2) {
                return this.more.subargs(i - i2);
            }
            return LuaValue.varargsOf(this.v, (this.offset + i) - 1, i2 - (i - 1), this.more);
        }

        @Override // vm2.Varargs
        public void copyto(LuaValue[] luaValueArr, int i, int i2) {
            int iMin = Math.min(this.length, i2);
            System.arraycopy(this.v, this.offset, luaValueArr, i, iMin);
            this.more.copyto(luaValueArr, i + iMin, i2 - iMin);
        }
    }

    public void copyto(LuaValue[] luaValueArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i + i3;
            i3++;
            luaValueArr[i4] = arg(i3);
        }
    }

    public Varargs dealias() {
        int iNarg = narg();
        if (iNarg == 0) {
            return LuaValue.NONE;
        }
        if (iNarg == 1) {
            return arg1();
        }
        if (iNarg == 2) {
            return new PairVarargs(arg1(), arg(2));
        }
        LuaValue[] luaValueArr = new LuaValue[iNarg];
        copyto(luaValueArr, 0, iNarg);
        return new ArrayVarargs(luaValueArr, LuaValue.NONE);
    }
}
