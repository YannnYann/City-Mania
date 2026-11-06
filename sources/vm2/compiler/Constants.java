package vm2.compiler;

import vm2.LocVars;
import vm2.Lua;
import vm2.LuaError;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Prototype;
import vm2.Upvaldesc;
import vm2.compiler.LexState;

/* JADX INFO: loaded from: classes6.dex */
public class Constants extends Lua {
    static final int LUAI_MAXUPVAL = 255;
    static final int LUAI_MAXVARS = 200;
    public static final int MAXSTACK = 250;
    static final int NO_REG = 255;
    static final int OpArgK = 3;
    static final int OpArgN = 0;
    static final int OpArgR = 2;
    static final int OpArgU = 1;
    static final int iABC = 0;
    static final int iABx = 1;
    static final int iAsBx = 2;

    public static int CREATE_ABC(int i, int i2, int i3, int i4) {
        return (i & 63) | ((i2 << 6) & Lua.MASK_A) | ((i3 << 23) & Lua.MASK_B) | ((i4 << 14) & Lua.MASK_C);
    }

    public static int CREATE_ABx(int i, int i2, int i3) {
        return (i & 63) | ((i2 << 6) & Lua.MASK_A) | ((i3 << 14) & Lua.MASK_Bx);
    }

    public static int CREATE_Ax(int i, int i2) {
        return (i & 63) | ((i2 << 6) & (-64));
    }

    public static void _assert(boolean z) {
        if (!z) {
            throw new LuaError("compiler assert failed");
        }
    }

    public static void SET_OPCODE(InstructionPtr instructionPtr, int i) {
        instructionPtr.set((i & 63) | (instructionPtr.get() & (-64)));
    }

    public static void SETARG_A(int[] iArr, int i, int i2) {
        iArr[i] = ((i2 << 6) & Lua.MASK_A) | (iArr[i] & Lua.MASK_NOT_A);
    }

    public static void SETARG_A(InstructionPtr instructionPtr, int i) {
        instructionPtr.set(((i << 6) & Lua.MASK_A) | (instructionPtr.get() & Lua.MASK_NOT_A));
    }

    public static void SETARG_B(InstructionPtr instructionPtr, int i) {
        instructionPtr.set(((i << 23) & Lua.MASK_B) | (instructionPtr.get() & Lua.MASK_NOT_B));
    }

    public static void SETARG_C(InstructionPtr instructionPtr, int i) {
        instructionPtr.set(((i << 14) & Lua.MASK_C) | (instructionPtr.get() & Lua.MASK_NOT_C));
    }

    public static void SETARG_Bx(InstructionPtr instructionPtr, int i) {
        instructionPtr.set(((i << 14) & Lua.MASK_Bx) | (instructionPtr.get() & Lua.MASK_NOT_Bx));
    }

    public static void SETARG_sBx(InstructionPtr instructionPtr, int i) {
        SETARG_Bx(instructionPtr, i + Lua.MAXARG_sBx);
    }

    public static LuaValue[] realloc(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        if (luaValueArr != null) {
            System.arraycopy(luaValueArr, 0, luaValueArr2, 0, Math.min(luaValueArr.length, i));
        }
        return luaValueArr2;
    }

    public static Prototype[] realloc(Prototype[] prototypeArr, int i) {
        Prototype[] prototypeArr2 = new Prototype[i];
        if (prototypeArr != null) {
            System.arraycopy(prototypeArr, 0, prototypeArr2, 0, Math.min(prototypeArr.length, i));
        }
        return prototypeArr2;
    }

    public static LuaString[] realloc(LuaString[] luaStringArr, int i) {
        LuaString[] luaStringArr2 = new LuaString[i];
        if (luaStringArr != null) {
            System.arraycopy(luaStringArr, 0, luaStringArr2, 0, Math.min(luaStringArr.length, i));
        }
        return luaStringArr2;
    }

    public static LocVars[] realloc(LocVars[] locVarsArr, int i) {
        LocVars[] locVarsArr2 = new LocVars[i];
        if (locVarsArr != null) {
            System.arraycopy(locVarsArr, 0, locVarsArr2, 0, Math.min(locVarsArr.length, i));
        }
        return locVarsArr2;
    }

    public static Upvaldesc[] realloc(Upvaldesc[] upvaldescArr, int i) {
        Upvaldesc[] upvaldescArr2 = new Upvaldesc[i];
        if (upvaldescArr != null) {
            System.arraycopy(upvaldescArr, 0, upvaldescArr2, 0, Math.min(upvaldescArr.length, i));
        }
        return upvaldescArr2;
    }

    public static LexState.Vardesc[] realloc(LexState.Vardesc[] vardescArr, int i) {
        LexState.Vardesc[] vardescArr2 = new LexState.Vardesc[i];
        if (vardescArr != null) {
            System.arraycopy(vardescArr, 0, vardescArr2, 0, Math.min(vardescArr.length, i));
        }
        return vardescArr2;
    }

    public static LexState.Labeldesc[] grow(LexState.Labeldesc[] labeldescArr, int i) {
        if (labeldescArr == null) {
            return new LexState.Labeldesc[2];
        }
        return labeldescArr.length < i ? realloc(labeldescArr, labeldescArr.length * 2) : labeldescArr;
    }

    public static LexState.Labeldesc[] realloc(LexState.Labeldesc[] labeldescArr, int i) {
        LexState.Labeldesc[] labeldescArr2 = new LexState.Labeldesc[i];
        if (labeldescArr != null) {
            System.arraycopy(labeldescArr, 0, labeldescArr2, 0, Math.min(labeldescArr.length, i));
        }
        return labeldescArr2;
    }

    public static int[] realloc(int[] iArr, int i) {
        int[] iArr2 = new int[i];
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(iArr.length, i));
        }
        return iArr2;
    }

    public static byte[] realloc(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
        }
        return bArr2;
    }

    public static char[] realloc(char[] cArr, int i) {
        char[] cArr2 = new char[i];
        if (cArr != null) {
            System.arraycopy(cArr, 0, cArr2, 0, Math.min(cArr.length, i));
        }
        return cArr2;
    }
}
