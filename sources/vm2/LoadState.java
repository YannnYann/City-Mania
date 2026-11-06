package vm2;

import com.ironsource.C3522b4;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import vm2.Globals;

/* JADX INFO: loaded from: classes6.dex */
public class LoadState {
    public static final int LUAC_FORMAT = 1;
    public static final int LUAC_HEADERSIZE = 12;
    public static final int LUAC_VERSION = 82;
    public static final int LUA_TBOOLEAN = 2;
    public static final int LUA_TFUNCTION = 7;
    public static final int LUA_TINT = -2;
    public static final int LUA_TLIGHTUSERDATA = 0;
    public static final int LUA_TNIL = 1;
    public static final int LUA_TNONE = -1;
    public static final int LUA_TNUMBER = 4;
    public static final int LUA_TSTRING = 5;
    public static final int LUA_TTABLE = 3;
    public static final int LUA_TTHREAD = 9;
    public static final int LUA_TUSERDATA = 6;
    public static final int LUA_TVALUE = 8;
    public static final int NUMBER_FORMAT_FLOATS_OR_DOUBLES = 1;
    public static final int NUMBER_FORMAT_INTS_ONLY = 0;
    public static final int NUMBER_FORMAT_NUM_PATCH_INT32 = 4;
    public static final String SOURCE_BINARY_STRING = "binary string";
    private byte[] buf = new byte[EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE];
    public final DataInputStream is;
    private int luacFormat;
    private boolean luacLittleEndian;
    private int luacNumberFormat;
    private int luacSizeofInstruction;
    private int luacSizeofInt;
    private int luacSizeofLuaNumber;
    private int luacSizeofSizeT;
    private int luacVersion;
    String name;
    public static final Globals.Undumper instance = new GlobalsUndumper();
    public static String encoding = null;
    public static final byte[] LUA_SIGNATURE = {27, 76, 117, 97};
    public static final byte[] LUAC_TAIL = {25, -109, 13, 10, 26, 10};
    private static final LuaValue[] NOVALUES = new LuaValue[0];
    private static final Prototype[] NOPROTOS = new Prototype[0];
    private static final LocVars[] NOLOCVARS = new LocVars[0];
    private static final Upvaldesc[] NOUPVALDESCS = new Upvaldesc[0];
    private static final int[] NOINTS = new int[0];

    public static void install(Globals globals) {
        globals.undumper = instance;
    }

    public int loadInt() throws IOException {
        int i;
        byte b;
        this.is.readFully(this.buf, 0, 4);
        if (this.luacLittleEndian) {
            byte[] bArr = this.buf;
            i = ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | (bArr[3] << 24);
            b = bArr[0];
        } else {
            byte[] bArr2 = this.buf;
            i = ((bArr2[1] & 255) << 16) | (bArr2[0] << 24) | ((bArr2[2] & 255) << 8);
            b = bArr2[3];
        }
        return (b & 255) | i;
    }

    public int[] loadIntArray() throws IOException {
        int i;
        byte b;
        int iLoadInt = loadInt();
        if (iLoadInt == 0) {
            return NOINTS;
        }
        int i2 = iLoadInt << 2;
        if (this.buf.length < i2) {
            this.buf = new byte[i2];
        }
        int i3 = 0;
        this.is.readFully(this.buf, 0, i2);
        int[] iArr = new int[iLoadInt];
        int i4 = 0;
        while (i3 < iLoadInt) {
            if (this.luacLittleEndian) {
                byte[] bArr = this.buf;
                i = (bArr[i4 + 3] << 24) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8);
                b = bArr[i4];
            } else {
                byte[] bArr2 = this.buf;
                i = (bArr2[i4] << 24) | ((bArr2[i4 + 1] & 255) << 16) | ((bArr2[i4 + 2] & 255) << 8);
                b = bArr2[i4 + 3];
            }
            iArr[i3] = (b & 255) | i;
            i3++;
            i4 += 4;
        }
        return iArr;
    }

    public long loadInt64() throws IOException {
        int iLoadInt;
        int iLoadInt2;
        if (this.luacLittleEndian) {
            iLoadInt2 = loadInt();
            iLoadInt = loadInt();
        } else {
            iLoadInt = loadInt();
            iLoadInt2 = loadInt();
        }
        return (((long) iLoadInt) << 32) | (((long) iLoadInt2) & 4294967295L);
    }

    public LuaString loadString() throws IOException {
        int iLoadInt64 = this.luacSizeofSizeT == 8 ? (int) loadInt64() : loadInt();
        if (iLoadInt64 == 0) {
            return null;
        }
        byte[] bArr = new byte[iLoadInt64];
        this.is.readFully(bArr, 0, iLoadInt64);
        for (int i = 0; i < iLoadInt64; i++) {
            byte b = bArr[i];
            byte[] bArr2 = LuaString.SWIZZLE_BYTES;
            bArr[i] = (byte) (b ^ bArr2[i % bArr2.length]);
        }
        return LuaString.valueUsing(bArr, 0, iLoadInt64 - 1);
    }

    public static LuaValue longBitsToLuaNumber(long j) {
        if ((Long.MAX_VALUE & j) == 0) {
            return LuaValue.ZERO;
        }
        int i = ((int) ((j >> 52) & 2047)) - 1023;
        if (i >= 0 && i < 31) {
            long j2 = 4503599627370495L & j;
            int i2 = 52 - i;
            if ((j2 & ((1 << i2) - 1)) == 0) {
                int i3 = (1 << i) | ((int) (j2 >> i2));
                if ((j >> 63) != 0) {
                    i3 = -i3;
                }
                return LuaInteger.valueOf(i3);
            }
        }
        return LuaValue.valueOf(Double.longBitsToDouble(j));
    }

    public LuaValue loadNumber() throws IOException {
        if (this.luacNumberFormat == 0) {
            return LuaInteger.valueOf(loadInt());
        }
        return longBitsToLuaNumber(loadInt64());
    }

    public void loadConstants(Prototype prototype) throws IOException {
        int iLoadInt = loadInt();
        LuaValue[] luaValueArr = iLoadInt > 0 ? new LuaValue[iLoadInt] : NOVALUES;
        for (int i = 0; i < iLoadInt; i++) {
            byte b = this.is.readByte();
            if (b == -2) {
                luaValueArr[i] = LuaInteger.valueOf(loadInt());
            } else if (b == 1) {
                luaValueArr[i] = LuaValue.NIL;
            } else if (b == 2) {
                luaValueArr[i] = this.is.readUnsignedByte() != 0 ? LuaValue.TRUE : LuaValue.FALSE;
            } else if (b == 4) {
                luaValueArr[i] = loadNumber();
            } else if (b == 5) {
                luaValueArr[i] = loadString();
            } else {
                throw new IllegalStateException("bad constant");
            }
        }
        prototype.k = luaValueArr;
        int iLoadInt2 = loadInt();
        Prototype[] prototypeArr = iLoadInt2 > 0 ? new Prototype[iLoadInt2] : NOPROTOS;
        for (int i2 = 0; i2 < iLoadInt2; i2++) {
            prototypeArr[i2] = loadFunction(prototype.source);
        }
        prototype.p = prototypeArr;
    }

    public void loadUpvalues(Prototype prototype) throws IOException {
        int iLoadInt = loadInt();
        prototype.upvalues = iLoadInt > 0 ? new Upvaldesc[iLoadInt] : NOUPVALDESCS;
        for (int i = 0; i < iLoadInt; i++) {
            prototype.upvalues[i] = new Upvaldesc(null, this.is.readByte() != 0, this.is.readByte() & 255);
        }
    }

    public void loadDebug(Prototype prototype) throws IOException {
        LuaString luaString = prototype.source;
        LuaString luaStringLoadString = loadString();
        prototype.source = luaStringLoadString;
        if (luaStringLoadString == null) {
            prototype.source = luaString;
        }
        prototype.lineinfo = loadIntArray();
        int iLoadInt = loadInt();
        prototype.locvars = iLoadInt > 0 ? new LocVars[iLoadInt] : NOLOCVARS;
        for (int i = 0; i < iLoadInt; i++) {
            prototype.locvars[i] = new LocVars(loadString(), loadInt(), loadInt());
        }
        int iLoadInt2 = loadInt();
        for (int i2 = 0; i2 < iLoadInt2; i2++) {
            prototype.upvalues[i2].name = loadString();
        }
    }

    public Prototype loadFunction(LuaString luaString) throws IOException {
        Prototype prototype = new Prototype();
        prototype.linedefined = loadInt();
        prototype.lastlinedefined = loadInt();
        prototype.numparams = this.is.readUnsignedByte();
        prototype.is_vararg = this.is.readUnsignedByte();
        prototype.maxstacksize = this.is.readUnsignedByte();
        prototype.code = loadIntArray();
        prototype.source = luaString;
        loadConstants(prototype);
        loadUpvalues(prototype);
        loadDebug(prototype);
        return prototype;
    }

    public void loadHeader() throws IOException {
        this.luacVersion = this.is.readByte();
        this.luacFormat = this.is.readByte();
        int i = 0;
        this.luacLittleEndian = 1 != this.is.readByte();
        this.luacSizeofInt = this.is.readByte();
        this.luacSizeofSizeT = this.is.readByte();
        this.luacSizeofInstruction = this.is.readByte();
        this.luacSizeofLuaNumber = this.is.readByte();
        this.luacNumberFormat = this.is.readByte();
        while (true) {
            byte[] bArr = LUAC_TAIL;
            if (i >= bArr.length) {
                return;
            }
            if (this.is.readByte() != bArr[i]) {
                throw new LuaError("Unexpeted byte in luac tail of header, index=" + i);
            }
            i++;
        }
    }

    public static Prototype undump(InputStream inputStream, String str) throws IOException {
        int i = inputStream.read();
        byte[] bArr = LUA_SIGNATURE;
        if (i != bArr[0] || inputStream.read() != bArr[1] || inputStream.read() != bArr[2] || inputStream.read() != bArr[3]) {
            return null;
        }
        String sourceName = getSourceName(str);
        LoadState loadState = new LoadState(inputStream, sourceName);
        loadState.loadHeader();
        int i2 = loadState.luacNumberFormat;
        if (i2 != 0 && i2 != 1 && i2 != 4) {
            throw new LuaError("unsupported int size");
        }
        return loadState.loadFunction(LuaString.valueOf(sourceName));
    }

    public static String getSourceName(String str) {
        if (str.startsWith("@") || str.startsWith(C3522b4.j.b)) {
            return str.substring(1);
        }
        return str.startsWith("\u001b") ? SOURCE_BINARY_STRING : str;
    }

    private LoadState(InputStream inputStream, String str) {
        this.name = str;
        this.is = new DataInputStream(inputStream);
    }

    public static final class GlobalsUndumper implements Globals.Undumper {
        private GlobalsUndumper() {
        }

        @Override // vm2.Globals.Undumper
        public Prototype undump(InputStream inputStream, String str) throws IOException {
            return LoadState.undump(inputStream, str);
        }
    }
}
