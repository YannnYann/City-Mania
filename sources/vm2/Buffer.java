package vm2;

/* JADX INFO: loaded from: classes6.dex */
public final class Buffer {
    private static final int DEFAULT_CAPACITY = 64;
    private static final byte[] NOBYTES = new byte[0];
    private byte[] bytes;
    private int length;
    private int offset;
    private LuaValue value;

    public Buffer() {
        this(64);
    }

    public Buffer(int i) {
        this.bytes = new byte[i];
        this.length = 0;
        this.offset = 0;
        this.value = null;
    }

    public Buffer(LuaValue luaValue) {
        this.bytes = NOBYTES;
        this.offset = 0;
        this.length = 0;
        this.value = luaValue;
    }

    public LuaValue value() {
        LuaValue luaValue = this.value;
        return luaValue != null ? luaValue : tostring();
    }

    public Buffer setvalue(LuaValue luaValue) {
        this.bytes = NOBYTES;
        this.length = 0;
        this.offset = 0;
        this.value = luaValue;
        return this;
    }

    public final LuaString tostring() {
        realloc(this.length, 0);
        return LuaString.valueOf(this.bytes, this.offset, this.length);
    }

    public String tojstring() {
        return value().tojstring();
    }

    public String toString() {
        return tojstring();
    }

    public final Buffer append(byte b) {
        makeroom(0, 1);
        byte[] bArr = this.bytes;
        int i = this.offset;
        int i2 = this.length;
        this.length = i2 + 1;
        bArr[i + i2] = b;
        return this;
    }

    public final Buffer append(LuaValue luaValue) {
        append(luaValue.strvalue());
        return this;
    }

    public final Buffer append(LuaString luaString) {
        int i = luaString.m_length;
        makeroom(0, i);
        luaString.copyInto(0, this.bytes, this.offset + this.length, i);
        this.length += i;
        return this;
    }

    public final Buffer append(String str) {
        char[] charArray = str.toCharArray();
        int iLengthAsUtf8 = LuaString.lengthAsUtf8(charArray);
        makeroom(0, iLengthAsUtf8);
        LuaString.encodeToUtf8(charArray, charArray.length, this.bytes, this.offset + this.length);
        this.length += iLengthAsUtf8;
        return this;
    }

    public Buffer concatTo(LuaValue luaValue) {
        return setvalue(luaValue.concat(value()));
    }

    public Buffer concatTo(LuaString luaString) {
        LuaValue luaValue = this.value;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaString) : setvalue(luaString.concat(this.value));
    }

    public Buffer concatTo(LuaNumber luaNumber) {
        LuaValue luaValue = this.value;
        return (luaValue == null || luaValue.isstring()) ? prepend(luaNumber.strvalue()) : setvalue(luaNumber.concat(this.value));
    }

    public Buffer prepend(LuaString luaString) {
        int i = luaString.m_length;
        makeroom(i, 0);
        System.arraycopy(luaString.m_bytes, luaString.m_offset, this.bytes, this.offset - i, i);
        this.offset -= i;
        this.length += i;
        this.value = null;
        return this;
    }

    public final void makeroom(int i, int i2) {
        LuaValue luaValue = this.value;
        if (luaValue != null) {
            LuaString luaStringStrvalue = luaValue.strvalue();
            this.value = null;
            int i3 = luaStringStrvalue.m_length;
            this.length = i3;
            this.offset = i;
            byte[] bArr = new byte[i + i3 + i2];
            this.bytes = bArr;
            System.arraycopy(luaStringStrvalue.m_bytes, luaStringStrvalue.m_offset, bArr, i, i3);
            return;
        }
        int i4 = this.offset;
        int i5 = this.length;
        if (i4 + i5 + i2 > this.bytes.length || i4 < i) {
            int i6 = i + i5 + i2;
            if (i6 < 32) {
                i6 = 32;
            } else if (i6 < i5 * 2) {
                i6 = i5 * 2;
            }
            realloc(i6, i == 0 ? 0 : (i6 - i5) - i2);
        }
    }

    private final void realloc(int i, int i2) {
        byte[] bArr = this.bytes;
        if (i != bArr.length) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, this.offset, bArr2, i2, this.length);
            this.bytes = bArr2;
            this.offset = i2;
        }
    }
}
