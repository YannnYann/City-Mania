package vm2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LuaClosure extends LuaFunction {
    private static final UpValue[] NOUPVALUES = new UpValue[0];
    final Globals globals;
    public final Prototype p;
    private List<LuaValue[]> stackPool;
    public UpValue[] upValues;
    private List<ArrayList<UpValue>> upvalueListPool;

    @Override // vm2.LuaValue
    public LuaClosure checkclosure() {
        return this;
    }

    @Override // vm2.LuaValue
    public boolean isclosure() {
        return true;
    }

    @Override // vm2.LuaValue
    public LuaClosure optclosure(LuaClosure luaClosure) {
        return this;
    }

    public LuaClosure(Prototype prototype, LuaValue luaValue) {
        this.p = prototype;
        initupvalue1(luaValue);
        this.globals = luaValue instanceof Globals ? (Globals) luaValue : null;
    }

    @Override // vm2.LuaValue
    public void initupvalue1(LuaValue luaValue) {
        Upvaldesc[] upvaldescArr = this.p.upvalues;
        if (upvaldescArr == null || upvaldescArr.length == 0) {
            this.upValues = NOUPVALUES;
            return;
        }
        UpValue[] upValueArr = new UpValue[upvaldescArr.length];
        this.upValues = upValueArr;
        upValueArr[0] = new UpValue(new LuaValue[]{luaValue}, 0);
    }

    @Override // vm2.LuaFunction, vm2.LuaValue, vm2.Varargs
    public String tojstring() {
        return "function: " + this.p.toString();
    }

    private LuaValue[] allocateStack() {
        if (this.stackPool == null) {
            this.stackPool = new ArrayList();
        }
        if (this.stackPool.isEmpty()) {
            int i = this.p.maxstacksize;
            LuaValue[] luaValueArr = new LuaValue[i];
            System.arraycopy(LuaValue.NILS, 0, luaValueArr, 0, i);
            return luaValueArr;
        }
        return this.stackPool.remove(r0.size() - 1);
    }

    private void releaseStack(LuaValue[] luaValueArr) {
        System.arraycopy(LuaValue.NILS, 0, luaValueArr, 0, luaValueArr.length);
        this.stackPool.add(luaValueArr);
    }

    private ArrayList<UpValue> allocateUpvalues() {
        if (this.upvalueListPool == null) {
            this.upvalueListPool = new ArrayList();
        }
        if (this.upvalueListPool.isEmpty()) {
            return new ArrayList<>(this.p.maxstacksize);
        }
        return this.upvalueListPool.remove(r0.size() - 1);
    }

    private void releaseUpvalues(ArrayList<UpValue> arrayList) {
        this.upvalueListPool.add(arrayList);
    }

    @Override // vm2.LuaValue
    public final LuaValue call() {
        LuaValue[] luaValueArrAllocateStack = allocateStack();
        LuaValue luaValueArg1 = execute(luaValueArrAllocateStack, LuaValue.NONE).arg1();
        releaseStack(luaValueArrAllocateStack);
        return luaValueArg1;
    }

    @Override // vm2.LuaValue
    public final LuaValue call(LuaValue luaValue) {
        LuaValue luaValueArg1;
        LuaValue[] luaValueArrAllocateStack = allocateStack();
        if (this.p.numparams == 0) {
            luaValueArg1 = execute(luaValueArrAllocateStack, luaValue).arg1();
        } else {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArg1 = execute(luaValueArrAllocateStack, LuaValue.NONE).arg1();
        }
        releaseStack(luaValueArrAllocateStack);
        return luaValueArg1;
    }

    @Override // vm2.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaValueArg1;
        LuaValue[] luaValueArrAllocateStack = allocateStack();
        Prototype prototype = this.p;
        int i = prototype.numparams;
        if (i == 0) {
            luaValueArg1 = execute(luaValueArrAllocateStack, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue, luaValue2) : LuaValue.NONE).arg1();
        } else if (i != 1) {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArrAllocateStack[1] = luaValue2;
            luaValueArg1 = execute(luaValueArrAllocateStack, LuaValue.NONE).arg1();
        } else {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArg1 = execute(luaValueArrAllocateStack, luaValue2).arg1();
        }
        releaseStack(luaValueArrAllocateStack);
        return luaValueArg1;
    }

    @Override // vm2.LuaValue
    public final LuaValue call(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue luaValueArg1;
        LuaValue[] luaValueArrAllocateStack = allocateStack();
        Prototype prototype = this.p;
        int i = prototype.numparams;
        if (i == 0) {
            luaValueArg1 = execute(luaValueArrAllocateStack, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue, luaValue2, luaValue3) : LuaValue.NONE).arg1();
        } else if (i == 1) {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArg1 = execute(luaValueArrAllocateStack, prototype.is_vararg != 0 ? LuaValue.varargsOf(luaValue2, luaValue3) : LuaValue.NONE).arg1();
        } else if (i != 2) {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArrAllocateStack[1] = luaValue2;
            luaValueArrAllocateStack[2] = luaValue3;
            luaValueArg1 = execute(luaValueArrAllocateStack, LuaValue.NONE).arg1();
        } else {
            luaValueArrAllocateStack[0] = luaValue;
            luaValueArrAllocateStack[1] = luaValue2;
            luaValueArg1 = execute(luaValueArrAllocateStack, luaValue3).arg1();
        }
        releaseStack(luaValueArrAllocateStack);
        return luaValueArg1;
    }

    @Override // vm2.LuaValue
    public final Varargs invoke(Varargs varargs) {
        return onInvoke(varargs).eval();
    }

    @Override // vm2.LuaValue
    public final Varargs onInvoke(Varargs varargs) {
        Prototype prototype;
        int i;
        LuaValue[] luaValueArrAllocateStack = allocateStack();
        int i2 = 0;
        while (true) {
            prototype = this.p;
            i = prototype.numparams;
            if (i2 >= i) {
                break;
            }
            int i3 = i2 + 1;
            luaValueArrAllocateStack[i2] = varargs.arg(i3);
            i2 = i3;
        }
        Varargs varargsExecute = execute(luaValueArrAllocateStack, prototype.is_vararg != 0 ? varargs.subargs(i + 1) : LuaValue.NONE);
        if (varargsExecute instanceof LuaValue) {
            releaseStack(luaValueArrAllocateStack);
        }
        return varargsExecute;
    }

    /* JADX WARN: Code restructure failed: missing block: B:244:0x0499, code lost:
    
        if (r2 == r6) goto L245;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public vm2.Varargs execute(vm2.LuaValue[] r20, vm2.Varargs r21) {
        /*
            Method dump skipped, instruction units count: 2106
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaClosure.execute(vm2.LuaValue[], vm2.Varargs):vm2.Varargs");
    }

    /* JADX WARN: Unreachable blocks removed: 3, instructions: 3 */
    public String errorHook(String str, int i) {
        Globals globals = this.globals;
        if (globals == null) {
            return str;
        }
        LuaThread luaThread = globals.running;
        LuaValue luaValue = luaThread.errorfunc;
        if (luaValue == null) {
            if (globals.debuglib == null) {
                return str;
            }
            return str + "\n" + this.globals.debuglib.traceback(i);
        }
        luaThread.errorfunc = null;
        try {
            String str2 = luaValue.call(LuaValue.valueOf(str)).tojstring();
            luaThread.errorfunc = luaValue;
            return str2;
        } catch (Throwable unused) {
            luaThread.errorfunc = luaValue;
            return "error in error handling";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void processErrorHooks(vm2.LuaError r6, vm2.Prototype r7, int r8) {
        /*
            r5 = this;
            vm2.Globals r0 = r5.globals
            java.lang.String r1 = "?"
            r2 = -1
            if (r0 == 0) goto L23
            vm2.lib.DebugLib r0 = r0.debuglib
            if (r0 == 0) goto L23
            int r3 = r6.level
            vm2.lib.DebugLib$CallFrame r0 = r0.getCallFrame(r3)
            if (r0 == 0) goto L20
            java.lang.String r3 = r0.shortsource()
            if (r3 == 0) goto L1a
            goto L1b
        L1a:
            r3 = r1
        L1b:
            int r4 = r0.currentline()
            goto L25
        L20:
            r3 = r1
            r4 = r2
            goto L25
        L23:
            r0 = 0
            goto L20
        L25:
            if (r0 != 0) goto L3c
            vm2.LuaString r0 = r7.source
            if (r0 == 0) goto L2f
            java.lang.String r1 = r0.tojstring()
        L2f:
            int[] r7 = r7.lineinfo
            if (r7 == 0) goto L3a
            if (r8 < 0) goto L3a
            int r0 = r7.length
            if (r8 >= r0) goto L3a
            r2 = r7[r8]
        L3a:
            r3 = r1
            r4 = r2
        L3c:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r3)
            java.lang.String r8 = ":"
            r7.append(r8)
            r7.append(r4)
            java.lang.String r7 = r7.toString()
            r6.fileline = r7
            java.lang.String r7 = r6.getMessage()
            int r8 = r6.level
            java.lang.String r7 = r5.errorHook(r7, r8)
            r6.traceback = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.LuaClosure.processErrorHooks(vm2.LuaError, vm2.Prototype, int):void");
    }

    private UpValue findupval(LuaValue[] luaValueArr, short s, ArrayList<UpValue> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            UpValue upValue = arrayList.get(i);
            if (upValue.index == s) {
                return upValue;
            }
        }
        if (size < luaValueArr.length) {
            UpValue upValue2 = new UpValue(luaValueArr, s);
            arrayList.add(upValue2);
            return upValue2;
        }
        LuaValue.error("No space for upvalue");
        return null;
    }

    public LuaValue getUpvalue(int i) {
        return this.upValues[i].getValue();
    }

    public void setUpvalue(int i, LuaValue luaValue) {
        this.upValues[i].setValue(luaValue);
    }

    @Override // vm2.LuaFunction
    public String name() {
        return "<" + this.p.shortsource() + ":" + this.p.linedefined + ">";
    }
}
