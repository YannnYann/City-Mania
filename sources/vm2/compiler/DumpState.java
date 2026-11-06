package vm2.compiler;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import vm2.LoadState;
import vm2.LocVars;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Prototype;

/* JADX INFO: loaded from: classes6.dex */
public class DumpState {
    public static boolean ALLOW_INTEGER_CASTING = false;
    public static final int NUMBER_FORMAT_DEFAULT = 1;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 1;
    public static final int NUMBER_FORMAT_INTS_ONLY = 0;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;
    private static final int SIZEOF_INSTRUCTION = 4;
    private static final int SIZEOF_INT = 4;
    private static final int SIZEOF_SIZET = 4;
    private boolean IS_LITTLE_ENDIAN = true;
    private int NUMBER_FORMAT = 1;
    private int SIZEOF_LUA_NUMBER = 8;
    int status = 0;
    boolean strip;
    DataOutputStream writer;

    public DumpState(OutputStream outputStream, boolean z) {
        this.writer = new DataOutputStream(outputStream);
        this.strip = z;
    }

    public void dumpBlock(byte[] bArr, int i) throws IOException {
        this.writer.write(bArr, 0, i);
    }

    public void dumpChar(int i) throws IOException {
        this.writer.write(i);
    }

    public void dumpInt(int i) throws IOException {
        if (this.IS_LITTLE_ENDIAN) {
            this.writer.writeByte(i & 255);
            this.writer.writeByte((i >> 8) & 255);
            this.writer.writeByte((i >> 16) & 255);
            this.writer.writeByte((i >> 24) & 255);
            return;
        }
        this.writer.writeInt(i);
    }

    public void dumpString(LuaString luaString) throws IOException {
        int i = luaString.len().toint();
        dumpInt(i + 1);
        luaString.write(this.writer, 0, i);
        this.writer.write(0);
    }

    public void dumpDouble(double d) throws IOException {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        if (this.IS_LITTLE_ENDIAN) {
            dumpInt((int) jDoubleToLongBits);
            dumpInt((int) (jDoubleToLongBits >> 32));
        } else {
            this.writer.writeLong(jDoubleToLongBits);
        }
    }

    public void dumpCode(Prototype prototype) throws IOException {
        int[] iArr = prototype.code;
        dumpInt(iArr.length);
        for (int i : iArr) {
            dumpInt(i);
        }
    }

    public void dumpConstants(Prototype prototype) throws IOException {
        LuaValue[] luaValueArr = prototype.k;
        dumpInt(luaValueArr.length);
        for (LuaValue luaValue : luaValueArr) {
            int iType = luaValue.type();
            if (iType == 1) {
                this.writer.write(1);
            } else if (iType == 2) {
                this.writer.write(2);
                dumpChar(luaValue.toboolean() ? 1 : 0);
            } else if (iType == 4) {
                int i = this.NUMBER_FORMAT;
                if (i == 0) {
                    if (!ALLOW_INTEGER_CASTING && !luaValue.isint()) {
                        throw new IllegalArgumentException("not an integer: " + luaValue);
                    }
                    this.writer.write(4);
                    dumpInt(luaValue.toint());
                } else if (i == 1) {
                    this.writer.write(4);
                    dumpDouble(luaValue.todouble());
                } else if (i == 4) {
                    if (luaValue.isint()) {
                        this.writer.write(-2);
                        dumpInt(luaValue.toint());
                    } else {
                        this.writer.write(4);
                        dumpDouble(luaValue.todouble());
                    }
                } else {
                    throw new IllegalArgumentException("number format not supported: " + this.NUMBER_FORMAT);
                }
            } else if (iType == 5) {
                this.writer.write(5);
                dumpString((LuaString) luaValue);
            } else {
                throw new IllegalArgumentException("bad type for " + luaValue);
            }
        }
        int length = prototype.p.length;
        dumpInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            dumpFunction(prototype.p[i2]);
        }
    }

    public void dumpUpvalues(Prototype prototype) throws IOException {
        int length = prototype.upvalues.length;
        dumpInt(length);
        for (int i = 0; i < length; i++) {
            this.writer.writeByte(prototype.upvalues[i].instack ? 1 : 0);
            this.writer.writeByte(prototype.upvalues[i].idx);
        }
    }

    public void dumpDebug(Prototype prototype) throws IOException {
        if (this.strip) {
            dumpInt(0);
        } else {
            dumpString(prototype.source);
        }
        int length = this.strip ? 0 : prototype.lineinfo.length;
        dumpInt(length);
        for (int i = 0; i < length; i++) {
            dumpInt(prototype.lineinfo[i]);
        }
        int length2 = this.strip ? 0 : prototype.locvars.length;
        dumpInt(length2);
        for (int i2 = 0; i2 < length2; i2++) {
            LocVars locVars = prototype.locvars[i2];
            dumpString(locVars.varname);
            dumpInt(locVars.startpc);
            dumpInt(locVars.endpc);
        }
        int length3 = this.strip ? 0 : prototype.upvalues.length;
        dumpInt(length3);
        for (int i3 = 0; i3 < length3; i3++) {
            dumpString(prototype.upvalues[i3].name);
        }
    }

    public void dumpFunction(Prototype prototype) throws IOException {
        dumpInt(prototype.linedefined);
        dumpInt(prototype.lastlinedefined);
        dumpChar(prototype.numparams);
        dumpChar(prototype.is_vararg);
        dumpChar(prototype.maxstacksize);
        dumpCode(prototype);
        dumpConstants(prototype);
        dumpUpvalues(prototype);
        dumpDebug(prototype);
    }

    public void dumpHeader() throws IOException {
        this.writer.write(LoadState.LUA_SIGNATURE);
        this.writer.write(82);
        this.writer.write(1);
        this.writer.write(1 ^ (this.IS_LITTLE_ENDIAN ? 1 : 0));
        this.writer.write(4);
        this.writer.write(4);
        this.writer.write(4);
        this.writer.write(this.SIZEOF_LUA_NUMBER);
        this.writer.write(this.NUMBER_FORMAT);
        this.writer.write(LoadState.LUAC_TAIL);
    }

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z) throws IOException {
        DumpState dumpState = new DumpState(outputStream, z);
        dumpState.dumpHeader();
        dumpState.dumpFunction(prototype);
        return dumpState.status;
    }

    public static int dump(Prototype prototype, OutputStream outputStream, boolean z, int i, boolean z2) throws IOException {
        if (i != 0 && i != 1 && i != 4) {
            throw new IllegalArgumentException("number format not supported: " + i);
        }
        DumpState dumpState = new DumpState(outputStream, z);
        dumpState.IS_LITTLE_ENDIAN = z2;
        dumpState.NUMBER_FORMAT = i;
        dumpState.SIZEOF_LUA_NUMBER = i != 0 ? 8 : 4;
        dumpState.dumpHeader();
        dumpState.dumpFunction(prototype);
        return dumpState.status;
    }
}
