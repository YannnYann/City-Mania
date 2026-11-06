package vm2.lib;

import com.ironsource.C3522b4;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import vm2.Buffer;
import vm2.LuaClosure;
import vm2.LuaFunction;
import vm2.LuaString;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.Varargs;
import vm2.compiler.DumpState;

/* JADX INFO: loaded from: classes6.dex */
public class StringLib extends TwoArgFunction {
    private static final int CAP_POSITION = -2;
    private static final int CAP_UNFINISHED = -1;
    private static final String FLAGS = "-+ #0";
    private static final int L_ESC = 37;
    private static final byte MASK_ALPHA = 1;
    private static final byte MASK_CONTROL = 64;
    private static final byte MASK_DIGIT = 8;
    private static final byte MASK_HEXDIGIT = -128;
    private static final byte MASK_LOWERCASE = 2;
    private static final byte MASK_PUNCT = 16;
    private static final byte MASK_SPACE = 32;
    private static final byte MASK_UPPERCASE = 4;
    private static final int MAXCCALLS = 200;
    private static final int MAX_CAPTURES = 32;
    private static final LuaString SPECIALS = LuaValue.valueOf("^$*+?.([%-");
    static final byte[] CHAR_TABLE = new byte[256];

    public static int posrelat(int i, int i2) {
        return i >= 0 ? i : i2 + i + 1;
    }

    @Override // vm2.lib.TwoArgFunction, vm2.lib.LibFunction, vm2.LuaValue
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.set("byte", new _byte());
        luaTable.set("char", new _char());
        luaTable.set("dump", new dump());
        luaTable.set("find", new find());
        luaTable.set("format", new format());
        luaTable.set("gmatch", new gmatch());
        luaTable.set("gsub", new gsub());
        luaTable.set("len", new len());
        luaTable.set("lower", new lower());
        luaTable.set("match", new match());
        luaTable.set("rep", new rep());
        luaTable.set("reverse", new reverse());
        luaTable.set("sub", new sub());
        luaTable.set("upper", new upper());
        luaValue2.set("string", luaTable);
        if (!luaValue2.get("package").isnil()) {
            luaValue2.get("package").get(C3522b4.i.r).set("string", luaTable);
        }
        if (LuaString.s_metatable == null) {
            LuaString.s_metatable = LuaValue.tableOf(new LuaValue[]{LuaValue.INDEX, luaTable});
        }
        return luaTable;
    }

    public static final class _byte extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            int i = luaStringCheckstring.m_length;
            int iPosrelat = StringLib.posrelat(varargs.optint(2, 1), i);
            int iPosrelat2 = StringLib.posrelat(varargs.optint(3, iPosrelat), i);
            if (iPosrelat <= 0) {
                iPosrelat = 1;
            }
            if (iPosrelat2 <= i) {
                i = iPosrelat2;
            }
            if (iPosrelat > i) {
                return LuaValue.NONE;
            }
            int i2 = (i - iPosrelat) + 1;
            if (iPosrelat + i2 <= i) {
                LuaValue.error("string slice too long");
            }
            LuaValue[] luaValueArr = new LuaValue[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                luaValueArr[i3] = LuaValue.valueOf(luaStringCheckstring.luaByte((iPosrelat + i3) - 1));
            }
            return LuaValue.varargsOf(luaValueArr);
        }
    }

    public static final class _char extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            int iNarg = varargs.narg();
            byte[] bArr = new byte[iNarg];
            int i = 0;
            int i2 = 1;
            while (i < iNarg) {
                int iCheckint = varargs.checkint(i2);
                if (iCheckint < 0 || iCheckint >= 256) {
                    LuaValue.argerror(i2, "invalid value for string.char [0; 255]: " + iCheckint);
                }
                bArr[i] = (byte) iCheckint;
                i++;
                i2++;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class dump extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaFunction luaFunctionCheckfunction = varargs.checkfunction(1);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                DumpState.dump(((LuaClosure) luaFunctionCheckfunction).p, byteArrayOutputStream, varargs.optboolean(2, true));
                return LuaString.valueUsing(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                return LuaValue.error(e.getMessage());
            }
        }
    }

    public static final class find extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return StringLib.str_find_aux(varargs, true);
        }
    }

    public final class format extends VarArgFunction {
        public format() {
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x00b7 A[ADDED_TO_REGION, REMOVE] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00bf  */
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public vm2.Varargs invoke(vm2.Varargs r10) {
            /*
                Method dump skipped, instruction units count: 226
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: vm2.lib.StringLib.format.invoke(vm2.Varargs):vm2.Varargs");
        }
    }

    public static void addquoted(Buffer buffer, LuaString luaString) {
        buffer.append((byte) 34);
        int length = luaString.length();
        for (int i = 0; i < length; i++) {
            int iLuaByte = luaString.luaByte(i);
            if (iLuaByte == 10 || iLuaByte == 34 || iLuaByte == 92) {
                buffer.append((byte) 92);
                buffer.append((byte) iLuaByte);
            } else if (iLuaByte <= 31 || iLuaByte == 127) {
                buffer.append((byte) 92);
                int i2 = i + 1;
                if (i2 == length || luaString.luaByte(i2) < 48 || luaString.luaByte(i2) > 57) {
                    buffer.append(Integer.toString(iLuaByte));
                } else {
                    buffer.append((byte) 48);
                    buffer.append((byte) ((char) ((iLuaByte / 10) + 48)));
                    buffer.append((byte) ((char) ((iLuaByte % 10) + 48)));
                }
            } else {
                buffer.append((byte) iLuaByte);
            }
        }
        buffer.append((byte) 34);
    }

    public class FormatDesc {
        private static final int MAX_FLAGS = 5;
        private boolean alternateForm;
        public final int conversion;
        private boolean explicitPlus;
        private boolean leftAdjust;
        public final int length;
        int precision;
        private boolean space;
        public final String src;
        private int width;
        private boolean zeroPad;

        public FormatDesc(Varargs varargs, LuaString luaString, int i) {
            int length = luaString.length();
            int iLuaByte = 0;
            int iLuaByte2 = 0;
            int i2 = i;
            boolean z = true;
            while (z) {
                if (i2 < length) {
                    iLuaByte2 = luaString.luaByte(i2);
                    i2++;
                } else {
                    iLuaByte2 = 0;
                }
                if (iLuaByte2 == 32) {
                    this.space = true;
                } else if (iLuaByte2 == 35) {
                    this.alternateForm = true;
                } else if (iLuaByte2 == 43) {
                    this.explicitPlus = true;
                } else if (iLuaByte2 == 45) {
                    this.leftAdjust = true;
                } else if (iLuaByte2 != 48) {
                    z = false;
                } else {
                    this.zeroPad = true;
                }
            }
            if (i2 - i > 5) {
                LuaValue.error("invalid format (repeated flags)");
            }
            this.width = -1;
            if (Character.isDigit((char) iLuaByte2)) {
                this.width = iLuaByte2 - 48;
                if (i2 < length) {
                    iLuaByte2 = luaString.luaByte(i2);
                    i2++;
                } else {
                    iLuaByte2 = 0;
                }
                if (Character.isDigit((char) iLuaByte2)) {
                    this.width = (this.width * 10) + (iLuaByte2 - 48);
                    if (i2 < length) {
                        iLuaByte2 = luaString.luaByte(i2);
                        i2++;
                    } else {
                        iLuaByte2 = 0;
                    }
                }
            }
            this.precision = -1;
            if (iLuaByte2 == 46) {
                if (i2 < length) {
                    iLuaByte2 = luaString.luaByte(i2);
                    i2++;
                } else {
                    iLuaByte2 = 0;
                }
                if (Character.isDigit((char) iLuaByte2)) {
                    this.precision = iLuaByte2 - 48;
                    if (i2 < length) {
                        iLuaByte2 = luaString.luaByte(i2);
                        i2++;
                    } else {
                        iLuaByte2 = 0;
                    }
                    if (Character.isDigit((char) iLuaByte2)) {
                        this.precision = (this.precision * 10) + (iLuaByte2 - 48);
                        if (i2 < length) {
                            iLuaByte = luaString.luaByte(i2);
                            i2++;
                        }
                        iLuaByte2 = iLuaByte;
                    }
                }
            }
            if (Character.isDigit((char) iLuaByte2)) {
                LuaValue.error("invalid format (width or precision too long)");
            }
            this.zeroPad &= !this.leftAdjust;
            this.conversion = iLuaByte2;
            this.length = i2 - i;
            this.src = luaString.substring(i - 1, i2).tojstring();
        }

        public void format(Buffer buffer, byte b) {
            buffer.append(b);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0021  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void format(vm2.Buffer r6, long r7) {
            /*
                r5 = this;
                r0 = 0
                int r0 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r0 != 0) goto Ld
                int r1 = r5.precision
                if (r1 != 0) goto Ld
                java.lang.String r7 = ""
                goto L2f
            Ld:
                int r1 = r5.conversion
                r2 = 88
                if (r1 == r2) goto L21
                r3 = 111(0x6f, float:1.56E-43)
                if (r1 == r3) goto L1e
                r3 = 120(0x78, float:1.68E-43)
                if (r1 == r3) goto L21
                r1 = 10
                goto L23
            L1e:
                r1 = 8
                goto L23
            L21:
                r1 = 16
            L23:
                java.lang.String r7 = java.lang.Long.toString(r7, r1)
                int r8 = r5.conversion
                if (r8 != r2) goto L2f
                java.lang.String r7 = r7.toUpperCase()
            L2f:
                int r8 = r7.length()
                if (r0 >= 0) goto L3b
                int r1 = r8 + (-1)
                r4 = r1
                r1 = r8
                r8 = r4
                goto L48
            L3b:
                boolean r1 = r5.explicitPlus
                if (r1 != 0) goto L46
                boolean r1 = r5.space
                if (r1 == 0) goto L44
                goto L46
            L44:
                r1 = r8
                goto L48
            L46:
                int r1 = r8 + 1
            L48:
                int r2 = r5.precision
                r3 = 0
                if (r2 <= r8) goto L4f
                int r2 = r2 - r8
                goto L5e
            L4f:
                r8 = -1
                if (r2 != r8) goto L5d
                boolean r8 = r5.zeroPad
                if (r8 == 0) goto L5d
                int r8 = r5.width
                if (r8 <= r1) goto L5d
                int r2 = r8 - r1
                goto L5e
            L5d:
                r2 = r3
            L5e:
                int r1 = r1 + r2
                int r8 = r5.width
                if (r8 <= r1) goto L65
                int r3 = r8 - r1
            L65:
                boolean r8 = r5.leftAdjust
                r1 = 32
                if (r8 != 0) goto L6e
                r5.pad(r6, r1, r3)
            L6e:
                if (r0 >= 0) goto L7d
                if (r2 <= 0) goto L8e
                r8 = 45
                r6.append(r8)
                r8 = 1
                java.lang.String r7 = r7.substring(r8)
                goto L8e
            L7d:
                boolean r8 = r5.explicitPlus
                if (r8 == 0) goto L87
                r8 = 43
                r6.append(r8)
                goto L8e
            L87:
                boolean r8 = r5.space
                if (r8 == 0) goto L8e
                r6.append(r1)
            L8e:
                if (r2 <= 0) goto L95
                r8 = 48
                r5.pad(r6, r8, r2)
            L95:
                r6.append(r7)
                boolean r7 = r5.leftAdjust
                if (r7 == 0) goto L9f
                r5.pad(r6, r1, r3)
            L9f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: vm2.lib.StringLib.FormatDesc.format(vm2.Buffer, long):void");
        }

        public void format(Buffer buffer, double d) {
            buffer.append(StringLib.this.format(this.src, d));
        }

        public void format(Buffer buffer, LuaString luaString) {
            int iIndexOf = luaString.indexOf((byte) 0, 0);
            if (iIndexOf != -1) {
                luaString = luaString.substring(0, iIndexOf);
            }
            buffer.append(luaString);
        }

        public final void pad(Buffer buffer, char c, int i) {
            byte b = (byte) c;
            while (true) {
                int i2 = i - 1;
                if (i <= 0) {
                    return;
                }
                buffer.append(b);
                i = i2;
            }
        }
    }

    public String format(String str, double d) {
        return String.valueOf(d);
    }

    public static final class gmatch extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return new GMatchAux(varargs, varargs.checkstring(1), varargs.checkstring(2));
        }
    }

    public static class GMatchAux extends VarArgFunction {
        private final MatchState ms;
        private final int srclen;
        private int soffset = 0;
        private int lastmatch = -1;

        public GMatchAux(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.srclen = luaString.length();
            this.ms = new MatchState(varargs, luaString, luaString2);
        }

        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            while (this.soffset <= this.srclen) {
                this.ms.reset();
                int iMatch = this.ms.match(this.soffset, 0);
                if (iMatch < 0 || iMatch == this.lastmatch) {
                    this.soffset++;
                } else {
                    int i = this.soffset;
                    this.soffset = iMatch;
                    this.lastmatch = iMatch;
                    return this.ms.push_captures(true, i, iMatch);
                }
            }
            return LuaValue.NIL;
        }
    }

    public static final class gsub extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            int length = luaStringCheckstring.length();
            LuaString luaStringCheckstring2 = varargs.checkstring(2);
            LuaValue luaValueArg = varargs.arg(3);
            int iOptint = varargs.optint(4, length + 1);
            int i = 0;
            int i2 = (luaStringCheckstring2.length() <= 0 || luaStringCheckstring2.charAt(0) != 94) ? 0 : 1;
            Buffer buffer = new Buffer(length);
            MatchState matchState = new MatchState(varargs, luaStringCheckstring, luaStringCheckstring2);
            int i3 = -1;
            int i4 = 0;
            while (i < iOptint) {
                matchState.reset();
                int iMatch = matchState.match(i4, i2);
                if (iMatch != -1 && iMatch != i3) {
                    i++;
                    matchState.add_value(buffer, i4, iMatch, luaValueArg);
                    i4 = iMatch;
                    i3 = i4;
                } else {
                    if (i4 >= length) {
                        break;
                    }
                    buffer.append((byte) luaStringCheckstring.luaByte(i4));
                    i4++;
                }
                if (i2 != 0) {
                    break;
                }
            }
            buffer.append(luaStringCheckstring.substring(i4, length));
            return LuaValue.varargsOf(buffer.tostring(), LuaValue.valueOf(i));
        }
    }

    public static final class len extends OneArgFunction {
        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return luaValue.checkstring().len();
        }
    }

    public static final class lower extends OneArgFunction {
        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toLowerCase());
        }
    }

    public static final class match extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            return StringLib.str_find_aux(varargs, false);
        }
    }

    public static final class rep extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            int length = luaStringCheckstring.length() * varargs.checkint(2);
            byte[] bArr = new byte[length];
            int length2 = luaStringCheckstring.length();
            for (int i = 0; i < length; i += length2) {
                luaStringCheckstring.copyInto(0, bArr, i, length2);
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class reverse extends OneArgFunction {
        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            LuaString luaStringCheckstring = luaValue.checkstring();
            int length = luaStringCheckstring.length();
            byte[] bArr = new byte[length];
            int i = length - 1;
            int i2 = 0;
            while (i2 < length) {
                bArr[i] = (byte) luaStringCheckstring.luaByte(i2);
                i2++;
                i--;
            }
            return LuaString.valueUsing(bArr);
        }
    }

    public static final class sub extends VarArgFunction {
        @Override // vm2.lib.VarArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public Varargs invoke(Varargs varargs) {
            LuaString luaStringCheckstring = varargs.checkstring(1);
            int length = luaStringCheckstring.length();
            int iPosrelat = StringLib.posrelat(varargs.checkint(2), length);
            int iPosrelat2 = StringLib.posrelat(varargs.optint(3, -1), length);
            if (iPosrelat < 1) {
                iPosrelat = 1;
            }
            if (iPosrelat2 <= length) {
                length = iPosrelat2;
            }
            if (iPosrelat <= length) {
                return luaStringCheckstring.substring(iPosrelat - 1, length);
            }
            return LuaValue.EMPTYSTRING;
        }
    }

    public static final class upper extends OneArgFunction {
        @Override // vm2.lib.OneArgFunction, vm2.lib.LibFunction, vm2.LuaValue
        public LuaValue call(LuaValue luaValue) {
            return LuaValue.valueOf(luaValue.checkjstring().toUpperCase());
        }
    }

    public static Varargs str_find_aux(Varargs varargs, boolean z) {
        LuaString luaStringCheckstring = varargs.checkstring(1);
        LuaString luaStringCheckstring2 = varargs.checkstring(2);
        int iOptint = varargs.optint(3, 1);
        if (iOptint > 0) {
            iOptint = Math.min(iOptint - 1, luaStringCheckstring.length());
        } else if (iOptint < 0) {
            iOptint = Math.max(0, luaStringCheckstring.length() + iOptint);
        }
        if (z && (varargs.arg(4).toboolean() || luaStringCheckstring2.indexOfAny(SPECIALS) == -1)) {
            int iIndexOf = luaStringCheckstring.indexOf(luaStringCheckstring2, iOptint);
            if (iIndexOf != -1) {
                return LuaValue.varargsOf(LuaValue.valueOf(iIndexOf + 1), LuaValue.valueOf(iIndexOf + luaStringCheckstring2.length()));
            }
        } else {
            MatchState matchState = new MatchState(varargs, luaStringCheckstring, luaStringCheckstring2);
            int i = (luaStringCheckstring2.length() <= 0 || luaStringCheckstring2.luaByte(0) != 94) ? 0 : 1;
            int i2 = i;
            while (true) {
                matchState.reset();
                int iMatch = matchState.match(iOptint, i2);
                if (iMatch != -1) {
                    if (z) {
                        return LuaValue.varargsOf(LuaValue.valueOf(iOptint + 1), LuaValue.valueOf(iMatch), matchState.push_captures(false, iOptint, iMatch));
                    }
                    return matchState.push_captures(true, iOptint, iMatch);
                }
                int i3 = iOptint + 1;
                if (iOptint >= luaStringCheckstring.length() || i != 0) {
                    break;
                }
                iOptint = i3;
            }
        }
        return LuaValue.NIL;
    }

    static {
        for (int i = 0; i < 128; i++) {
            char c = (char) i;
            byte[] bArr = CHAR_TABLE;
            byte b = (byte) (((c < ' ' || c == 127) ? 64 : 0) | (Character.isDigit(c) ? 8 : 0) | (Character.isLowerCase(c) ? 2 : 0) | (Character.isUpperCase(c) ? 4 : 0));
            bArr[i] = b;
            if ((c >= 'a' && c <= 'f') || ((c >= 'A' && c <= 'F') || (c >= '0' && c <= '9'))) {
                bArr[i] = (byte) (b | MASK_HEXDIGIT);
            }
            if ((c >= '!' && c <= '/') || ((c >= ':' && c <= '@') || ((c >= '[' && c <= '`') || (c >= '{' && c <= '~')))) {
                bArr[i] = (byte) (bArr[i] | MASK_PUNCT);
            }
            byte b2 = bArr[i];
            if ((b2 & 6) != 0) {
                bArr[i] = (byte) (b2 | MASK_ALPHA);
            }
        }
        byte[] bArr2 = CHAR_TABLE;
        bArr2[32] = MASK_SPACE;
        bArr2[13] = (byte) (bArr2[13] | MASK_SPACE);
        bArr2[10] = (byte) (bArr2[10] | MASK_SPACE);
        bArr2[9] = (byte) (bArr2[9] | MASK_SPACE);
        bArr2[11] = (byte) (bArr2[11] | MASK_SPACE);
        bArr2[12] = (byte) (bArr2[12] | MASK_SPACE);
    }

    public static class MatchState {
        final Varargs args;
        final LuaString p;
        final LuaString s;
        int level = 0;
        int[] cinit = new int[32];
        int[] clen = new int[32];
        int matchdepth = 200;

        public MatchState(Varargs varargs, LuaString luaString, LuaString luaString2) {
            this.s = luaString;
            this.p = luaString2;
            this.args = varargs;
        }

        public void reset() {
            this.level = 0;
            this.matchdepth = 200;
        }

        private void add_s(Buffer buffer, LuaString luaString, int i, int i2) {
            String str;
            int length = luaString.length();
            int i3 = 0;
            while (i3 < length) {
                byte bLuaByte = (byte) luaString.luaByte(i3);
                if (bLuaByte != 37) {
                    buffer.append(bLuaByte);
                } else {
                    int i4 = i3 + 1;
                    byte bLuaByte2 = (byte) (i4 < length ? luaString.luaByte(i4) : 0);
                    char c = (char) bLuaByte2;
                    if (!Character.isDigit(c)) {
                        if (bLuaByte2 != 37) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("invalid use of '%' in replacement string: after '%' must be '0'-'9' or '%', but found ");
                            if (i4 < length) {
                                str = "symbol '" + c + "' with code " + ((int) bLuaByte2) + " at pos " + (i3 + 2);
                            } else {
                                str = "end of string";
                            }
                            sb.append(str);
                            LuaValue.error(sb.toString());
                        }
                        buffer.append(bLuaByte2);
                    } else if (bLuaByte2 == 48) {
                        buffer.append(this.s.substring(i, i2));
                    } else {
                        buffer.append(push_onecapture(bLuaByte2 - 49, i, i2).strvalue());
                    }
                    i3 = i4;
                }
                i3++;
            }
        }

        public void add_value(Buffer buffer, int i, int i2, LuaValue luaValue) {
            LuaValue luaValueSubstring;
            int iType = luaValue.type();
            if (iType == 3) {
                luaValueSubstring = luaValue.get(push_onecapture(0, i, i2));
            } else if (iType == 4 || iType == 5) {
                add_s(buffer, luaValue.strvalue(), i, i2);
                return;
            } else if (iType == 7) {
                luaValueSubstring = luaValue.invoke(push_captures(true, i, i2)).arg1();
            } else {
                LuaValue.error("bad argument: string/function/table expected");
                return;
            }
            if (!luaValueSubstring.toboolean()) {
                luaValueSubstring = this.s.substring(i, i2);
            } else if (!luaValueSubstring.isstring()) {
                LuaValue.error("invalid replacement value (a " + luaValueSubstring.typename() + ")");
            }
            buffer.append(luaValueSubstring.strvalue());
        }

        public Varargs push_captures(boolean z, int i, int i2) {
            int i3 = this.level;
            if (i3 == 0 && z) {
                i3 = 1;
            }
            if (i3 == 0) {
                return LuaValue.NONE;
            }
            if (i3 == 1) {
                return push_onecapture(0, i, i2);
            }
            LuaValue[] luaValueArr = new LuaValue[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                luaValueArr[i4] = push_onecapture(i4, i, i2);
            }
            return LuaValue.varargsOf(luaValueArr);
        }

        private LuaValue push_onecapture(int i, int i2, int i3) {
            if (i >= this.level) {
                if (i == 0) {
                    return this.s.substring(i2, i3);
                }
                return LuaValue.error("invalid capture index %" + (i + 1));
            }
            int i4 = this.clen[i];
            if (i4 == -1) {
                return LuaValue.error("unfinished capture");
            }
            if (i4 == -2) {
                return LuaValue.valueOf(this.cinit[i] + 1);
            }
            int i5 = this.cinit[i];
            return this.s.substring(i5, i4 + i5);
        }

        private int check_capture(int i) {
            int i2 = i - 49;
            if (i2 >= 0 && i2 < this.level && this.clen[i2] != -1) {
                return i2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("invalid capture index %");
            sb.append(i - 48);
            LuaValue.error(sb.toString());
            return i2;
        }

        private int capture_to_close() {
            for (int i = this.level - 1; i >= 0; i--) {
                if (this.clen[i] == -1) {
                    return i;
                }
            }
            LuaValue.error("invalid pattern capture");
            return 0;
        }

        public int classend(int i) {
            int i2 = i + 1;
            int iLuaByte = this.p.luaByte(i);
            if (iLuaByte == 37) {
                if (i2 == this.p.length()) {
                    LuaValue.error("malformed pattern (ends with '%')");
                }
                return i + 2;
            }
            if (iLuaByte != 91) {
                return i2;
            }
            if (i2 != this.p.length() && this.p.luaByte(i2) == 94) {
                i2 = i + 2;
            }
            while (true) {
                if (i2 == this.p.length()) {
                    LuaValue.error("malformed pattern (missing ']')");
                }
                int i3 = i2 + 1;
                i2 = (this.p.luaByte(i2) != 37 || i3 >= this.p.length()) ? i3 : i2 + 2;
                if (i2 != this.p.length() && this.p.luaByte(i2) == 93) {
                    return i2 + 1;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static boolean match_class(int r5, int r6) {
            /*
                char r0 = (char) r6
                char r0 = java.lang.Character.toLowerCase(r0)
                byte[] r1 = vm2.lib.StringLib.CHAR_TABLE
                r1 = r1[r5]
                r2 = 97
                r3 = 0
                r4 = 1
                if (r0 == r2) goto L6e
                r2 = 103(0x67, float:1.44E-43)
                if (r0 == r2) goto L69
                r2 = 108(0x6c, float:1.51E-43)
                if (r0 == r2) goto L64
                r2 = 112(0x70, float:1.57E-43)
                if (r0 == r2) goto L5f
                r2 = 115(0x73, float:1.61E-43)
                if (r0 == r2) goto L5a
                r2 = 117(0x75, float:1.64E-43)
                if (r0 == r2) goto L55
                r2 = 122(0x7a, float:1.71E-43)
                if (r0 == r2) goto L52
                r2 = 99
                if (r0 == r2) goto L4d
                r2 = 100
                if (r0 == r2) goto L48
                r2 = 119(0x77, float:1.67E-43)
                if (r0 == r2) goto L43
                r2 = 120(0x78, float:1.68E-43)
                if (r0 == r2) goto L3b
                if (r6 != r5) goto L3a
                return r4
            L3a:
                return r3
            L3b:
                r5 = r1 & (-128(0xffffffffffffff80, float:NaN))
                if (r5 == 0) goto L41
            L3f:
                r5 = r4
                goto L73
            L41:
                r5 = r3
                goto L73
            L43:
                r5 = r1 & 9
                if (r5 == 0) goto L41
                goto L3f
            L48:
                r5 = r1 & 8
                if (r5 == 0) goto L41
                goto L3f
            L4d:
                r5 = r1 & 64
                if (r5 == 0) goto L41
                goto L3f
            L52:
                if (r5 != 0) goto L41
                goto L3f
            L55:
                r5 = r1 & 4
                if (r5 == 0) goto L41
                goto L3f
            L5a:
                r5 = r1 & 32
                if (r5 == 0) goto L41
                goto L3f
            L5f:
                r5 = r1 & 16
                if (r5 == 0) goto L41
                goto L3f
            L64:
                r5 = r1 & 2
                if (r5 == 0) goto L41
                goto L3f
            L69:
                r5 = r1 & 25
                if (r5 == 0) goto L41
                goto L3f
            L6e:
                r5 = r1 & 1
                if (r5 == 0) goto L41
                goto L3f
            L73:
                if (r0 != r6) goto L76
                return r5
            L76:
                if (r5 != 0) goto L79
                return r4
            L79:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: vm2.lib.StringLib.MatchState.match_class(int, int):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
        
            if (r5.p.luaByte(r1) != r6) goto L5;
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005a -> B:5:0x000f). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean matchbracketclass(int r6, int r7, int r8) {
            /*
                r5 = this;
                vm2.LuaString r0 = r5.p
                int r1 = r7 + 1
                int r0 = r0.luaByte(r1)
                r2 = 94
                r3 = 1
                if (r0 != r2) goto L11
                r7 = 0
                r0 = r7
            Lf:
                r7 = r1
                goto L12
            L11:
                r0 = r3
            L12:
                int r1 = r7 + 1
                if (r1 >= r8) goto L5d
                vm2.LuaString r2 = r5.p
                int r2 = r2.luaByte(r1)
                r4 = 37
                if (r2 != r4) goto L2f
                int r7 = r7 + 2
                vm2.LuaString r1 = r5.p
                int r1 = r1.luaByte(r7)
                boolean r1 = match_class(r6, r1)
                if (r1 == 0) goto L12
                goto L5c
            L2f:
                vm2.LuaString r2 = r5.p
                int r4 = r7 + 2
                int r2 = r2.luaByte(r4)
                r4 = 45
                if (r2 != r4) goto L54
                int r2 = r7 + 3
                if (r2 >= r8) goto L54
                vm2.LuaString r1 = r5.p
                int r7 = r7 + 1
                int r7 = r1.luaByte(r7)
                if (r7 > r6) goto L52
                vm2.LuaString r7 = r5.p
                int r7 = r7.luaByte(r2)
                if (r6 > r7) goto L52
                goto L5c
            L52:
                r7 = r2
                goto L12
            L54:
                vm2.LuaString r7 = r5.p
                int r7 = r7.luaByte(r1)
                if (r7 != r6) goto Lf
            L5c:
                return r0
            L5d:
                r6 = r0 ^ 1
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: vm2.lib.StringLib.MatchState.matchbracketclass(int, int, int):boolean");
        }

        public boolean singlematch(int i, int i2, int i3) {
            int iLuaByte = this.p.luaByte(i2);
            if (iLuaByte == 37) {
                return match_class(i, this.p.luaByte(i2 + 1));
            }
            if (iLuaByte == 46) {
                return true;
            }
            if (iLuaByte != 91) {
                return this.p.luaByte(i2) == i;
            }
            return matchbracketclass(i, i2, i3 - 1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x008e, code lost:
        
            r6.matchdepth++;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0093, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        
            return r7;
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x016f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0124  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x012d A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:6:0x000e, B:10:0x001c, B:71:0x010a, B:73:0x0116, B:77:0x0125, B:79:0x012d, B:90:0x0147, B:92:0x014c, B:97:0x0160, B:99:0x0168, B:100:0x016f, B:18:0x0036, B:21:0x003f, B:23:0x0049, B:25:0x0051, B:26:0x0059, B:27:0x005e, B:29:0x0068, B:30:0x006d, B:34:0x007b, B:36:0x0088, B:41:0x0096, B:42:0x009c, B:44:0x00a6, B:47:0x00b5, B:51:0x00c5, B:55:0x00d4, B:57:0x00dc, B:54:0x00ce, B:50:0x00bd, B:46:0x00b0, B:61:0x00e6, B:64:0x00ef, B:65:0x00f3, B:67:0x00fd), top: B:104:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0137  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int match(int r7, int r8) {
            /*
                Method dump skipped, instruction units count: 379
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: vm2.lib.StringLib.MatchState.match(int, int):int");
        }

        public int max_expand(int i, int i2, int i3) {
            int i4 = 0;
            while (true) {
                int i5 = i + i4;
                if (i5 >= this.s.length() || !singlematch(this.s.luaByte(i5), i2, i3)) {
                    break;
                }
                i4++;
            }
            while (i4 >= 0) {
                int iMatch = match(i + i4, i3 + 1);
                if (iMatch != -1) {
                    return iMatch;
                }
                i4--;
            }
            return -1;
        }

        public int min_expand(int i, int i2, int i3) {
            while (true) {
                int iMatch = match(i, i3 + 1);
                if (iMatch != -1) {
                    return iMatch;
                }
                if (i >= this.s.length() || !singlematch(this.s.luaByte(i), i2, i3)) {
                    break;
                }
                i++;
            }
            return -1;
        }

        public int start_capture(int i, int i2, int i3) {
            int i4 = this.level;
            if (i4 >= 32) {
                LuaValue.error("too many captures");
            }
            this.cinit[i4] = i;
            this.clen[i4] = i3;
            this.level = i4 + 1;
            int iMatch = match(i, i2);
            if (iMatch == -1) {
                this.level--;
            }
            return iMatch;
        }

        public int end_capture(int i, int i2) {
            int iCapture_to_close = capture_to_close();
            this.clen[iCapture_to_close] = i - this.cinit[iCapture_to_close];
            int iMatch = match(i, i2);
            if (iMatch == -1) {
                this.clen[iCapture_to_close] = -1;
            }
            return iMatch;
        }

        public int match_capture(int i, int i2) {
            int iCheck_capture = check_capture(i2);
            int i3 = this.clen[iCheck_capture];
            if (this.s.length() - i < i3) {
                return -1;
            }
            LuaString luaString = this.s;
            if (LuaString.equals(luaString, this.cinit[iCheck_capture], luaString, i, i3)) {
                return i + i3;
            }
            return -1;
        }

        public int matchbalance(int i, int i2) {
            int iLuaByte;
            int length = this.p.length();
            if (i2 == length || i2 + 1 == length) {
                LuaValue.error("malformed pattern (missing arguments to '%b')");
            }
            int length2 = this.s.length();
            if (i >= length2 || this.s.luaByte(i) != (iLuaByte = this.p.luaByte(i2))) {
                return -1;
            }
            int i3 = 1;
            int iLuaByte2 = this.p.luaByte(i2 + 1);
            while (true) {
                int i4 = i + 1;
                if (i4 >= length2) {
                    return -1;
                }
                if (this.s.luaByte(i4) == iLuaByte2) {
                    i3--;
                    if (i3 == 0) {
                        return i + 2;
                    }
                } else if (this.s.luaByte(i4) == iLuaByte) {
                    i3++;
                }
                i = i4;
            }
        }
    }
}
