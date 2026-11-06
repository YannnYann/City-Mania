package vm2;

import com.vungle.ads.internal.protos.Sdk;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import vm2.lib.MathLib;

/* JADX INFO: loaded from: classes6.dex */
public class LuaString extends LuaValue {
    static final int RECENT_STRINGS_CACHE_SIZE = 4096;
    static final int RECENT_STRINGS_MAX_LENGTH = 32;
    static final byte[] SWIZZLE_BYTES = {36, 102, 42, 113, 36, 106, -42, 123, 63, -24, -24, -58, 60, 92, 76, -98, -124, -101, -106, 74, -16, -66, -48, 124, -67, -21, -14, -80, -59, 79, -56, -46, 25, 1, 100, 11, 73, 84, 106, 125, 23};
    public static LuaValue s_metatable;
    public final byte[] m_bytes;
    private final int m_hashcode;
    public final int m_length;
    public final int m_offset;

    @Override // vm2.LuaValue
    public LuaString checkstring() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isstring() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaString optstring(LuaString luaString) {
        return this;
    }

    @Override // vm2.LuaValue
    public LuaString strvalue() {
        return this;
    }

    @Override // vm2.LuaValue
    public LuaValue tostring() {
        return this;
    }

    @Override // vm2.LuaValue
    public int type() {
        return 5;
    }

    public static final class RecentShortStrings {
        private static final LuaString[] recent_short_strings = new LuaString[4096];

        private RecentShortStrings() {
        }
    }

    public static LuaString valueOf(String str) {
        char[] charArray = str.toCharArray();
        int iLengthAsUtf8 = lengthAsUtf8(charArray);
        byte[] bArr = new byte[iLengthAsUtf8];
        encodeToUtf8(charArray, charArray.length, bArr, 0);
        return valueUsing(bArr, 0, iLengthAsUtf8);
    }

    public static LuaString valueOf(byte[] bArr, int i, int i2) {
        if (i2 > 32) {
            return valueFromCopy(bArr, i, i2);
        }
        int iHashCode = hashCode(bArr, i, i2);
        int i3 = iHashCode & 4095;
        LuaString luaString = RecentShortStrings.recent_short_strings[i3];
        if (luaString != null && luaString.m_hashcode == iHashCode && luaString.byteseq(bArr, i, i2)) {
            return luaString;
        }
        LuaString luaStringValueFromCopy = valueFromCopy(bArr, i, i2);
        RecentShortStrings.recent_short_strings[i3] = luaStringValueFromCopy;
        return luaStringValueFromCopy;
    }

    private static LuaString valueFromCopy(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new LuaString(bArr2, 0, i2);
    }

    public static LuaString valueUsing(byte[] bArr, int i, int i2) {
        if (bArr.length > 32) {
            return new LuaString(bArr, i, i2);
        }
        int iHashCode = hashCode(bArr, i, i2);
        int i3 = iHashCode & 4095;
        LuaString luaString = RecentShortStrings.recent_short_strings[i3];
        if (luaString != null && luaString.m_hashcode == iHashCode && luaString.byteseq(bArr, i, i2)) {
            return luaString;
        }
        LuaString luaString2 = new LuaString(bArr, i, i2);
        RecentShortStrings.recent_short_strings[i3] = luaString2;
        return luaString2;
    }

    public static LuaString valueOf(char[] cArr) {
        return valueOf(cArr, 0, cArr.length);
    }

    public static LuaString valueOf(char[] cArr, int i, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) cArr[i3 + i];
        }
        return valueUsing(bArr, 0, i2);
    }

    public static LuaString valueOf(byte[] bArr) {
        return valueOf(bArr, 0, bArr.length);
    }

    public static LuaString valueUsing(byte[] bArr) {
        return valueUsing(bArr, 0, bArr.length);
    }

    private LuaString(byte[] bArr, int i, int i2) {
        this.m_bytes = bArr;
        this.m_offset = i;
        this.m_length = i2;
        this.m_hashcode = hashCode(bArr, i, i2);
    }

    @Override // vm2.LuaValue
    public LuaValue getmetatable() {
        return s_metatable;
    }

    @Override // vm2.LuaValue
    public String typename() {
        return "string";
    }

    @Override // vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return decodeAsUtf8(this.m_bytes, this.m_offset, this.m_length);
    }

    @Override // vm2.LuaValue
    public LuaValue neg() {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? super.neg() : LuaValue.valueOf(-dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue add(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.ADD, luaValue) : luaValue.add(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue add(double d) {
        return LuaValue.valueOf(checkarith() + d);
    }

    @Override // vm2.LuaValue
    public LuaValue add(int i) {
        return LuaValue.valueOf(checkarith() + ((double) i));
    }

    @Override // vm2.LuaValue
    public LuaValue sub(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.SUB, luaValue) : luaValue.subFrom(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(double d) {
        return LuaValue.valueOf(checkarith() - d);
    }

    @Override // vm2.LuaValue
    public LuaValue sub(int i) {
        return LuaValue.valueOf(checkarith() - ((double) i));
    }

    @Override // vm2.LuaValue
    public LuaValue subFrom(double d) {
        return LuaValue.valueOf(d - checkarith());
    }

    @Override // vm2.LuaValue
    public LuaValue mul(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.MUL, luaValue) : luaValue.mul(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(double d) {
        return LuaValue.valueOf(checkarith() * d);
    }

    @Override // vm2.LuaValue
    public LuaValue mul(int i) {
        return LuaValue.valueOf(checkarith() * ((double) i));
    }

    @Override // vm2.LuaValue
    public LuaValue pow(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.POW, luaValue) : luaValue.powWith(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue pow(double d) {
        return MathLib.dpow(checkarith(), d);
    }

    @Override // vm2.LuaValue
    public LuaValue pow(int i) {
        return MathLib.dpow(checkarith(), i);
    }

    @Override // vm2.LuaValue
    public LuaValue powWith(double d) {
        return MathLib.dpow(d, checkarith());
    }

    @Override // vm2.LuaValue
    public LuaValue powWith(int i) {
        return MathLib.dpow(i, checkarith());
    }

    @Override // vm2.LuaValue
    public LuaValue div(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.DIV, luaValue) : luaValue.divInto(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue div(double d) {
        return LuaDouble.ddiv(checkarith(), d);
    }

    @Override // vm2.LuaValue
    public LuaValue div(int i) {
        return LuaDouble.ddiv(checkarith(), i);
    }

    @Override // vm2.LuaValue
    public LuaValue divInto(double d) {
        return LuaDouble.ddiv(d, checkarith());
    }

    @Override // vm2.LuaValue
    public LuaValue mod(LuaValue luaValue) {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? arithmt(LuaValue.MOD, luaValue) : luaValue.modFrom(dScannumber);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(double d) {
        return LuaDouble.dmod(checkarith(), d);
    }

    @Override // vm2.LuaValue
    public LuaValue mod(int i) {
        return LuaDouble.dmod(checkarith(), i);
    }

    @Override // vm2.LuaValue
    public LuaValue modFrom(double d) {
        return LuaDouble.dmod(d, checkarith());
    }

    @Override // vm2.LuaValue
    public LuaValue lt(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) > 0 ? LuaValue.TRUE : LuaValue.FALSE : super.lt(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lt_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) > 0 : super.lt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lt_b(int i) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public boolean lt_b(double d) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue lteq(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) >= 0 ? LuaValue.TRUE : LuaValue.FALSE : super.lteq(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) >= 0 : super.lteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(int i) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public boolean lteq_b(double d) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue gt(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) < 0 ? LuaValue.TRUE : LuaValue.FALSE : super.gt(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gt_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) < 0 : super.gt_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gt_b(int i) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public boolean gt_b(double d) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue gteq(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) <= 0 ? LuaValue.TRUE : LuaValue.FALSE : super.gteq(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(LuaValue luaValue) {
        return luaValue.isstring() ? luaValue.strcmp(this) <= 0 : super.gteq_b(luaValue);
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(int i) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public boolean gteq_b(double d) {
        typerror("attempt to compare string with number");
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue concat(LuaValue luaValue) {
        return luaValue.concatTo(this);
    }

    @Override // vm2.LuaValue
    public Buffer concat(Buffer buffer) {
        return buffer.concatTo(this);
    }

    @Override // vm2.LuaValue
    public LuaValue concatTo(LuaNumber luaNumber) {
        return concatTo(luaNumber.strvalue());
    }

    @Override // vm2.LuaValue
    public LuaValue concatTo(LuaString luaString) {
        int i = luaString.m_length;
        int i2 = this.m_length + i;
        byte[] bArr = new byte[i2];
        System.arraycopy(luaString.m_bytes, luaString.m_offset, bArr, 0, i);
        System.arraycopy(this.m_bytes, this.m_offset, bArr, luaString.m_length, this.m_length);
        return valueUsing(bArr, 0, i2);
    }

    @Override // vm2.LuaValue
    public int strcmp(LuaValue luaValue) {
        return -luaValue.strcmp(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
    
        return r2 - r9.m_length;
     */
    @Override // vm2.LuaValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int strcmp(vm2.LuaString r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = r0
        L2:
            int r2 = r8.m_length
            if (r0 >= r2) goto L29
            int r3 = r9.m_length
            if (r1 >= r3) goto L29
            byte[] r2 = r8.m_bytes
            int r3 = r8.m_offset
            int r4 = r3 + r0
            r4 = r2[r4]
            byte[] r5 = r9.m_bytes
            int r6 = r9.m_offset
            int r7 = r6 + r1
            r7 = r5[r7]
            if (r4 == r7) goto L24
            int r3 = r3 + r0
            r9 = r2[r3]
            int r6 = r6 + r1
            r0 = r5[r6]
            int r9 = r9 - r0
            return r9
        L24:
            int r0 = r0 + 1
            int r1 = r1 + 1
            goto L2
        L29:
            int r9 = r9.m_length
            int r2 = r2 - r9
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaString.strcmp(vm2.LuaString):int");
    }

    private double checkarith() {
        double dScannumber = scannumber();
        if (Double.isNaN(dScannumber)) {
            aritherror();
        }
        return dScannumber;
    }

    @Override // vm2.LuaValue
    public int checkint() {
        return (int) checkdouble();
    }

    @Override // vm2.LuaValue
    public LuaInteger checkinteger() {
        return LuaValue.valueOf(checkint());
    }

    @Override // vm2.LuaValue
    public long checklong() {
        return (long) checkdouble();
    }

    @Override // vm2.LuaValue
    public double checkdouble() {
        double dScannumber = scannumber();
        if (Double.isNaN(dScannumber)) {
            argerror("number");
        }
        return dScannumber;
    }

    @Override // vm2.LuaValue
    public LuaNumber checknumber() {
        return LuaValue.valueOf(checkdouble());
    }

    @Override // vm2.LuaValue
    public LuaNumber checknumber(String str) {
        double dScannumber = scannumber();
        if (Double.isNaN(dScannumber)) {
            LuaValue.error(str);
        }
        return LuaValue.valueOf(dScannumber);
    }

    @Override // vm2.LuaValue
    public boolean isnumber() {
        return !Double.isNaN(scannumber());
    }

    @Override // vm2.LuaValue
    public boolean isint() {
        double dScannumber = scannumber();
        return !Double.isNaN(dScannumber) && ((double) ((int) dScannumber)) == dScannumber;
    }

    @Override // vm2.LuaValue
    public boolean islong() {
        double dScannumber = scannumber();
        return !Double.isNaN(dScannumber) && ((double) ((long) dScannumber)) == dScannumber;
    }

    @Override // vm2.LuaValue
    public byte tobyte() {
        return (byte) toint();
    }

    @Override // vm2.LuaValue
    public char tochar() {
        return (char) toint();
    }

    @Override // vm2.LuaValue
    public double todouble() {
        double dScannumber = scannumber();
        if (Double.isNaN(dScannumber)) {
            return 0.0d;
        }
        return dScannumber;
    }

    @Override // vm2.LuaValue
    public float tofloat() {
        return (float) todouble();
    }

    @Override // vm2.LuaValue
    public int toint() {
        return (int) tolong();
    }

    @Override // vm2.LuaValue
    public long tolong() {
        return (long) todouble();
    }

    @Override // vm2.LuaValue
    public short toshort() {
        return (short) toint();
    }

    @Override // vm2.LuaValue
    public double optdouble(double d) {
        return checkdouble();
    }

    @Override // vm2.LuaValue
    public int optint(int i) {
        return checkint();
    }

    @Override // vm2.LuaValue
    public LuaInteger optinteger(LuaInteger luaInteger) {
        return checkinteger();
    }

    @Override // vm2.LuaValue
    public long optlong(long j) {
        return checklong();
    }

    @Override // vm2.LuaValue
    public LuaNumber optnumber(LuaNumber luaNumber) {
        return checknumber();
    }

    @Override // vm2.LuaValue
    public String optjstring(String str) {
        return tojstring();
    }

    public LuaString substring(int i, int i2) {
        int i3 = this.m_offset + i;
        int i4 = i2 - i;
        if (i4 >= this.m_length / 2) {
            return valueUsing(this.m_bytes, i3, i4);
        }
        return valueOf(this.m_bytes, i3, i4);
    }

    public int hashCode() {
        return this.m_hashcode;
    }

    public static int hashCode(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 5) + 1;
        int i4 = i2;
        while (i2 >= i3) {
            i4 ^= ((i4 << 5) + (i4 >> 2)) + (bArr[(i + i2) - 1] & 255);
            i2 -= i3;
        }
        return i4;
    }

    @Override // vm2.LuaValue
    public boolean equals(Object obj) {
        if (obj instanceof LuaString) {
            return raweq((LuaString) obj);
        }
        return false;
    }

    @Override // vm2.LuaValue
    public LuaValue eq(LuaValue luaValue) {
        return luaValue.raweq(this) ? LuaValue.TRUE : LuaValue.FALSE;
    }

    @Override // vm2.LuaValue
    public boolean eq_b(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // vm2.LuaValue
    public boolean raweq(LuaValue luaValue) {
        return luaValue.raweq(this);
    }

    @Override // vm2.LuaValue
    public boolean raweq(LuaString luaString) {
        if (this == luaString) {
            return true;
        }
        if (luaString.m_length != this.m_length) {
            return false;
        }
        if (luaString.m_bytes == this.m_bytes && luaString.m_offset == this.m_offset) {
            return true;
        }
        if (luaString.hashCode() != hashCode()) {
            return false;
        }
        for (int i = 0; i < this.m_length; i++) {
            if (luaString.m_bytes[luaString.m_offset + i] != this.m_bytes[this.m_offset + i]) {
                return false;
            }
        }
        return true;
    }

    public static boolean equals(LuaString luaString, int i, LuaString luaString2, int i2, int i3) {
        return equals(luaString.m_bytes, luaString.m_offset + i, luaString2.m_bytes, luaString2.m_offset + i2, i3);
    }

    private boolean byteseq(byte[] bArr, int i, int i2) {
        return this.m_length == i2 && equals(this.m_bytes, this.m_offset, bArr, i, i2);
    }

    public static boolean equals(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr.length < i + i3 || bArr2.length < i2 + i3) {
            return false;
        }
        while (true) {
            i3--;
            if (i3 < 0) {
                return true;
            }
            int i4 = i + 1;
            int i5 = i2 + 1;
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i = i4;
            i2 = i5;
        }
    }

    public void write(DataOutputStream dataOutputStream, int i, int i2) throws IOException {
        int i3 = this.m_offset + i;
        for (int i4 = 0; i4 < i2; i4++) {
            byte b = this.m_bytes[i3 + i4];
            byte[] bArr = SWIZZLE_BYTES;
            dataOutputStream.write(b ^ bArr[i4 % bArr.length]);
        }
    }

    @Override // vm2.LuaValue
    public LuaValue len() {
        return LuaInteger.valueOf(this.m_length);
    }

    @Override // vm2.LuaValue
    public int length() {
        return this.m_length;
    }

    @Override // vm2.LuaValue
    public int rawlen() {
        return this.m_length;
    }

    public int luaByte(int i) {
        return this.m_bytes[this.m_offset + i] & 255;
    }

    public int charAt(int i) {
        if (i < 0 || i >= this.m_length) {
            throw new IndexOutOfBoundsException();
        }
        return luaByte(i);
    }

    @Override // vm2.LuaValue
    public String checkjstring() {
        return tojstring();
    }

    public InputStream toInputStream() {
        return new ByteArrayInputStream(this.m_bytes, this.m_offset, this.m_length);
    }

    public void copyInto(int i, byte[] bArr, int i2, int i3) {
        System.arraycopy(this.m_bytes, this.m_offset + i, bArr, i2, i3);
    }

    public int indexOfAny(LuaString luaString) {
        int i = this.m_offset;
        int i2 = this.m_length + i;
        int i3 = luaString.m_offset + luaString.m_length;
        while (i < i2) {
            for (int i4 = luaString.m_offset; i4 < i3; i4++) {
                if (this.m_bytes[i] == luaString.m_bytes[i4]) {
                    return i - this.m_offset;
                }
            }
            i++;
        }
        return -1;
    }

    public int indexOf(byte b, int i) {
        while (i < this.m_length) {
            if (this.m_bytes[this.m_offset + i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int indexOf(LuaString luaString, int i) {
        int length = luaString.length();
        int i2 = this.m_length - length;
        while (i <= i2) {
            if (equals(this.m_bytes, this.m_offset + i, luaString.m_bytes, luaString.m_offset, length)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int lastIndexOf(LuaString luaString) {
        int length = luaString.length();
        for (int i = this.m_length - length; i >= 0; i--) {
            if (equals(this.m_bytes, this.m_offset + i, luaString.m_bytes, luaString.m_offset, length)) {
                return i;
            }
        }
        return -1;
    }

    public static String decodeAsUtf8(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2 + i;
        int i5 = 0;
        int i6 = i;
        int i7 = 0;
        while (i6 < i4) {
            int i8 = i6 + 1;
            int i9 = bArr[i6] & 224;
            if (i9 == 192) {
                i8++;
            } else if (i9 == 224) {
                i8 = i6 + 2;
                i8++;
            }
            i6 = i8;
            i7++;
        }
        char[] cArr = new char[i7];
        while (i < i4) {
            int i10 = i5 + 1;
            int i11 = i + 1;
            int i12 = bArr[i];
            if (i12 >= 0 || i11 >= i4) {
                i = i11;
            } else if (i12 < -32 || (i3 = i + 2) >= i4) {
                i += 2;
                i12 = ((i12 & 63) << 6) | (bArr[i11] & '?');
            } else {
                i += 3;
                i12 = (bArr[i3] & '?') | ((bArr[i11] & '?') << 6) | ((i12 & 15) << 12);
            }
            cArr[i5] = (char) i12;
            i5 = i10;
        }
        return new String(cArr);
    }

    public static int lengthAsUtf8(char[] cArr) {
        int length = cArr.length;
        int i = length;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            char c = cArr[length];
            if (c >= 128) {
                i += c >= 2048 ? 2 : 1;
            }
        }
    }

    public static int encodeToUtf8(char[] cArr, int i, byte[] bArr, int i2) {
        int i3 = i2;
        for (int i4 = 0; i4 < i; i4++) {
            char c = cArr[i4];
            if (c < 128) {
                bArr[i3] = (byte) c;
                i3++;
            } else if (c < 2048) {
                int i5 = i3 + 1;
                bArr[i3] = (byte) (((c >> 6) & 31) | 192);
                i3 += 2;
                bArr[i5] = (byte) ((c & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            } else {
                bArr[i3] = (byte) (((c >> '\f') & 15) | Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE);
                int i6 = i3 + 2;
                bArr[i3 + 1] = (byte) (((c >> 6) & 63) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                i3 += 3;
                bArr[i6] = (byte) ((c & '?') | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            }
        }
        return i3 - i2;
    }

    public boolean isValidUtf8() {
        int i;
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3) {
            byte[] bArr = this.m_bytes;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b < 0) {
                if ((b & 224) == 192 && i4 < i3) {
                    i2 += 2;
                    if ((bArr[i4] & 192) == 128) {
                        continue;
                    } else {
                        i4 = i2;
                    }
                }
                if ((b & 240) != 224 || (i = i4 + 1) >= i3 || (bArr[i4] & 192) != 128) {
                    return false;
                }
                i4 += 2;
                if ((bArr[i] & 192) != 128) {
                    return false;
                }
            }
            i2 = i4;
        }
        return true;
    }

    @Override // vm2.LuaValue
    public LuaValue tonumber() {
        double dScannumber = scannumber();
        return Double.isNaN(dScannumber) ? LuaValue.NIL : LuaValue.valueOf(dScannumber);
    }

    public LuaValue tonumber(int i) {
        double dScannumber = scannumber(i);
        return Double.isNaN(dScannumber) ? LuaValue.NIL : LuaValue.valueOf(dScannumber);
    }

    public double scannumber() {
        int i;
        byte b;
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3 && this.m_bytes[i2] == 32) {
            i2++;
        }
        while (i2 < i3 && this.m_bytes[i3 - 1] == 32) {
            i3--;
        }
        if (i2 >= i3) {
            return Double.NaN;
        }
        byte[] bArr = this.m_bytes;
        if (bArr[i2] == 48 && (i = i2 + 1) < i3 && ((b = bArr[i]) == 120 || b == 88)) {
            return scanlong(16, i2 + 2, i3);
        }
        double dScanlong = scanlong(10, i2, i3);
        return Double.isNaN(dScanlong) ? scandouble(i2, i3) : dScanlong;
    }

    public double scannumber(int i) {
        if (i < 2 || i > 36) {
            return Double.NaN;
        }
        int i2 = this.m_offset;
        int i3 = this.m_length + i2;
        while (i2 < i3 && this.m_bytes[i2] == 32) {
            i2++;
        }
        while (i2 < i3 && this.m_bytes[i3 - 1] == 32) {
            i3--;
        }
        if (i2 >= i3) {
            return Double.NaN;
        }
        return scanlong(i, i2, i3);
    }

    private double scanlong(int i, int i2, int i3) {
        boolean z = this.m_bytes[i2] == 45;
        if (z) {
            i2++;
        }
        long j = 0;
        while (i2 < i3) {
            byte b = this.m_bytes[i2];
            byte b2 = 48;
            if (i > 10 && (b < 48 || b > 57)) {
                b2 = (b < 65 || b > 90) ? (byte) 87 : (byte) 55;
            }
            int i4 = b - b2;
            if (i4 < 0 || i4 >= i) {
                return Double.NaN;
            }
            j = (j * ((long) i)) + ((long) i4);
            if (j < 0) {
                return Double.NaN;
            }
            i2++;
        }
        return z ? -j : j;
    }

    private double scandouble(int i, int i2) {
        int i3 = i + 64;
        if (i2 > i3) {
            i2 = i3;
        }
        for (int i4 = i; i4 < i2; i4++) {
            byte b = this.m_bytes[i4];
            if (b != 43 && b != 69 && b != 101 && b != 45 && b != 46) {
                switch (b) {
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                        break;
                    default:
                        return Double.NaN;
                }
            }
        }
        char[] cArr = new char[i2 - i];
        for (int i5 = i; i5 < i2; i5++) {
            cArr[i5 - i] = (char) this.m_bytes[i5];
        }
        try {
            return Double.parseDouble(new String(cArr));
        } catch (Exception unused) {
            return Double.NaN;
        }
    }

    public void printToStream(PrintStream printStream) {
        int i = this.m_length;
        for (int i2 = 0; i2 < i; i2++) {
            printStream.print((char) this.m_bytes[this.m_offset + i2]);
        }
    }
}
