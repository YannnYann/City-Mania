package vm2;

import com.ironsource.C3522b4;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes6.dex */
public class Print extends Lua {
    private static final String STRING_FOR_NULL = "null";
    public static PrintStream ps = System.out;
    public static final String[] OPNAMES = {"MOVE", "LOADK", "LOADKX", "LOADBOOL", "LOADNIL", "GETUPVAL", "GETTABUP", "GETTABLE", "SETTABUP", "SETUPVAL", "SETTABLE", "NEWTABLE", "SELF", "ADD", "SUB", "MUL", "DIV", "MOD", "POW", "UNM", "NOT", "LEN", "CONCAT", "JMP", "EQ", "LT", "LE", "TEST", "TESTSET", "CALL", "TAILCALL", "RETURN", "FORLOOP", "FORPREP", "TFORCALL", "TFORLOOP", "SETLIST", "CLOSURE", "VARARG", "EXTRAARG", null};

    public static void printString(PrintStream printStream, LuaString luaString) {
        printStream.print('\"');
        int i = luaString.m_length;
        for (int i2 = 0; i2 < i; i2++) {
            byte b = luaString.m_bytes[luaString.m_offset + i2];
            if (b < 32 || b > 126 || b == 34 || b == 92) {
                if (b != 34) {
                    if (b == 92) {
                        printStream.print("\\\\");
                    } else {
                        switch (b) {
                            case 7:
                                printStream.print("\\a");
                                break;
                            case 8:
                                printStream.print("\\b");
                                break;
                            case 9:
                                printStream.print("\\t");
                                break;
                            case 10:
                                printStream.print("\\n");
                                break;
                            case 11:
                                printStream.print("\\v");
                                break;
                            case 12:
                                printStream.print("\\f");
                                break;
                            case 13:
                                printStream.print("\\r");
                                break;
                            default:
                                printStream.print('\\');
                                printStream.print(Integer.toString(b & 1255).substring(1));
                                break;
                        }
                    }
                } else {
                    printStream.print("\\\"");
                }
            } else {
                printStream.print((char) b);
            }
        }
        printStream.print('\"');
    }

    public static void printValue(PrintStream printStream, LuaValue luaValue) {
        if (luaValue == null) {
            printStream.print(STRING_FOR_NULL);
        } else if (luaValue.type() == 5) {
            printString(printStream, (LuaString) luaValue);
        } else {
            printStream.print(luaValue.tojstring());
        }
    }

    public static void printConstant(PrintStream printStream, Prototype prototype, int i) {
        LuaValue luaValueValueOf;
        LuaValue[] luaValueArr = prototype.k;
        if (i < luaValueArr.length) {
            luaValueValueOf = luaValueArr[i];
        } else {
            luaValueValueOf = LuaValue.valueOf("UNKNOWN_CONST_" + i);
        }
        printValue(printStream, luaValueValueOf);
    }

    public static void printUpvalue(PrintStream printStream, Upvaldesc upvaldesc) {
        printStream.print(((int) upvaldesc.idx) + " ");
        printValue(printStream, upvaldesc.name);
    }

    public static void printCode(Prototype prototype) {
        int length = prototype.code.length;
        int i = 0;
        while (i < length) {
            int iPrintOpCode = printOpCode(prototype, i);
            ps.println();
            i = iPrintOpCode + 1;
        }
    }

    public static int printOpCode(Prototype prototype, int i) {
        return printOpCode(ps, prototype, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x029b A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int printOpCode(java.io.PrintStream r13, vm2.Prototype r14, int r15) {
        /*
            Method dump skipped, instruction units count: 794
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.Print.printOpCode(java.io.PrintStream, vm2.Prototype, int):int");
    }

    private static int getline(Prototype prototype, int i) {
        int[] iArr;
        if (i <= 0 || (iArr = prototype.lineinfo) == null || i >= iArr.length) {
            return -1;
        }
        return iArr[i];
    }

    public static void printHeader(Prototype prototype) {
        String strSubstring;
        String strValueOf = String.valueOf(prototype.source);
        if (strValueOf.startsWith("@") || strValueOf.startsWith(C3522b4.j.b)) {
            strSubstring = strValueOf.substring(1);
        } else if ("\u001bLua".equals(strValueOf)) {
            strSubstring = "(bstring)";
        } else {
            strSubstring = "(string)";
        }
        String str = prototype.linedefined == 0 ? C3522b4.i.Z : "function";
        ps.print("\n%" + str + " <" + strSubstring + ":" + prototype.linedefined + "," + prototype.lastlinedefined + "> (" + prototype.code.length + " instructions, " + (prototype.code.length * 4) + " bytes at " + id(prototype) + ")\n");
        PrintStream printStream = ps;
        StringBuilder sb = new StringBuilder();
        sb.append(prototype.numparams);
        sb.append(" param, ");
        sb.append(prototype.maxstacksize);
        sb.append(" slot, ");
        sb.append(prototype.upvalues.length);
        sb.append(" upvalue, ");
        printStream.print(sb.toString());
        ps.print(prototype.locvars.length + " local, " + prototype.k.length + " constant, " + prototype.p.length + " function\n");
    }

    public static void printConstants(Prototype prototype) {
        int length = prototype.k.length;
        ps.print("constants (" + length + ") for " + id(prototype) + ":\n");
        int i = 0;
        while (i < length) {
            PrintStream printStream = ps;
            StringBuilder sb = new StringBuilder();
            sb.append("  ");
            int i2 = i + 1;
            sb.append(i2);
            sb.append("  ");
            printStream.print(sb.toString());
            printValue(ps, prototype.k[i]);
            ps.print("\n");
            i = i2;
        }
    }

    public static void printLocals(Prototype prototype) {
        int length = prototype.locvars.length;
        ps.print("locals (" + length + ") for " + id(prototype) + ":\n");
        for (int i = 0; i < length; i++) {
            ps.println("  " + i + "  " + prototype.locvars[i].varname + " " + (prototype.locvars[i].startpc + 1) + " " + (prototype.locvars[i].endpc + 1));
        }
    }

    public static void printUpValues(Prototype prototype) {
        int length = prototype.upvalues.length;
        ps.print("upvalues (" + length + ") for " + id(prototype) + ":\n");
        for (int i = 0; i < length; i++) {
            ps.print("  " + i + "  " + prototype.upvalues[i] + "\n");
        }
    }

    public static void print(Prototype prototype) {
        printFunction(prototype, true);
    }

    public static void printFunction(Prototype prototype, boolean z) {
        int length = prototype.p.length;
        printHeader(prototype);
        printCode(prototype);
        if (z) {
            printConstants(prototype);
            printLocals(prototype);
            printUpValues(prototype);
        }
        for (int i = 0; i < length; i++) {
            printFunction(prototype.p[i], z);
        }
    }

    private static void format(String str, int i) {
        int length = str.length();
        if (length > i) {
            ps.print(str.substring(0, i));
            return;
        }
        ps.print(str);
        int i2 = i - length;
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            } else {
                ps.print(' ');
            }
        }
    }

    private static String id(Prototype prototype) {
        return "Proto";
    }

    private void _assert(boolean z) {
        if (!z) {
            throw new NullPointerException("_assert failed");
        }
    }

    public static void printState(LuaClosure luaClosure, int i, LuaValue[] luaValueArr, int i2, Varargs varargs) {
        PrintStream printStream = ps;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ps = new PrintStream(byteArrayOutputStream);
        printOpCode(luaClosure.p, i);
        ps.flush();
        ps.close();
        ps = printStream;
        format(byteArrayOutputStream.toString(), 50);
        printStack(luaValueArr, i2, varargs);
        ps.println();
    }

    public static void printStack(LuaValue[] luaValueArr, int i, Varargs varargs) {
        String str;
        ps.print('[');
        int i2 = 0;
        while (i2 < luaValueArr.length) {
            LuaValue luaValue = luaValueArr[i2];
            if (luaValue == null) {
                ps.print(STRING_FOR_NULL);
            } else {
                int iType = luaValue.type();
                if (iType == 5) {
                    LuaString luaStringCheckstring = luaValue.checkstring();
                    PrintStream printStream = ps;
                    if (luaStringCheckstring.length() < 48) {
                        str = luaStringCheckstring.tojstring();
                    } else {
                        str = luaStringCheckstring.substring(0, 32).tojstring() + "...+" + (luaStringCheckstring.length() - 32) + "b";
                    }
                    printStream.print(str);
                } else if (iType == 6) {
                    Object obj = luaValue.touserdata();
                    if (obj != null) {
                        String name = obj.getClass().getName();
                        String strSubstring = name.substring(name.lastIndexOf(46) + 1);
                        ps.print(strSubstring + ": " + Integer.toHexString(obj.hashCode()));
                    } else {
                        ps.print(luaValue.toString());
                    }
                } else if (iType == 7) {
                    ps.print(luaValue.tojstring());
                } else {
                    ps.print(luaValue.tojstring());
                }
            }
            i2++;
            if (i2 == i) {
                ps.print(']');
            }
            ps.print(" | ");
        }
        ps.print(varargs);
    }
}
