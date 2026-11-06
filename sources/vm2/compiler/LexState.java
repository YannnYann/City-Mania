package vm2.compiler;

import com.ironsource.C3920x1;
import com.ironsource.R6;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import vm2.LocVars;
import vm2.Lua;
import vm2.LuaError;
import vm2.LuaInteger;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Prototype;
import vm2.compiler.FuncState;
import vm2.compiler.LuaC;
import vm2.lib.MathLib;

/* JADX INFO: loaded from: classes6.dex */
public class LexState extends Constants {
    private static final int EOZ = -1;
    static final int FIRST_RESERVED = 257;
    private static final int LUAI_MAXCCALLS = 200;
    private static final int LUA_COMPAT_LSTR = 1;
    private static final boolean LUA_COMPAT_VARARG = true;
    private static final int MAX_INT = 2147483645;
    static final int NO_JUMP = -1;
    static final int NUM_RESERVED = 22;
    static final int OPR_ADD = 0;
    static final int OPR_AND = 13;
    static final int OPR_CONCAT = 6;
    static final int OPR_DIV = 3;
    static final int OPR_EQ = 8;
    static final int OPR_GE = 12;
    static final int OPR_GT = 11;
    static final int OPR_LE = 10;
    static final int OPR_LEN = 2;
    static final int OPR_LT = 9;
    static final int OPR_MINUS = 0;
    static final int OPR_MOD = 4;
    static final int OPR_MUL = 2;
    static final int OPR_NE = 7;
    static final int OPR_NOBINOPR = 15;
    static final int OPR_NOT = 1;
    static final int OPR_NOUNOPR = 3;
    static final int OPR_OR = 14;
    static final int OPR_POW = 5;
    static final int OPR_SUB = 1;
    static final Hashtable RESERVED;
    protected static final String RESERVED_LOCAL_VAR_FOR_CONTROL = "(for control)";
    protected static final String RESERVED_LOCAL_VAR_FOR_GENERATOR = "(for generator)";
    protected static final String RESERVED_LOCAL_VAR_FOR_INDEX = "(for index)";
    protected static final String RESERVED_LOCAL_VAR_FOR_LIMIT = "(for limit)";
    protected static final String RESERVED_LOCAL_VAR_FOR_STATE = "(for state)";
    protected static final String RESERVED_LOCAL_VAR_FOR_STEP = "(for step)";
    protected static final String[] RESERVED_LOCAL_VAR_KEYWORDS = {RESERVED_LOCAL_VAR_FOR_CONTROL, RESERVED_LOCAL_VAR_FOR_GENERATOR, RESERVED_LOCAL_VAR_FOR_INDEX, RESERVED_LOCAL_VAR_FOR_LIMIT, RESERVED_LOCAL_VAR_FOR_STATE, RESERVED_LOCAL_VAR_FOR_STEP};
    private static final Hashtable RESERVED_LOCAL_VAR_KEYWORDS_TABLE = new Hashtable();
    static final int TK_AND = 257;
    static final int TK_BREAK = 258;
    static final int TK_CONCAT = 279;
    static final int TK_DBCOLON = 285;
    static final int TK_DO = 259;
    static final int TK_DOTS = 280;
    static final int TK_ELSE = 260;
    static final int TK_ELSEIF = 261;
    static final int TK_END = 262;
    static final int TK_EOS = 286;
    static final int TK_EQ = 281;
    static final int TK_FALSE = 263;
    static final int TK_FOR = 264;
    static final int TK_FUNCTION = 265;
    static final int TK_GE = 282;
    static final int TK_GOTO = 266;
    static final int TK_IF = 267;
    static final int TK_IN = 268;
    static final int TK_LE = 283;
    static final int TK_LOCAL = 269;
    static final int TK_NAME = 288;
    static final int TK_NE = 284;
    static final int TK_NIL = 270;
    static final int TK_NOT = 271;
    static final int TK_NUMBER = 287;
    static final int TK_OR = 272;
    static final int TK_REPEAT = 273;
    static final int TK_RETURN = 274;
    static final int TK_STRING = 289;
    static final int TK_THEN = 275;
    static final int TK_TRUE = 276;
    static final int TK_UNTIL = 277;
    static final int TK_WHILE = 278;
    private static final int UCHAR_MAX = 255;
    static final int UNARY_PRIORITY = 8;
    static final int VCALL = 12;
    static final int VFALSE = 3;
    static final int VINDEXED = 9;
    static final int VJMP = 10;
    static final int VK = 4;
    static final int VKNUM = 5;
    static final int VLOCAL = 7;
    static final int VNIL = 1;
    static final int VNONRELOC = 6;
    static final int VRELOCABLE = 11;
    static final int VTRUE = 2;
    static final int VUPVAL = 8;
    static final int VVARARG = 13;
    static final int VVOID = 0;
    static final String[] luaX_tokens;
    static Priority[] priority;
    LuaC.CompileState L;
    int current;
    byte decpoint;
    LuaString envn;
    FuncState fs;
    int lastline;
    int linenumber;
    final Token lookahead;
    int nbuff;
    LuaString source;
    final Token t;
    InputStream z;
    Dyndata dyd = new Dyndata();
    char[] buff = new char[32];

    public static class ConsControl {
        int na;
        int nh;
        expdesc t;
        int tostore;
        expdesc v = new expdesc();
    }

    public static class Dyndata {
        Vardesc[] actvar;
        Labeldesc[] gt;
        Labeldesc[] label;
        int n_actvar = 0;
        int n_gt = 0;
        int n_label = 0;
    }

    public static class LHS_assign {
        LHS_assign prev;
        expdesc v = new expdesc();
    }

    private boolean isalnum(int i) {
        if (i >= 48 && i <= 57) {
            return true;
        }
        if (i < 97 || i > 122) {
            return (i >= 65 && i <= 90) || i == 95;
        }
        return true;
    }

    private boolean isalpha(int i) {
        if (i < 97 || i > 122) {
            return i >= 65 && i <= 90;
        }
        return true;
    }

    private static boolean iscntrl(int i) {
        return i < 32;
    }

    private boolean isdigit(int i) {
        return i >= 48 && i <= 57;
    }

    private boolean isspace(int i) {
        return i >= 0 && i <= 32;
    }

    private boolean isxdigit(int i) {
        if (i >= 48 && i <= 57) {
            return true;
        }
        if (i < 97 || i > 102) {
            return i >= 65 && i <= 70;
        }
        return true;
    }

    public static int luaO_int2fb(int i) {
        int i2 = 0;
        while (i >= 16) {
            i = (i + 1) >> 1;
            i2++;
        }
        if (i < 8) {
            return i;
        }
        return (i - 8) | ((i2 + 1) << 3);
    }

    public static final boolean vkisinreg(int i) {
        return i == 6 || i == 7;
    }

    public static final boolean vkisvar(int i) {
        return 7 <= i && i <= 9;
    }

    public int getbinopr(int i) {
        if (i == 37) {
            return 4;
        }
        if (i == 45) {
            return 1;
        }
        if (i == 47) {
            return 3;
        }
        if (i == 60) {
            return 9;
        }
        if (i == 62) {
            return 11;
        }
        if (i == 94) {
            return 5;
        }
        if (i == 257) {
            return 13;
        }
        if (i == TK_OR) {
            return 14;
        }
        if (i == TK_CONCAT) {
            return 6;
        }
        if (i == 42) {
            return 2;
        }
        if (i == 43) {
            return 0;
        }
        switch (i) {
            case TK_EQ /* 281 */:
                return 8;
            case TK_GE /* 282 */:
                return 12;
            case TK_LE /* 283 */:
                return 10;
            case TK_NE /* 284 */:
                return 7;
            default:
                return 15;
        }
    }

    public int getunopr(int i) {
        if (i == 35) {
            return 2;
        }
        if (i != 45) {
            return i != TK_NOT ? 3 : 1;
        }
        return 0;
    }

    public boolean hasmultret(int i) {
        return i == 12 || i == 13;
    }

    public int hexvalue(int i) {
        return i <= 57 ? i - 48 : i <= 70 ? i - 55 : i - 87;
    }

    static {
        int i = 0;
        while (true) {
            String[] strArr = RESERVED_LOCAL_VAR_KEYWORDS;
            if (i >= strArr.length) {
                break;
            }
            RESERVED_LOCAL_VAR_KEYWORDS_TABLE.put(strArr[i], Boolean.TRUE);
            i++;
        }
        luaX_tokens = new String[]{"and", "break", R6.w1, "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "..", "...", "==", ">=", "<=", "~=", "::", "<eos>", "<number>", "<name>", "<string>", "<eof>"};
        RESERVED = new Hashtable();
        for (int i2 = 0; i2 < 22; i2++) {
            RESERVED.put(LuaValue.valueOf(luaX_tokens[i2]), Integer.valueOf(i2 + 257));
        }
        priority = new Priority[]{new Priority(6, 6), new Priority(6, 6), new Priority(7, 7), new Priority(7, 7), new Priority(7, 7), new Priority(10, 9), new Priority(5, 4), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(3, 3), new Priority(2, 2), new Priority(1, 1)};
    }

    private static final String LUA_QS(String str) {
        return "'" + str + "'";
    }

    private static final String LUA_QL(Object obj) {
        return LUA_QS(String.valueOf(obj));
    }

    public static boolean isReservedKeyword(String str) {
        return RESERVED_LOCAL_VAR_KEYWORDS_TABLE.containsKey(str);
    }

    public static class SemInfo {
        LuaValue r;
        LuaString ts;

        private SemInfo() {
        }
    }

    public static class Token {
        final SemInfo seminfo;
        int token;

        private Token() {
            this.seminfo = new SemInfo();
        }

        public void set(Token token) {
            this.token = token.token;
            SemInfo semInfo = this.seminfo;
            SemInfo semInfo2 = token.seminfo;
            semInfo.r = semInfo2.r;
            semInfo.ts = semInfo2.ts;
        }
    }

    public LexState(LuaC.CompileState compileState, InputStream inputStream) {
        this.t = new Token();
        this.lookahead = new Token();
        this.z = inputStream;
        this.L = compileState;
    }

    public void nextChar() {
        try {
            this.current = this.z.read();
        } catch (IOException e) {
            e.printStackTrace();
            this.current = -1;
        }
    }

    public boolean currIsNewline() {
        int i = this.current;
        return i == 10 || i == 13;
    }

    public void save_and_next() {
        save(this.current);
        nextChar();
    }

    public void save(int i) {
        char[] cArr = this.buff;
        if (cArr == null || this.nbuff + 1 > cArr.length) {
            this.buff = Constants.realloc(cArr, (this.nbuff * 2) + 1);
        }
        char[] cArr2 = this.buff;
        int i2 = this.nbuff;
        this.nbuff = i2 + 1;
        cArr2[i2] = (char) i;
    }

    public String token2str(int i) {
        if (i < 257) {
            if (iscntrl(i)) {
                return this.L.pushfstring("char(" + i + ")");
            }
            return this.L.pushfstring(String.valueOf((char) i));
        }
        return luaX_tokens[i - 257];
    }

    public String txtToken(int i) {
        switch (i) {
            case TK_NUMBER /* 287 */:
            case TK_NAME /* 288 */:
            case TK_STRING /* 289 */:
                return new String(this.buff, 0, this.nbuff);
            default:
                return token2str(i);
        }
    }

    public void lexerror(String str, int i) {
        String strChunkid = Lua.chunkid(this.source.tojstring());
        this.L.pushfstring(strChunkid + ":" + this.linenumber + ": " + str);
        if (i != 0) {
            this.L.pushfstring("syntax error: " + str + " near " + txtToken(i));
        }
        throw new LuaError(strChunkid + ":" + this.linenumber + ": " + str);
    }

    public void syntaxerror(String str) {
        lexerror(str, this.t.token);
    }

    public LuaString newstring(String str) {
        return this.L.newTString(str);
    }

    public LuaString newstring(char[] cArr, int i, int i2) {
        return this.L.newTString(new String(cArr, i, i2));
    }

    public void inclinenumber() {
        int i = this.current;
        Constants._assert(currIsNewline());
        nextChar();
        if (currIsNewline() && this.current != i) {
            nextChar();
        }
        int i2 = this.linenumber + 1;
        this.linenumber = i2;
        if (i2 >= MAX_INT) {
            syntaxerror("chunk has too many lines");
        }
    }

    public void setinput(LuaC.CompileState compileState, int i, InputStream inputStream, LuaString luaString) {
        this.decpoint = (byte) 46;
        this.L = compileState;
        this.lookahead.token = TK_EOS;
        this.z = inputStream;
        this.fs = null;
        this.linenumber = 1;
        this.lastline = 1;
        this.source = luaString;
        this.envn = LuaValue.ENV;
        this.nbuff = 0;
        this.current = i;
        skipShebang();
    }

    private void skipShebang() {
        if (this.current == 35) {
            while (!currIsNewline() && this.current != -1) {
                nextChar();
            }
        }
    }

    public boolean check_next(String str) {
        if (str.indexOf(this.current) < 0) {
            return false;
        }
        save_and_next();
        return true;
    }

    public void buffreplace(char c, char c2) {
        int i = this.nbuff;
        char[] cArr = this.buff;
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            if (cArr[i] == c) {
                cArr[i] = c2;
            }
        }
    }

    public LuaValue strx2number(String str, SemInfo semInfo) {
        double d;
        int i;
        char c;
        boolean z;
        char[] charArray = str.toCharArray();
        int i2 = 0;
        int i3 = 0;
        while (i3 < charArray.length && isspace(charArray[i3])) {
            i3++;
        }
        if (i3 >= charArray.length || charArray[i3] != '-') {
            d = 1.0d;
        } else {
            i3++;
            d = -1.0d;
        }
        if (i3 + 2 >= charArray.length) {
            return LuaValue.ZERO;
        }
        int i4 = i3 + 1;
        if (charArray[i3] != '0') {
            return LuaValue.ZERO;
        }
        char c2 = charArray[i4];
        if (c2 != 'x' && c2 != 'X') {
            return LuaValue.ZERO;
        }
        int i5 = i3 + 2;
        double dHexvalue = 0.0d;
        while (i5 < charArray.length && isxdigit(charArray[i5])) {
            dHexvalue = (dHexvalue * 16.0d) + ((double) hexvalue(charArray[i5]));
            i5++;
        }
        if (i5 >= charArray.length || charArray[i5] != '.') {
            i = 0;
        } else {
            i5++;
            i = 0;
            while (i5 < charArray.length && isxdigit(charArray[i5])) {
                dHexvalue = (dHexvalue * 16.0d) + ((double) hexvalue(charArray[i5]));
                i -= 4;
                i5++;
            }
        }
        if (i5 < charArray.length && ((c = charArray[i5]) == 'p' || c == 'P')) {
            int i6 = i5 + 1;
            if (i6 >= charArray.length || charArray[i6] != '-') {
                z = false;
            } else {
                i6 = i5 + 2;
                z = true;
            }
            while (i6 < charArray.length && isdigit(charArray[i6])) {
                i2 = ((i2 * 10) + charArray[i6]) - 48;
                i6++;
            }
            if (z) {
                i2 = -i2;
            }
            i += i2;
        }
        return LuaValue.valueOf(d * dHexvalue * MathLib.dpow_d(2.0d, i));
    }

    public boolean str2d(String str, SemInfo semInfo) {
        if (str.indexOf(110) >= 0 || str.indexOf(78) >= 0) {
            semInfo.r = LuaValue.ZERO;
            return true;
        }
        if (str.indexOf(120) >= 0 || str.indexOf(88) >= 0) {
            semInfo.r = strx2number(str, semInfo);
            return true;
        }
        try {
            semInfo.r = LuaValue.valueOf(Double.parseDouble(str.trim()));
            return true;
        } catch (NumberFormatException e) {
            lexerror("malformed number (" + e.getMessage() + ")", TK_NUMBER);
            return true;
        }
    }

    public void read_numeral(SemInfo semInfo) {
        String str;
        int i = this.current;
        Constants._assert(isdigit(i));
        save_and_next();
        if (i == 48 && check_next("Xx")) {
            str = "Pp";
        } else {
            str = "Ee";
        }
        while (true) {
            if (check_next(str)) {
                check_next("+-");
            }
            if (isxdigit(this.current) || this.current == 46) {
                save_and_next();
            } else {
                str2d(new String(this.buff, 0, this.nbuff), semInfo);
                return;
            }
        }
    }

    public int skip_sep() {
        int i;
        int i2 = this.current;
        int i3 = 0;
        Constants._assert(i2 == 91 || i2 == 93);
        save_and_next();
        while (true) {
            i = this.current;
            if (i != 61) {
                break;
            }
            save_and_next();
            i3++;
        }
        return i == i2 ? i3 : (-i3) - 1;
    }

    public void read_long_string(SemInfo semInfo, int i) {
        String str;
        save_and_next();
        if (currIsNewline()) {
            inclinenumber();
        }
        boolean z = false;
        while (!z) {
            int i2 = this.current;
            if (i2 == -1) {
                if (semInfo != null) {
                    str = "unfinished long string";
                } else {
                    str = "unfinished long comment";
                }
                lexerror(str, TK_EOS);
            } else if (i2 == 10 || i2 == 13) {
                save(10);
                inclinenumber();
                if (semInfo == null) {
                    this.nbuff = 0;
                }
            } else if (i2 != 91) {
                if (i2 != 93) {
                    if (semInfo != null) {
                        save_and_next();
                    } else {
                        nextChar();
                    }
                } else if (skip_sep() == i) {
                    save_and_next();
                    z = true;
                }
            } else if (skip_sep() == i) {
                save_and_next();
                if (i == 0) {
                    lexerror("nesting of [[...]] is deprecated", 91);
                }
            }
        }
        if (semInfo != null) {
            int i3 = i + 2;
            semInfo.ts = this.L.newTString(LuaString.valueOf(this.buff, i3, this.nbuff - (i3 * 2)));
        }
    }

    public int readhexaesc() {
        nextChar();
        int i = this.current;
        nextChar();
        int i2 = this.current;
        if (!isxdigit(i) || !isxdigit(i2)) {
            lexerror("hexadecimal digit expected 'x" + ((char) i) + ((char) i2), TK_STRING);
        }
        return (hexvalue(i) << 4) + hexvalue(i2);
    }

    public void read_string(int i, SemInfo semInfo) {
        save_and_next();
        while (true) {
            int i2 = this.current;
            if (i2 == i) {
                save_and_next();
                semInfo.ts = this.L.newTString(LuaString.valueOf(this.buff, 1, this.nbuff - 2));
                return;
            }
            if (i2 != -1) {
                int i3 = 10;
                if (i2 == 10 || i2 == 13) {
                    lexerror("unfinished string", TK_STRING);
                } else if (i2 == 92) {
                    nextChar();
                    int i4 = this.current;
                    if (i4 != -1) {
                        if (i4 == 10 || i4 == 13) {
                            save(10);
                            inclinenumber();
                        } else {
                            if (i4 == 102) {
                                i3 = 12;
                            } else if (i4 != 110) {
                                if (i4 == 114) {
                                    i3 = 13;
                                } else if (i4 == 116) {
                                    i3 = 9;
                                } else if (i4 == 118) {
                                    i3 = 11;
                                } else if (i4 == 120) {
                                    i3 = readhexaesc();
                                } else if (i4 == 122) {
                                    nextChar();
                                    while (isspace(this.current)) {
                                        if (currIsNewline()) {
                                            inclinenumber();
                                        } else {
                                            nextChar();
                                        }
                                    }
                                } else if (i4 == 97) {
                                    i3 = 7;
                                } else if (i4 == 98) {
                                    i3 = 8;
                                } else if (!isdigit(i4)) {
                                    save_and_next();
                                } else {
                                    int i5 = 0;
                                    int i6 = 0;
                                    do {
                                        i5 = (i5 * 10) + (this.current - 48);
                                        nextChar();
                                        i6++;
                                        if (i6 >= 3) {
                                            break;
                                        }
                                    } while (isdigit(this.current));
                                    if (i5 > 255) {
                                        lexerror("escape sequence too large", TK_STRING);
                                    }
                                    save(i5);
                                }
                            }
                            save(i3);
                            nextChar();
                        }
                    }
                } else {
                    save_and_next();
                }
            } else {
                lexerror("unfinished string", TK_EOS);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0127, code lost:
    
        read_string(r1, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x012a, code lost:
    
        return vm2.compiler.LexState.TK_STRING;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int llex(vm2.compiler.LexState.SemInfo r7) {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.LexState.llex(vm2.compiler.LexState$SemInfo):int");
    }

    public void next() {
        this.lastline = this.linenumber;
        Token token = this.lookahead;
        if (token.token != TK_EOS) {
            this.t.set(token);
            this.lookahead.token = TK_EOS;
        } else {
            Token token2 = this.t;
            token2.token = llex(token2.seminfo);
        }
    }

    public void lookahead() {
        Constants._assert(this.lookahead.token == TK_EOS);
        Token token = this.lookahead;
        token.token = llex(token.seminfo);
    }

    public static class expdesc {
        int k;
        final U u = new U();
        final IntPtr t = new IntPtr();
        final IntPtr f = new IntPtr();

        public static class U {
            private LuaValue _nval;
            short ind_idx;
            short ind_t;
            short ind_vt;

            /* JADX INFO: renamed from: info, reason: collision with root package name */
            int f3934info;

            public void setNval(LuaValue luaValue) {
                this._nval = luaValue;
            }

            public LuaValue nval() {
                LuaValue luaValue = this._nval;
                return luaValue == null ? LuaInteger.valueOf(this.f3934info) : luaValue;
            }
        }

        public void init(int i, int i2) {
            this.f.i = -1;
            this.t.i = -1;
            this.k = i;
            this.u.f3934info = i2;
        }

        public boolean hasjumps() {
            return this.t.i != this.f.i;
        }

        public boolean isnumeral() {
            return this.k == 5 && this.t.i == -1 && this.f.i == -1;
        }

        public void setvalue(expdesc expdescVar) {
            this.f.i = expdescVar.f.i;
            this.k = expdescVar.k;
            this.t.i = expdescVar.t.i;
            this.u._nval = expdescVar.u._nval;
            U u = this.u;
            U u2 = expdescVar.u;
            u.ind_idx = u2.ind_idx;
            u.ind_t = u2.ind_t;
            u.ind_vt = u2.ind_vt;
            u.f3934info = u2.f3934info;
        }
    }

    public static class Vardesc {
        final short idx;

        public Vardesc(int i) {
            this.idx = (short) i;
        }
    }

    public static class Labeldesc {
        int line;
        short nactvar;
        LuaString name;
        int pc;

        public Labeldesc(LuaString luaString, int i, int i2, short s) {
            this.name = luaString;
            this.pc = i;
            this.line = i2;
            this.nactvar = s;
        }
    }

    public void anchor_token() {
        Constants._assert(this.fs != null || this.t.token == TK_EOS);
        Token token = this.t;
        int i = token.token;
        if (i == TK_NAME || i == TK_STRING) {
            this.L.cachedLuaString(token.seminfo.ts);
        }
    }

    public void semerror(String str) {
        this.t.token = 0;
        syntaxerror(str);
    }

    public void error_expected(int i) {
        syntaxerror(this.L.pushfstring(LUA_QS(token2str(i)) + " expected"));
    }

    public boolean testnext(int i) {
        if (this.t.token != i) {
            return false;
        }
        next();
        return true;
    }

    public void check(int i) {
        if (this.t.token != i) {
            error_expected(i);
        }
    }

    public void checknext(int i) {
        check(i);
        next();
    }

    public void check_condition(boolean z, String str) {
        if (z) {
            return;
        }
        syntaxerror(str);
    }

    public void check_match(int i, int i2, int i3) {
        if (testnext(i)) {
            return;
        }
        if (i3 == this.linenumber) {
            error_expected(i);
            return;
        }
        syntaxerror(this.L.pushfstring(LUA_QS(token2str(i)) + " expected (to close " + LUA_QS(token2str(i2)) + " at line " + i3 + ")"));
    }

    public LuaString str_checkname() {
        check(TK_NAME);
        LuaString luaString = this.t.seminfo.ts;
        next();
        return luaString;
    }

    public void codestring(expdesc expdescVar, LuaString luaString) {
        expdescVar.init(4, this.fs.stringK(luaString));
    }

    public void checkname(expdesc expdescVar) {
        codestring(expdescVar, str_checkname());
    }

    public int registerlocalvar(LuaString luaString) {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f;
        LocVars[] locVarsArr = prototype.locvars;
        if (locVarsArr == null || funcState.nlocvars + 1 > locVarsArr.length) {
            prototype.locvars = Constants.realloc(locVarsArr, (funcState.nlocvars * 2) + 1);
        }
        prototype.locvars[funcState.nlocvars] = new LocVars(luaString, 0, 0);
        short s = funcState.nlocvars;
        funcState.nlocvars = (short) (s + 1);
        return s;
    }

    public void new_localvar(LuaString luaString) {
        int iRegisterlocalvar = registerlocalvar(luaString);
        this.fs.checklimit(this.dyd.n_actvar + 1, 200, "local variables");
        Dyndata dyndata = this.dyd;
        Vardesc[] vardescArr = dyndata.actvar;
        if (vardescArr == null || dyndata.n_actvar + 1 > vardescArr.length) {
            dyndata.actvar = Constants.realloc(vardescArr, Math.max(1, dyndata.n_actvar * 2));
        }
        Dyndata dyndata2 = this.dyd;
        Vardesc[] vardescArr2 = dyndata2.actvar;
        int i = dyndata2.n_actvar;
        dyndata2.n_actvar = i + 1;
        vardescArr2[i] = new Vardesc(iRegisterlocalvar);
    }

    public void new_localvarliteral(String str) {
        new_localvar(newstring(str));
    }

    public void adjustlocalvars(int i) {
        FuncState funcState = this.fs;
        funcState.nactvar = (short) (funcState.nactvar + i);
        while (i > 0) {
            funcState.getlocvar(funcState.nactvar - i).startpc = funcState.pc;
            i--;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void removevars(int i) {
        FuncState funcState = this.fs;
        while (true) {
            short s = funcState.nactvar;
            if (s <= i) {
                return;
            }
            short s2 = (short) (s - 1);
            funcState.nactvar = s2;
            funcState.getlocvar(s2).endpc = funcState.pc;
        }
    }

    public void singlevar(expdesc expdescVar) {
        LuaString luaStringStr_checkname = str_checkname();
        FuncState funcState = this.fs;
        boolean z = true;
        if (FuncState.singlevaraux(funcState, luaStringStr_checkname, expdescVar, 1) == 0) {
            expdesc expdescVar2 = new expdesc();
            FuncState.singlevaraux(funcState, this.envn, expdescVar, 1);
            int i = expdescVar.k;
            if (i != 7 && i != 8) {
                z = false;
            }
            Constants._assert(z);
            codestring(expdescVar2, luaStringStr_checkname);
            funcState.indexed(expdescVar, expdescVar2);
        }
    }

    public void adjust_assign(int i, int i2, expdesc expdescVar) {
        FuncState funcState = this.fs;
        int i3 = i - i2;
        if (hasmultret(expdescVar.k)) {
            int i4 = i3 + 1;
            if (i4 < 0) {
                i4 = 0;
            }
            funcState.setreturns(expdescVar, i4);
            if (i4 > 1) {
                funcState.reserveregs(i4 - 1);
                return;
            }
            return;
        }
        if (expdescVar.k != 0) {
            funcState.exp2nextreg(expdescVar);
        }
        if (i3 > 0) {
            short s = funcState.freereg;
            funcState.reserveregs(i3);
            funcState.nil(s, i3);
        }
    }

    public void enterlevel() {
        LuaC.CompileState compileState = this.L;
        int i = compileState.nCcalls + 1;
        compileState.nCcalls = i;
        if (i > 200) {
            lexerror("chunk has too many syntax levels", 0);
        }
    }

    public void leavelevel() {
        LuaC.CompileState compileState = this.L;
        compileState.nCcalls--;
    }

    public void closegoto(int i, Labeldesc labeldesc) {
        FuncState funcState = this.fs;
        Labeldesc[] labeldescArr = this.dyd.gt;
        Labeldesc labeldesc2 = labeldescArr[i];
        Constants._assert(labeldesc2.name.eq_b(labeldesc.name));
        short s = labeldesc2.nactvar;
        if (s < labeldesc.nactvar) {
            LuaString luaString = funcState.getlocvar(s).varname;
            semerror(this.L.pushfstring("<goto " + labeldesc2.name + "> at line " + labeldesc2.line + " jumps into the scope of local '" + luaString.tojstring() + "'"));
        }
        funcState.patchlist(labeldesc2.pc, labeldesc.pc);
        System.arraycopy(labeldescArr, i + 1, labeldescArr, i, (this.dyd.n_gt - i) - 1);
        Dyndata dyndata = this.dyd;
        int i2 = dyndata.n_gt - 1;
        dyndata.n_gt = i2;
        labeldescArr[i2] = null;
    }

    public boolean findlabel(int i) {
        FuncState.BlockCnt blockCnt = this.fs.bl;
        Dyndata dyndata = this.dyd;
        Labeldesc labeldesc = dyndata.gt[i];
        for (int i2 = blockCnt.firstlabel; i2 < dyndata.n_label; i2++) {
            Labeldesc labeldesc2 = dyndata.label[i2];
            if (labeldesc2.name.eq_b(labeldesc.name)) {
                short s = labeldesc.nactvar;
                short s2 = labeldesc2.nactvar;
                if (s > s2 && (blockCnt.upval || dyndata.n_label > blockCnt.firstlabel)) {
                    this.fs.patchclose(labeldesc.pc, s2);
                }
                closegoto(i, labeldesc2);
                return true;
            }
        }
        return false;
    }

    public int newlabelentry(Labeldesc[] labeldescArr, int i, LuaString luaString, int i2, int i3) {
        labeldescArr[i] = new Labeldesc(luaString, i3, i2, this.fs.nactvar);
        return i;
    }

    public void findgotos(Labeldesc labeldesc) {
        Labeldesc[] labeldescArr = this.dyd.gt;
        int i = this.fs.bl.firstgoto;
        while (i < this.dyd.n_gt) {
            if (labeldescArr[i].name.eq_b(labeldesc.name)) {
                closegoto(i, labeldesc);
            } else {
                i++;
            }
        }
    }

    public void breaklabel() {
        LuaString luaStringValueOf = LuaString.valueOf("break");
        Dyndata dyndata = this.dyd;
        Labeldesc[] labeldescArrGrow = Constants.grow(dyndata.label, dyndata.n_label + 1);
        dyndata.label = labeldescArrGrow;
        Dyndata dyndata2 = this.dyd;
        int i = dyndata2.n_label;
        dyndata2.n_label = i + 1;
        findgotos(this.dyd.label[newlabelentry(labeldescArrGrow, i, luaStringValueOf, 0, this.fs.pc)]);
    }

    public void undefgoto(Labeldesc labeldesc) {
        String str;
        LuaC.CompileState compileState = this.L;
        if (isReservedKeyword(labeldesc.name.tojstring())) {
            str = "<" + labeldesc.name + "> at line " + labeldesc.line + " not inside a loop";
        } else {
            str = "no visible label '" + labeldesc.name + "' for <goto> at line " + labeldesc.line;
        }
        semerror(compileState.pushfstring(str));
    }

    public Prototype addprototype() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f;
        Prototype[] prototypeArr = prototype.p;
        if (prototypeArr == null || funcState.np >= prototypeArr.length) {
            prototype.p = Constants.realloc(prototypeArr, Math.max(1, funcState.np * 2));
        }
        Prototype[] prototypeArr2 = prototype.p;
        FuncState funcState2 = this.fs;
        int i = funcState2.np;
        funcState2.np = i + 1;
        Prototype prototype2 = new Prototype();
        prototypeArr2[i] = prototype2;
        return prototype2;
    }

    public void codeclosure(expdesc expdescVar) {
        FuncState funcState = this.fs.prev;
        expdescVar.init(11, funcState.codeABx(37, 0, funcState.np - 1));
        funcState.exp2nextreg(expdescVar);
    }

    public void open_func(FuncState funcState, FuncState.BlockCnt blockCnt) {
        funcState.prev = this.fs;
        funcState.ls = this;
        this.fs = funcState;
        funcState.pc = 0;
        funcState.lasttarget = -1;
        funcState.jpc = new IntPtr(-1);
        funcState.freereg = (short) 0;
        funcState.nk = 0;
        funcState.np = 0;
        funcState.nups = (short) 0;
        funcState.nlocvars = (short) 0;
        funcState.nactvar = (short) 0;
        funcState.firstlocal = this.dyd.n_actvar;
        funcState.bl = null;
        Prototype prototype = funcState.f;
        prototype.source = this.source;
        prototype.maxstacksize = 2;
        funcState.enterblock(blockCnt, false);
    }

    public void close_func() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f;
        funcState.ret(0, 0);
        funcState.leaveblock();
        prototype.code = Constants.realloc(prototype.code, funcState.pc);
        prototype.lineinfo = Constants.realloc(prototype.lineinfo, funcState.pc);
        prototype.k = Constants.realloc(prototype.k, funcState.nk);
        prototype.p = Constants.realloc(prototype.p, funcState.np);
        prototype.locvars = Constants.realloc(prototype.locvars, funcState.nlocvars);
        prototype.upvalues = Constants.realloc(prototype.upvalues, funcState.nups);
        Constants._assert(funcState.bl == null);
        this.fs = funcState.prev;
    }

    public void fieldsel(expdesc expdescVar) {
        FuncState funcState = this.fs;
        expdesc expdescVar2 = new expdesc();
        funcState.exp2anyregup(expdescVar);
        next();
        checkname(expdescVar2);
        funcState.indexed(expdescVar, expdescVar2);
    }

    public void yindex(expdesc expdescVar) {
        next();
        expr(expdescVar);
        this.fs.exp2val(expdescVar);
        checknext(93);
    }

    public void recfield(ConsControl consControl) {
        FuncState funcState = this.fs;
        short s = funcState.freereg;
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        if (this.t.token == TK_NAME) {
            funcState.checklimit(consControl.nh, MAX_INT, "items in a constructor");
            checkname(expdescVar);
        } else {
            yindex(expdescVar);
        }
        consControl.nh++;
        checknext(61);
        int iExp2RK = funcState.exp2RK(expdescVar);
        expr(expdescVar2);
        funcState.codeABC(10, consControl.t.u.f3934info, iExp2RK, funcState.exp2RK(expdescVar2));
        funcState.freereg = s;
    }

    public void listfield(ConsControl consControl) {
        expr(consControl.v);
        this.fs.checklimit(consControl.na, MAX_INT, "items in a constructor");
        consControl.na++;
        consControl.tostore++;
    }

    public void constructor(expdesc expdescVar) {
        FuncState funcState = this.fs;
        int i = this.linenumber;
        int iCodeABC = funcState.codeABC(11, 0, 0, 0);
        ConsControl consControl = new ConsControl();
        consControl.tostore = 0;
        consControl.nh = 0;
        consControl.na = 0;
        consControl.t = expdescVar;
        expdescVar.init(11, iCodeABC);
        consControl.v.init(0, 0);
        funcState.exp2nextreg(expdescVar);
        checknext(Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        while (true) {
            Constants._assert(consControl.v.k == 0 || consControl.tostore > 0);
            if (this.t.token != 125) {
                funcState.closelistfield(consControl);
                int i2 = this.t.token;
                if (i2 == 91) {
                    recfield(consControl);
                } else if (i2 == TK_NAME) {
                    lookahead();
                    if (this.lookahead.token != 61) {
                        listfield(consControl);
                    } else {
                        recfield(consControl);
                    }
                } else {
                    listfield(consControl);
                }
                if (!testnext(44) && !testnext(59)) {
                    break;
                }
            } else {
                break;
            }
        }
        check_match(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, i);
        funcState.lastlistfield(consControl);
        InstructionPtr instructionPtr = new InstructionPtr(funcState.f.code, iCodeABC);
        Constants.SETARG_B(instructionPtr, luaO_int2fb(consControl.na));
        Constants.SETARG_C(instructionPtr, luaO_int2fb(consControl.nh));
    }

    public void parlist() {
        FuncState funcState = this.fs;
        Prototype prototype = funcState.f;
        int i = 0;
        prototype.is_vararg = 0;
        if (this.t.token != 41) {
            do {
                int i2 = this.t.token;
                if (i2 == TK_DOTS) {
                    next();
                    prototype.is_vararg = 1;
                } else if (i2 == TK_NAME) {
                    new_localvar(str_checkname());
                    i++;
                } else {
                    syntaxerror("<name> or " + LUA_QL("...") + " expected");
                }
                if (prototype.is_vararg != 0) {
                    break;
                }
            } while (testnext(44));
        }
        adjustlocalvars(i);
        short s = funcState.nactvar;
        prototype.numparams = s;
        funcState.reserveregs(s);
    }

    public void body(expdesc expdescVar, boolean z, int i) {
        FuncState funcState = new FuncState();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        Prototype prototypeAddprototype = addprototype();
        funcState.f = prototypeAddprototype;
        prototypeAddprototype.linedefined = i;
        open_func(funcState, blockCnt);
        checknext(40);
        if (z) {
            new_localvarliteral(C3920x1.o);
            adjustlocalvars(1);
        }
        parlist();
        checknext(41);
        statlist();
        funcState.f.lastlinedefined = this.linenumber;
        check_match(TK_END, TK_FUNCTION, i);
        codeclosure(expdescVar);
        close_func();
    }

    public int explist(expdesc expdescVar) {
        expr(expdescVar);
        int i = 1;
        while (testnext(44)) {
            this.fs.exp2nextreg(expdescVar);
            expr(expdescVar);
            i++;
        }
        return i;
    }

    public void funcargs(expdesc expdescVar, int i) {
        int i2;
        FuncState funcState = this.fs;
        expdesc expdescVar2 = new expdesc();
        Token token = this.t;
        int i3 = token.token;
        if (i3 == 40) {
            next();
            if (this.t.token == 41) {
                expdescVar2.k = 0;
            } else {
                explist(expdescVar2);
                funcState.setmultret(expdescVar2);
            }
            check_match(41, 40, i);
        } else if (i3 == 123) {
            constructor(expdescVar2);
        } else if (i3 == TK_STRING) {
            codestring(expdescVar2, token.seminfo.ts);
            next();
        } else {
            syntaxerror("function arguments expected");
            return;
        }
        Constants._assert(expdescVar.k == 6);
        int i4 = expdescVar.u.f3934info;
        if (hasmultret(expdescVar2.k)) {
            i2 = -1;
        } else {
            if (expdescVar2.k != 0) {
                funcState.exp2nextreg(expdescVar2);
            }
            i2 = funcState.freereg - (i4 + 1);
        }
        expdescVar.init(12, funcState.codeABC(30, i4, i2 + 1, 2));
        funcState.fixline(i);
        funcState.freereg = (short) (i4 + 1);
    }

    public void primaryexp(expdesc expdescVar) {
        int i = this.t.token;
        if (i == 40) {
            int i2 = this.linenumber;
            next();
            expr(expdescVar);
            check_match(41, 40, i2);
            this.fs.dischargevars(expdescVar);
            return;
        }
        if (i == TK_NAME) {
            singlevar(expdescVar);
            return;
        }
        syntaxerror("unexpected symbol " + this.t.token + " (" + ((char) this.t.token) + ")");
    }

    public void suffixedexp(expdesc expdescVar) {
        int i = this.linenumber;
        primaryexp(expdescVar);
        while (true) {
            int i2 = this.t.token;
            if (i2 != 40) {
                if (i2 == 46) {
                    fieldsel(expdescVar);
                } else if (i2 == 58) {
                    expdesc expdescVar2 = new expdesc();
                    next();
                    checkname(expdescVar2);
                    this.fs.self(expdescVar, expdescVar2);
                    funcargs(expdescVar, i);
                } else if (i2 == 91) {
                    expdesc expdescVar3 = new expdesc();
                    this.fs.exp2anyregup(expdescVar);
                    yindex(expdescVar3);
                    this.fs.indexed(expdescVar, expdescVar3);
                } else if (i2 != 123 && i2 != TK_STRING) {
                    return;
                }
            }
            this.fs.exp2nextreg(expdescVar);
            funcargs(expdescVar, i);
        }
    }

    public void simpleexp(expdesc expdescVar) {
        Token token = this.t;
        int i = token.token;
        if (i == 123) {
            constructor(expdescVar);
            return;
        }
        if (i == TK_FALSE) {
            expdescVar.init(3, 0);
        } else {
            if (i == TK_FUNCTION) {
                next();
                body(expdescVar, false, this.linenumber);
                return;
            }
            if (i == TK_NIL) {
                expdescVar.init(1, 0);
            } else if (i == TK_TRUE) {
                expdescVar.init(2, 0);
            } else if (i == TK_DOTS) {
                FuncState funcState = this.fs;
                check_condition(funcState.f.is_vararg != 0, "cannot use " + LUA_QL("...") + " outside a vararg function");
                expdescVar.init(13, funcState.codeABC(38, 0, 1, 0));
            } else if (i == TK_NUMBER) {
                expdescVar.init(5, 0);
                expdescVar.u.setNval(this.t.seminfo.r);
            } else if (i == TK_STRING) {
                codestring(expdescVar, token.seminfo.ts);
            } else {
                suffixedexp(expdescVar);
                return;
            }
        }
        next();
    }

    public static class Priority {
        final byte left;
        final byte right;

        public Priority(int i, int i2) {
            this.left = (byte) i;
            this.right = (byte) i2;
        }
    }

    public int subexpr(expdesc expdescVar, int i) {
        enterlevel();
        int i2 = getunopr(this.t.token);
        if (i2 != 3) {
            int i3 = this.linenumber;
            next();
            subexpr(expdescVar, 8);
            this.fs.prefix(i2, expdescVar, i3);
        } else {
            simpleexp(expdescVar);
        }
        int i4 = getbinopr(this.t.token);
        while (i4 != 15 && priority[i4].left > i) {
            expdesc expdescVar2 = new expdesc();
            int i5 = this.linenumber;
            next();
            this.fs.infix(i4, expdescVar);
            int iSubexpr = subexpr(expdescVar2, priority[i4].right);
            this.fs.posfix(i4, expdescVar, expdescVar2, i5);
            i4 = iSubexpr;
        }
        leavelevel();
        return i4;
    }

    public void expr(expdesc expdescVar) {
        subexpr(expdescVar, 0);
    }

    public boolean block_follow(boolean z) {
        int i = this.t.token;
        if (i == TK_UNTIL) {
            return z;
        }
        if (i != TK_EOS) {
            switch (i) {
                case TK_ELSE /* 260 */:
                case TK_ELSEIF /* 261 */:
                case TK_END /* 262 */:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public void block() {
        FuncState funcState = this.fs;
        funcState.enterblock(new FuncState.BlockCnt(), false);
        statlist();
        funcState.leaveblock();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void check_conflict(LHS_assign lHS_assign, expdesc expdescVar) {
        FuncState funcState = this.fs;
        short s = funcState.freereg;
        boolean z = false;
        while (lHS_assign != null) {
            expdesc expdescVar2 = lHS_assign.v;
            if (expdescVar2.k == 9) {
                expdesc.U u = expdescVar2.u;
                short s2 = u.ind_vt;
                int i = expdescVar.k;
                if (s2 == i && u.ind_t == expdescVar.u.f3934info) {
                    u.ind_vt = (short) 7;
                    u.ind_t = s;
                    z = true;
                }
                if (i == 7 && u.ind_idx == expdescVar.u.f3934info) {
                    u.ind_idx = s;
                    z = true;
                }
            }
            lHS_assign = lHS_assign.prev;
        }
        if (z) {
            funcState.codeABC(expdescVar.k == 7 ? 1 : 5, s, expdescVar.u.f3934info, 0);
            funcState.reserveregs(1);
        }
    }

    public void assignment(LHS_assign lHS_assign, int i) {
        expdesc expdescVar = new expdesc();
        int i2 = lHS_assign.v.k;
        check_condition(7 <= i2 && i2 <= 9, "syntax error");
        if (testnext(44)) {
            LHS_assign lHS_assign2 = new LHS_assign();
            lHS_assign2.prev = lHS_assign;
            suffixedexp(lHS_assign2.v);
            expdesc expdescVar2 = lHS_assign2.v;
            if (expdescVar2.k != 9) {
                check_conflict(lHS_assign, expdescVar2);
            }
            assignment(lHS_assign2, i + 1);
        } else {
            checknext(61);
            int iExplist = explist(expdescVar);
            if (iExplist != i) {
                adjust_assign(i, iExplist, expdescVar);
                if (iExplist > i) {
                    FuncState funcState = this.fs;
                    funcState.freereg = (short) (funcState.freereg - (iExplist - i));
                }
            } else {
                this.fs.setoneret(expdescVar);
                this.fs.storevar(lHS_assign.v, expdescVar);
                return;
            }
        }
        expdescVar.init(6, this.fs.freereg - 1);
        this.fs.storevar(lHS_assign.v, expdescVar);
    }

    public int cond() {
        expdesc expdescVar = new expdesc();
        expr(expdescVar);
        if (expdescVar.k == 1) {
            expdescVar.k = 3;
        }
        this.fs.goiftrue(expdescVar);
        return expdescVar.f.i;
    }

    public void gotostat(int i) {
        LuaString luaStringValueOf;
        int i2 = this.linenumber;
        if (testnext(TK_GOTO)) {
            luaStringValueOf = str_checkname();
        } else {
            next();
            luaStringValueOf = LuaString.valueOf("break");
        }
        LuaString luaString = luaStringValueOf;
        Dyndata dyndata = this.dyd;
        Labeldesc[] labeldescArrGrow = Constants.grow(dyndata.gt, dyndata.n_gt + 1);
        dyndata.gt = labeldescArrGrow;
        Dyndata dyndata2 = this.dyd;
        int i3 = dyndata2.n_gt;
        dyndata2.n_gt = i3 + 1;
        findlabel(newlabelentry(labeldescArrGrow, i3, luaString, i2, i));
    }

    public void skipnoopstat() {
        while (true) {
            int i = this.t.token;
            if (i != 59 && i != TK_DBCOLON) {
                return;
            } else {
                statement();
            }
        }
    }

    public void labelstat(LuaString luaString, int i) {
        FuncState funcState = this.fs;
        Dyndata dyndata = this.dyd;
        funcState.checkrepeated(dyndata.label, dyndata.n_label, luaString);
        checknext(TK_DBCOLON);
        Dyndata dyndata2 = this.dyd;
        Labeldesc[] labeldescArrGrow = Constants.grow(dyndata2.label, dyndata2.n_label + 1);
        dyndata2.label = labeldescArrGrow;
        Dyndata dyndata3 = this.dyd;
        int i2 = dyndata3.n_label;
        dyndata3.n_label = i2 + 1;
        int iNewlabelentry = newlabelentry(labeldescArrGrow, i2, luaString, i, this.fs.getlabel());
        skipnoopstat();
        if (block_follow(false)) {
            this.dyd.label[iNewlabelentry].nactvar = this.fs.bl.nactvar;
        }
        findgotos(this.dyd.label[iNewlabelentry]);
    }

    public void whilestat(int i) {
        FuncState funcState = this.fs;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        next();
        int i2 = funcState.getlabel();
        int iCond = cond();
        funcState.enterblock(blockCnt, true);
        checknext(TK_DO);
        block();
        funcState.patchlist(funcState.jump(), i2);
        check_match(TK_END, TK_WHILE, i);
        funcState.leaveblock();
        funcState.patchtohere(iCond);
    }

    public void repeatstat(int i) {
        FuncState funcState = this.fs;
        int i2 = funcState.getlabel();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState.BlockCnt blockCnt2 = new FuncState.BlockCnt();
        funcState.enterblock(blockCnt, true);
        funcState.enterblock(blockCnt2, false);
        next();
        statlist();
        check_match(TK_UNTIL, TK_REPEAT, i);
        int iCond = cond();
        if (blockCnt2.upval) {
            funcState.patchclose(iCond, blockCnt2.nactvar);
        }
        funcState.leaveblock();
        funcState.patchlist(iCond, i2);
        funcState.leaveblock();
    }

    public int exp1() {
        expdesc expdescVar = new expdesc();
        expr(expdescVar);
        int i = expdescVar.k;
        this.fs.exp2nextreg(expdescVar);
        return i;
    }

    public void forbody(int i, int i2, int i3, boolean z) {
        int iCodeAsBx;
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        FuncState funcState = this.fs;
        adjustlocalvars(3);
        checknext(TK_DO);
        int iCodeAsBx2 = z ? funcState.codeAsBx(32, i, -1) : funcState.jump();
        funcState.enterblock(blockCnt, false);
        adjustlocalvars(i3);
        funcState.reserveregs(i3);
        block();
        funcState.leaveblock();
        funcState.patchtohere(iCodeAsBx2);
        if (z) {
            iCodeAsBx = funcState.codeAsBx(33, i, -1);
        } else {
            funcState.codeABC(34, i, 0, i3);
            funcState.fixline(i2);
            iCodeAsBx = funcState.codeAsBx(35, i + 2, -1);
        }
        funcState.patchlist(iCodeAsBx, iCodeAsBx2 + 1);
        funcState.fixline(i2);
    }

    public void fornum(LuaString luaString, int i) {
        FuncState funcState = this.fs;
        short s = funcState.freereg;
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_INDEX);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_LIMIT);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_STEP);
        new_localvar(luaString);
        checknext(61);
        exp1();
        checknext(44);
        exp1();
        if (testnext(44)) {
            exp1();
        } else {
            funcState.codeK(funcState.freereg, funcState.numberK(LuaInteger.valueOf(1)));
            funcState.reserveregs(1);
        }
        forbody(s, i, 1, true);
    }

    public void forlist(LuaString luaString) {
        FuncState funcState = this.fs;
        expdesc expdescVar = new expdesc();
        short s = funcState.freereg;
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_GENERATOR);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_STATE);
        new_localvarliteral(RESERVED_LOCAL_VAR_FOR_CONTROL);
        new_localvar(luaString);
        int i = 4;
        while (testnext(44)) {
            new_localvar(str_checkname());
            i++;
        }
        checknext(TK_IN);
        int i2 = this.linenumber;
        adjust_assign(3, explist(expdescVar), expdescVar);
        funcState.checkstack(3);
        forbody(s, i2, i - 3, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void forstat(int r5) {
        /*
            r4 = this;
            vm2.compiler.FuncState r0 = r4.fs
            vm2.compiler.FuncState$BlockCnt r1 = new vm2.compiler.FuncState$BlockCnt
            r1.<init>()
            r2 = 1
            r0.enterblock(r1, r2)
            r4.next()
            vm2.LuaString r1 = r4.str_checkname()
            vm2.compiler.LexState$Token r2 = r4.t
            int r2 = r2.token
            r3 = 44
            if (r2 == r3) goto L4f
            r3 = 61
            if (r2 == r3) goto L4b
            r3 = 268(0x10c, float:3.76E-43)
            if (r2 == r3) goto L4f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "="
            java.lang.String r2 = LUA_QL(r2)
            r1.append(r2)
            java.lang.String r2 = " or "
            r1.append(r2)
            java.lang.String r2 = "in"
            java.lang.String r2 = LUA_QL(r2)
            r1.append(r2)
            java.lang.String r2 = " expected"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r4.syntaxerror(r1)
            goto L52
        L4b:
            r4.fornum(r1, r5)
            goto L52
        L4f:
            r4.forlist(r1)
        L52:
            r1 = 262(0x106, float:3.67E-43)
            r2 = 264(0x108, float:3.7E-43)
            r4.check_match(r1, r2, r5)
            r0.leaveblock()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.LexState.forstat(int):void");
    }

    public void test_then_block(IntPtr intPtr) {
        int iJump;
        expdesc expdescVar = new expdesc();
        FuncState.BlockCnt blockCnt = new FuncState.BlockCnt();
        next();
        expr(expdescVar);
        checknext(TK_THEN);
        int i = this.t.token;
        if (i == TK_GOTO || i == TK_BREAK) {
            this.fs.goiffalse(expdescVar);
            this.fs.enterblock(blockCnt, false);
            gotostat(expdescVar.t.i);
            skipnoopstat();
            if (block_follow(false)) {
                this.fs.leaveblock();
                return;
            }
            iJump = this.fs.jump();
        } else {
            this.fs.goiftrue(expdescVar);
            this.fs.enterblock(blockCnt, false);
            iJump = expdescVar.f.i;
        }
        statlist();
        this.fs.leaveblock();
        int i2 = this.t.token;
        if (i2 == TK_ELSE || i2 == TK_ELSEIF) {
            FuncState funcState = this.fs;
            funcState.concat(intPtr, funcState.jump());
        }
        this.fs.patchtohere(iJump);
    }

    public void ifstat(int i) {
        IntPtr intPtr = new IntPtr(-1);
        test_then_block(intPtr);
        while (this.t.token == TK_ELSEIF) {
            test_then_block(intPtr);
        }
        if (testnext(TK_ELSE)) {
            block();
        }
        check_match(TK_END, TK_IF, i);
        this.fs.patchtohere(intPtr.i);
    }

    public void localfunc() {
        expdesc expdescVar = new expdesc();
        FuncState funcState = this.fs;
        new_localvar(str_checkname());
        adjustlocalvars(1);
        body(expdescVar, false, this.linenumber);
        funcState.getlocvar(funcState.nactvar - 1).startpc = funcState.pc;
    }

    public void localstat() {
        expdesc expdescVar = new expdesc();
        int iExplist = 0;
        int i = 0;
        do {
            new_localvar(str_checkname());
            i++;
        } while (testnext(44));
        if (testnext(61)) {
            iExplist = explist(expdescVar);
        } else {
            expdescVar.k = 0;
        }
        adjust_assign(i, iExplist, expdescVar);
        adjustlocalvars(i);
    }

    public boolean funcname(expdesc expdescVar) {
        int i;
        singlevar(expdescVar);
        while (true) {
            i = this.t.token;
            if (i != 46) {
                break;
            }
            fieldsel(expdescVar);
        }
        if (i != 58) {
            return false;
        }
        fieldsel(expdescVar);
        return true;
    }

    public void funcstat(int i) {
        expdesc expdescVar = new expdesc();
        expdesc expdescVar2 = new expdesc();
        next();
        body(expdescVar2, funcname(expdescVar), i);
        this.fs.storevar(expdescVar, expdescVar2);
        this.fs.fixline(i);
    }

    public void exprstat() {
        FuncState funcState = this.fs;
        LHS_assign lHS_assign = new LHS_assign();
        suffixedexp(lHS_assign.v);
        int i = this.t.token;
        if (i == 61 || i == 44) {
            lHS_assign.prev = null;
            assignment(lHS_assign, 1);
        } else {
            check_condition(lHS_assign.v.k == 12, "syntax error");
            Constants.SETARG_C(funcState.getcodePtr(lHS_assign.v), 1);
        }
    }

    public void retstat() {
        int iExplist;
        FuncState funcState = this.fs;
        expdesc expdescVar = new expdesc();
        int iExp2anyreg = 0;
        if (block_follow(true) || this.t.token == 59) {
            iExplist = 0;
        } else {
            iExplist = explist(expdescVar);
            if (hasmultret(expdescVar.k)) {
                funcState.setmultret(expdescVar);
                if (expdescVar.k == 12 && iExplist == 1) {
                    Constants.SET_OPCODE(funcState.getcodePtr(expdescVar), 29);
                    Constants._assert(Lua.GETARG_A(funcState.getcode(expdescVar)) == funcState.nactvar);
                }
                iExp2anyreg = funcState.nactvar;
                iExplist = -1;
            } else if (iExplist == 1) {
                iExp2anyreg = funcState.exp2anyreg(expdescVar);
            } else {
                funcState.exp2nextreg(expdescVar);
                short s = funcState.nactvar;
                Constants._assert(iExplist == funcState.freereg - s);
                iExp2anyreg = s;
            }
        }
        funcState.ret(iExp2anyreg, iExplist);
        testnext(59);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void statement() {
        /*
            r3 = this;
            int r0 = r3.linenumber
            r3.enterlevel()
            vm2.compiler.LexState$Token r1 = r3.t
            int r1 = r1.token
            r2 = 59
            if (r1 == r2) goto L7f
            r2 = 269(0x10d, float:3.77E-43)
            if (r1 == r2) goto L6c
            r2 = 278(0x116, float:3.9E-43)
            if (r1 == r2) goto L68
            r2 = 285(0x11d, float:4.0E-43)
            if (r1 == r2) goto L5d
            r2 = 258(0x102, float:3.62E-43)
            if (r1 == r2) goto L53
            r2 = 259(0x103, float:3.63E-43)
            if (r1 == r2) goto L47
            r2 = 273(0x111, float:3.83E-43)
            if (r1 == r2) goto L43
            r2 = 274(0x112, float:3.84E-43)
            if (r1 == r2) goto L3c
            switch(r1) {
                case 264: goto L38;
                case 265: goto L34;
                case 266: goto L53;
                case 267: goto L30;
                default: goto L2c;
            }
        L2c:
            r3.exprstat()
            goto L82
        L30:
            r3.ifstat(r0)
            goto L82
        L34:
            r3.funcstat(r0)
            goto L82
        L38:
            r3.forstat(r0)
            goto L82
        L3c:
            r3.next()
            r3.retstat()
            goto L82
        L43:
            r3.repeatstat(r0)
            goto L82
        L47:
            r3.next()
            r3.block()
            r1 = 262(0x106, float:3.67E-43)
            r3.check_match(r1, r2, r0)
            goto L82
        L53:
            vm2.compiler.FuncState r0 = r3.fs
            int r0 = r0.jump()
            r3.gotostat(r0)
            goto L82
        L5d:
            r3.next()
            vm2.LuaString r1 = r3.str_checkname()
            r3.labelstat(r1, r0)
            goto L82
        L68:
            r3.whilestat(r0)
            goto L82
        L6c:
            r3.next()
            r0 = 265(0x109, float:3.71E-43)
            boolean r0 = r3.testnext(r0)
            if (r0 == 0) goto L7b
            r3.localfunc()
            goto L82
        L7b:
            r3.localstat()
            goto L82
        L7f:
            r3.next()
        L82:
            vm2.compiler.FuncState r0 = r3.fs
            vm2.Prototype r1 = r0.f
            int r1 = r1.maxstacksize
            short r2 = r0.freereg
            if (r1 < r2) goto L92
            short r0 = r0.nactvar
            if (r2 < r0) goto L92
            r0 = 1
            goto L93
        L92:
            r0 = 0
        L93:
            vm2.compiler.Constants._assert(r0)
            vm2.compiler.FuncState r0 = r3.fs
            short r1 = r0.nactvar
            r0.freereg = r1
            r3.leavelevel()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.LexState.statement():void");
    }

    public void statlist() {
        while (!block_follow(true)) {
            if (this.t.token == TK_RETURN) {
                statement();
                return;
            }
            statement();
        }
    }

    public void mainfunc(FuncState funcState) {
        open_func(funcState, new FuncState.BlockCnt());
        this.fs.f.is_vararg = 1;
        expdesc expdescVar = new expdesc();
        expdescVar.init(7, 0);
        this.fs.newupvalue(this.envn, expdescVar);
        next();
        statlist();
        check(TK_EOS);
        close_func();
    }
}
