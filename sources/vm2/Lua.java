package vm2;

import com.ironsource.C3522b4;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes6.dex */
public class Lua {
    public static final int BITRK = 256;
    public static final int LFIELDS_PER_FLUSH = 50;
    public static final int LUA_MULTRET = -1;
    public static final int MASK_A = 16320;
    public static final int MASK_Ax = -64;
    public static final int MASK_B = -8388608;
    public static final int MASK_Bx = -16384;
    public static final int MASK_C = 8372224;
    public static final int MASK_NOT_A = -16321;
    public static final int MASK_NOT_B = 8388607;
    public static final int MASK_NOT_Bx = 16383;
    public static final int MASK_NOT_C = -8372225;
    public static final int MASK_NOT_OP = -64;
    public static final int MASK_OP = 63;
    public static final int MAXARG_A = 255;
    public static final int MAXARG_Ax = 67108863;
    public static final int MAXARG_B = 511;
    public static final int MAXARG_Bx = 262143;
    public static final int MAXARG_C = 511;
    public static final int MAXARG_sBx = 131071;
    public static final int MAXINDEXRK = 255;
    private static final int MAXSRC = 80;
    public static final int MAX_OP = 63;
    public static final int NO_REG = 255;
    public static final int NUM_OPCODES = 40;
    public static final int OP_ADD = 14;
    public static final int OP_AND = 60;
    public static final int OP_CALL = 30;
    public static final int OP_CLOSURE = 37;
    public static final int OP_CONCAT = 22;
    public static final int OP_DIV = 17;
    public static final int OP_EQ = 25;
    public static final int OP_EXTRAARG = 39;
    public static final int OP_FORLOOP = 33;
    public static final int OP_FORPREP = 32;
    public static final int OP_GE = 62;
    public static final int OP_GETTABLE = 7;
    public static final int OP_GETTABUP = 6;
    public static final int OP_GETUPVAL = 5;
    public static final int OP_GT = 63;
    public static final int OP_JMP = 24;
    public static final int OP_LE = 23;
    public static final int OP_LEN = 13;
    public static final int OP_LOADBOOL = 2;
    public static final int OP_LOADK = 0;
    public static final int OP_LOADKX = 3;
    public static final int OP_LOADNIL = 4;
    public static final int OP_LT = 26;
    public static final int OP_MOD = 18;
    public static final int OP_MOVE = 1;
    public static final int OP_MUL = 16;
    public static final int OP_NEQ = 61;
    public static final int OP_NEWTABLE = 11;
    public static final int OP_NOT = 21;
    public static final int OP_OR = 59;
    public static final int OP_POW = 19;
    public static final int OP_RETURN = 31;
    public static final int OP_SELF = 12;
    public static final int OP_SETLIST = 36;
    public static final int OP_SETTABLE = 10;
    public static final int OP_SETTABUP = 8;
    public static final int OP_SETUPVAL = 9;
    public static final int OP_SUB = 15;
    public static final int OP_TAILCALL = 29;
    public static final int OP_TEST = 27;
    public static final int OP_TESTSET = 28;
    public static final int OP_TFORCALL = 34;
    public static final int OP_TFORLOOP = 35;
    public static final int OP_UNM = 20;
    public static final int OP_VARARG = 38;
    public static final int OpArgK = 3;
    public static final int OpArgN = 0;
    public static final int OpArgR = 2;
    public static final int OpArgU = 1;
    public static final int POS_A = 6;
    public static final int POS_Ax = 6;
    public static final int POS_B = 23;
    public static final int POS_Bx = 14;
    public static final int POS_C = 14;
    public static final int POS_OP = 0;
    public static final int SIZE_A = 8;
    public static final int SIZE_Ax = 26;
    public static final int SIZE_B = 9;
    public static final int SIZE_Bx = 18;
    public static final int SIZE_C = 9;
    public static final int SIZE_OP = 6;
    public static final String _VERSION = "Luaj 0.0";
    public static final int iABC = 0;
    public static final int iABx = 1;
    public static final int iAsBx = 2;
    public static final int iAx = 3;
    public static final int[] luaP_opmodes = {113, 96, 84, 65, 80, 80, 92, 108, 60, 16, 60, 84, 108, 96, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 96, 96, 104, 188, 34, 188, 188, Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 228, 84, 84, 16, 98, 98, 4, Sdk.SDKError.Reason.PRIVACY_ICON_FALLBACK_ERROR_VALUE, 20, 81, 80, 23};

    public static int GETARG_A(int i) {
        return (i >> 6) & 255;
    }

    public static int GETARG_Ax(int i) {
        return (i >> 6) & MAXARG_Ax;
    }

    public static int GETARG_B(int i) {
        return (i >> 23) & 511;
    }

    public static int GETARG_Bx(int i) {
        return (i >> 14) & MAXARG_Bx;
    }

    public static int GETARG_C(int i) {
        return (i >> 14) & 511;
    }

    public static int GETARG_sBx(int i) {
        return ((i >> 14) & MAXARG_Bx) - MAXARG_sBx;
    }

    public static int GET_OPCODE(int i) {
        return i & 63;
    }

    public static int INDEXK(int i) {
        return i & (-257);
    }

    public static boolean ISK(int i) {
        return (i & 256) != 0;
    }

    public static int RKASK(int i) {
        return i | 256;
    }

    public static int getOpMode(int i) {
        return luaP_opmodes[i] & 3;
    }

    public static int getBMode(int i) {
        return (luaP_opmodes[i] >> 4) & 3;
    }

    public static int getCMode(int i) {
        return (luaP_opmodes[i] >> 2) & 3;
    }

    public static boolean testAMode(int i) {
        return (luaP_opmodes[i] & 64) != 0;
    }

    public static boolean testTMode(int i) {
        return (luaP_opmodes[i] & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0;
    }

    public static String chunkid(String str) {
        String strSubstring;
        String str2;
        if (str.startsWith(C3522b4.j.b)) {
            return str.substring(1);
        }
        if (str.startsWith("@")) {
            strSubstring = str.substring(1);
            str2 = "";
        } else {
            strSubstring = "[string \"" + str;
            str2 = "\"]";
        }
        if (strSubstring.length() + str2.length() > 80) {
            strSubstring = strSubstring.substring(0, 77 - str2.length()) + "...";
        }
        return strSubstring + str2;
    }
}
