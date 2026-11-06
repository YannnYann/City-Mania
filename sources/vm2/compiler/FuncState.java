package vm2.compiler;

import java.util.Hashtable;
import vm2.LocVars;
import vm2.Lua;
import vm2.LuaDouble;
import vm2.LuaInteger;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.Prototype;
import vm2.Upvaldesc;
import vm2.compiler.LexState;

/* JADX INFO: loaded from: classes6.dex */
public class FuncState extends Constants {
    BlockCnt bl;
    Prototype f;
    int firstlocal;
    short freereg;
    Hashtable h;
    IntPtr jpc;
    int lasttarget;
    LexState ls;
    short nactvar;
    int nk;
    short nlocvars;
    int np;
    short nups;
    int pc;
    FuncState prev;

    public static class BlockCnt {
        short firstgoto;
        short firstlabel;
        boolean isloop;
        short nactvar;
        BlockCnt previous;
        boolean upval;
    }

    public static boolean vkisinreg(int i) {
        return i == 6 || i == 7;
    }

    public boolean hasmultret(int i) {
        return i == 12 || i == 13;
    }

    public InstructionPtr getcodePtr(LexState.expdesc expdescVar) {
        return new InstructionPtr(this.f.code, expdescVar.u.f3934info);
    }

    public int getcode(LexState.expdesc expdescVar) {
        return this.f.code[expdescVar.u.f3934info];
    }

    public int codeAsBx(int i, int i2, int i3) {
        return codeABx(i, i2, i3 + Lua.MAXARG_sBx);
    }

    public void setmultret(LexState.expdesc expdescVar) {
        setreturns(expdescVar, -1);
    }

    public void checkrepeated(LexState.Labeldesc[] labeldescArr, int i, LuaString luaString) {
        for (int i2 = this.bl.firstlabel; i2 < i; i2++) {
            if (luaString.eq_b(labeldescArr[i2].name)) {
                this.ls.semerror(this.ls.L.pushfstring("label '" + luaString + " already defined on line " + labeldescArr[i2].line));
            }
        }
    }

    public void checklimit(int i, int i2, String str) {
        if (i > i2) {
            errorlimit(i2, str);
        }
    }

    public void errorlimit(int i, String str) {
        String strPushfstring;
        if (this.f.linedefined == 0) {
            strPushfstring = this.ls.L.pushfstring("main function has more than " + i + " " + str);
        } else {
            strPushfstring = this.ls.L.pushfstring("function at line " + this.f.linedefined + " has more than " + i + " " + str);
        }
        this.ls.lexerror(strPushfstring, 0);
    }

    public LocVars getlocvar(int i) {
        short s = this.ls.dyd.actvar[this.firstlocal + i].idx;
        Constants._assert(s < this.nlocvars);
        return this.f.locvars[s];
    }

    public void removevars(int i) {
        this.ls.dyd.n_actvar -= this.nactvar - i;
        while (true) {
            short s = this.nactvar;
            if (s <= i) {
                return;
            }
            short s2 = (short) (s - 1);
            this.nactvar = s2;
            getlocvar(s2).endpc = this.pc;
        }
    }

    public int searchupvalue(LuaString luaString) {
        Upvaldesc[] upvaldescArr = this.f.upvalues;
        for (int i = 0; i < this.nups; i++) {
            if (upvaldescArr[i].name.eq_b(luaString)) {
                return i;
            }
        }
        return -1;
    }

    public int newupvalue(LuaString luaString, LexState.expdesc expdescVar) {
        checklimit(this.nups + 1, 255, "upvalues");
        Prototype prototype = this.f;
        Upvaldesc[] upvaldescArr = prototype.upvalues;
        if (upvaldescArr == null || this.nups + 1 > upvaldescArr.length) {
            short s = this.nups;
            prototype.upvalues = Constants.realloc(upvaldescArr, s > 0 ? s * 2 : 1);
        }
        this.f.upvalues[this.nups] = new Upvaldesc(luaString, expdescVar.k == 7, expdescVar.u.f3934info);
        short s2 = this.nups;
        this.nups = (short) (s2 + 1);
        return s2;
    }

    public int searchvar(LuaString luaString) {
        for (int i = this.nactvar - 1; i >= 0; i--) {
            if (luaString.eq_b(getlocvar(i).varname)) {
                return i;
            }
        }
        return -1;
    }

    public void markupval(int i) {
        BlockCnt blockCnt = this.bl;
        while (blockCnt.nactvar > i) {
            blockCnt = blockCnt.previous;
        }
        blockCnt.upval = true;
    }

    public static int singlevaraux(FuncState funcState, LuaString luaString, LexState.expdesc expdescVar, int i) {
        if (funcState == null) {
            return 0;
        }
        int iSearchvar = funcState.searchvar(luaString);
        if (iSearchvar >= 0) {
            expdescVar.init(7, iSearchvar);
            if (i == 0) {
                funcState.markupval(iSearchvar);
            }
            return 7;
        }
        int iSearchupvalue = funcState.searchupvalue(luaString);
        if (iSearchupvalue < 0) {
            if (singlevaraux(funcState.prev, luaString, expdescVar, 0) == 0) {
                return 0;
            }
            iSearchupvalue = funcState.newupvalue(luaString, expdescVar);
        }
        expdescVar.init(8, iSearchupvalue);
        return 8;
    }

    public void movegotosout(BlockCnt blockCnt) {
        int i = blockCnt.firstgoto;
        LexState.Labeldesc[] labeldescArr = this.ls.dyd.gt;
        while (i < this.ls.dyd.n_gt) {
            LexState.Labeldesc labeldesc = labeldescArr[i];
            short s = labeldesc.nactvar;
            short s2 = blockCnt.nactvar;
            if (s > s2) {
                if (blockCnt.upval) {
                    patchclose(labeldesc.pc, s2);
                }
                labeldesc.nactvar = blockCnt.nactvar;
            }
            if (!this.ls.findlabel(i)) {
                i++;
            }
        }
    }

    public void enterblock(BlockCnt blockCnt, boolean z) {
        blockCnt.isloop = z;
        short s = this.nactvar;
        blockCnt.nactvar = s;
        LexState.Dyndata dyndata = this.ls.dyd;
        blockCnt.firstlabel = (short) dyndata.n_label;
        blockCnt.firstgoto = (short) dyndata.n_gt;
        blockCnt.upval = false;
        blockCnt.previous = this.bl;
        this.bl = blockCnt;
        Constants._assert(this.freereg == s);
    }

    public void leaveblock() {
        BlockCnt blockCnt = this.bl;
        if (blockCnt.previous != null && blockCnt.upval) {
            int iJump = jump();
            patchclose(iJump, blockCnt.nactvar);
            patchtohere(iJump);
        }
        if (blockCnt.isloop) {
            this.ls.breaklabel();
        }
        this.bl = blockCnt.previous;
        removevars(blockCnt.nactvar);
        Constants._assert(blockCnt.nactvar == this.nactvar);
        this.freereg = this.nactvar;
        LexState lexState = this.ls;
        LexState.Dyndata dyndata = lexState.dyd;
        dyndata.n_label = blockCnt.firstlabel;
        if (blockCnt.previous != null) {
            movegotosout(blockCnt);
            return;
        }
        short s = blockCnt.firstgoto;
        if (s < dyndata.n_gt) {
            lexState.undefgoto(dyndata.gt[s]);
        }
    }

    public void closelistfield(LexState.ConsControl consControl) {
        LexState.expdesc expdescVar = consControl.v;
        if (expdescVar.k == 0) {
            return;
        }
        exp2nextreg(expdescVar);
        consControl.v.k = 0;
        int i = consControl.tostore;
        if (i == 50) {
            setlist(consControl.t.u.f3934info, consControl.na, i);
            consControl.tostore = 0;
        }
    }

    public void lastlistfield(LexState.ConsControl consControl) {
        if (consControl.tostore == 0) {
            return;
        }
        if (hasmultret(consControl.v.k)) {
            setmultret(consControl.v);
            setlist(consControl.t.u.f3934info, consControl.na, -1);
            consControl.na--;
        } else {
            LexState.expdesc expdescVar = consControl.v;
            if (expdescVar.k != 0) {
                exp2nextreg(expdescVar);
            }
            setlist(consControl.t.u.f3934info, consControl.na, consControl.tostore);
        }
    }

    public void nil(int i, int i2) {
        int i3 = i + i2;
        int i4 = i3 - 1;
        int i5 = this.pc;
        if (i5 > this.lasttarget && i5 > 0) {
            int i6 = this.f.code[i5 - 1];
            if (Lua.GET_OPCODE(i6) == 4) {
                int iGETARG_A = Lua.GETARG_A(i6);
                int iGETARG_B = Lua.GETARG_B(i6) + iGETARG_A;
                if ((iGETARG_A <= i && i <= iGETARG_B + 1) || (i <= iGETARG_A && iGETARG_A <= i3)) {
                    if (iGETARG_A < i) {
                        i = iGETARG_A;
                    }
                    if (iGETARG_B > i4) {
                        i4 = iGETARG_B;
                    }
                    InstructionPtr instructionPtr = new InstructionPtr(this.f.code, this.pc - 1);
                    Constants.SETARG_A(instructionPtr, i);
                    Constants.SETARG_B(instructionPtr, i4 - i);
                    return;
                }
            }
        }
        codeABC(4, i, i2 - 1, 0);
    }

    public int jump() {
        IntPtr intPtr = this.jpc;
        int i = intPtr.i;
        intPtr.i = -1;
        IntPtr intPtr2 = new IntPtr(codeAsBx(24, 0, -1));
        concat(intPtr2, i);
        return intPtr2.i;
    }

    public void ret(int i, int i2) {
        codeABC(31, i, i2 + 1, 0);
    }

    public int condjump(int i, int i2, int i3, int i4) {
        codeABC(i, i2, i3, i4);
        return jump();
    }

    public void fixjump(int i, int i2) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f.code, i);
        int i3 = i2 - (i + 1);
        Constants._assert(i2 != -1);
        if (Math.abs(i3) > 131071) {
            this.ls.syntaxerror("control structure too long");
        }
        Constants.SETARG_sBx(instructionPtr, i3);
    }

    public int getlabel() {
        int i = this.pc;
        this.lasttarget = i;
        return i;
    }

    public int getjump(int i) {
        int iGETARG_sBx = Lua.GETARG_sBx(this.f.code[i]);
        if (iGETARG_sBx == -1) {
            return -1;
        }
        return i + 1 + iGETARG_sBx;
    }

    public InstructionPtr getjumpcontrol(int i) {
        InstructionPtr instructionPtr = new InstructionPtr(this.f.code, i);
        return (i < 1 || !Lua.testTMode(Lua.GET_OPCODE(instructionPtr.code[instructionPtr.idx - 1]))) ? instructionPtr : new InstructionPtr(instructionPtr.code, instructionPtr.idx - 1);
    }

    public boolean need_value(int i) {
        while (i != -1) {
            if (Lua.GET_OPCODE(getjumpcontrol(i).get()) != 28) {
                return true;
            }
            i = getjump(i);
        }
        return false;
    }

    public boolean patchtestreg(int i, int i2) {
        InstructionPtr instructionPtr = getjumpcontrol(i);
        if (Lua.GET_OPCODE(instructionPtr.get()) != 28) {
            return false;
        }
        if (i2 != 255 && i2 != Lua.GETARG_B(instructionPtr.get())) {
            Constants.SETARG_A(instructionPtr, i2);
            return true;
        }
        instructionPtr.set(Constants.CREATE_ABC(27, Lua.GETARG_B(instructionPtr.get()), 0, Lua.GETARG_C(instructionPtr.get())));
        return true;
    }

    public void removevalues(int i) {
        while (i != -1) {
            patchtestreg(i, 255);
            i = getjump(i);
        }
    }

    public void patchlistaux(int i, int i2, int i3, int i4) {
        while (i != -1) {
            int i5 = getjump(i);
            if (patchtestreg(i, i3)) {
                fixjump(i, i2);
            } else {
                fixjump(i, i4);
            }
            i = i5;
        }
    }

    public void dischargejpc() {
        int i = this.jpc.i;
        int i2 = this.pc;
        patchlistaux(i, i2, 255, i2);
        this.jpc.i = -1;
    }

    public void patchlist(int i, int i2) {
        int i3 = this.pc;
        if (i2 == i3) {
            patchtohere(i);
        } else {
            Constants._assert(i2 < i3);
            patchlistaux(i, i2, 255, i2);
        }
    }

    public void patchclose(int i, int i2) {
        int i3 = i2 + 1;
        while (i != -1) {
            int i4 = getjump(i);
            Constants._assert(Lua.GET_OPCODE(this.f.code[i]) == 24 && (Lua.GETARG_A(this.f.code[i]) == 0 || Lua.GETARG_A(this.f.code[i]) >= i3));
            Constants.SETARG_A(this.f.code, i, i3);
            i = i4;
        }
    }

    public void patchtohere(int i) {
        getlabel();
        concat(this.jpc, i);
    }

    public void concat(IntPtr intPtr, int i) {
        if (i == -1) {
            return;
        }
        int i2 = intPtr.i;
        if (i2 == -1) {
            intPtr.i = i;
            return;
        }
        while (true) {
            int i3 = getjump(i2);
            if (i3 == -1) {
                fixjump(i2, i);
                return;
            }
            i2 = i3;
        }
    }

    public void checkstack(int i) {
        int i2 = this.freereg + i;
        if (i2 > this.f.maxstacksize) {
            if (i2 >= 250) {
                this.ls.syntaxerror("function or expression too complex");
            }
            this.f.maxstacksize = i2;
        }
    }

    public void reserveregs(int i) {
        checkstack(i);
        this.freereg = (short) (this.freereg + i);
    }

    public void freereg(int i) {
        if (Lua.ISK(i) || i < this.nactvar) {
            return;
        }
        short s = (short) (this.freereg - 1);
        this.freereg = s;
        Constants._assert(i == s);
    }

    public void freeexp(LexState.expdesc expdescVar) {
        if (expdescVar.k == 6) {
            freereg(expdescVar.u.f3934info);
        }
    }

    public int addk(LuaValue luaValue) {
        Hashtable hashtable = this.h;
        if (hashtable == null) {
            this.h = new Hashtable();
        } else if (hashtable.containsKey(luaValue)) {
            return ((Integer) this.h.get(luaValue)).intValue();
        }
        int i = this.nk;
        this.h.put(luaValue, Integer.valueOf(i));
        Prototype prototype = this.f;
        LuaValue[] luaValueArr = prototype.k;
        if (luaValueArr == null || this.nk + 1 >= luaValueArr.length) {
            prototype.k = Constants.realloc(luaValueArr, (this.nk * 2) + 1);
        }
        LuaValue[] luaValueArr2 = prototype.k;
        int i2 = this.nk;
        this.nk = i2 + 1;
        luaValueArr2[i2] = luaValue;
        return i;
    }

    public int stringK(LuaString luaString) {
        return addk(luaString);
    }

    public int numberK(LuaValue luaValue) {
        if (luaValue instanceof LuaDouble) {
            double d = luaValue.todouble();
            int i = (int) d;
            if (d == i) {
                luaValue = LuaInteger.valueOf(i);
            }
        }
        return addk(luaValue);
    }

    public int boolK(boolean z) {
        return addk(z ? LuaValue.TRUE : LuaValue.FALSE);
    }

    public int nilK() {
        return addk(LuaValue.NIL);
    }

    public void setreturns(LexState.expdesc expdescVar, int i) {
        int i2 = expdescVar.k;
        if (i2 == 12) {
            Constants.SETARG_C(getcodePtr(expdescVar), i + 1);
        } else if (i2 == 13) {
            Constants.SETARG_B(getcodePtr(expdescVar), i + 1);
            Constants.SETARG_A(getcodePtr(expdescVar), this.freereg);
            reserveregs(1);
        }
    }

    public void setoneret(LexState.expdesc expdescVar) {
        int i = expdescVar.k;
        if (i == 12) {
            expdescVar.k = 6;
            expdescVar.u.f3934info = Lua.GETARG_A(getcode(expdescVar));
        } else if (i == 13) {
            Constants.SETARG_B(getcodePtr(expdescVar), 2);
            expdescVar.k = 11;
        }
    }

    public void dischargevars(LexState.expdesc expdescVar) {
        int i = expdescVar.k;
        int i2 = 6;
        if (i == 7) {
            expdescVar.k = 6;
            return;
        }
        if (i == 8) {
            LexState.expdesc.U u = expdescVar.u;
            u.f3934info = codeABC(5, 0, u.f3934info, 0);
            expdescVar.k = 11;
        } else {
            if (i != 9) {
                if (i == 12 || i == 13) {
                    setoneret(expdescVar);
                    return;
                }
                return;
            }
            freereg(expdescVar.u.ind_idx);
            LexState.expdesc.U u2 = expdescVar.u;
            if (u2.ind_vt == 7) {
                freereg(u2.ind_t);
                i2 = 7;
            }
            LexState.expdesc.U u3 = expdescVar.u;
            u3.f3934info = codeABC(i2, 0, u3.ind_t, u3.ind_idx);
            expdescVar.k = 11;
        }
    }

    public int code_label(int i, int i2, int i3) {
        getlabel();
        return codeABC(2, i, i2, i3);
    }

    public void discharge2reg(LexState.expdesc expdescVar, int i) {
        dischargevars(expdescVar);
        int i2 = expdescVar.k;
        if (i2 != 11) {
            switch (i2) {
                case 1:
                    nil(i, 1);
                    break;
                case 2:
                case 3:
                    codeABC(2, i, i2 != 2 ? 0 : 1, 0);
                    break;
                case 4:
                    codeK(i, expdescVar.u.f3934info);
                    break;
                case 5:
                    codeK(i, numberK(expdescVar.u.nval()));
                    break;
                case 6:
                    int i3 = expdescVar.u.f3934info;
                    if (i != i3) {
                        codeABC(1, i, i3, 0);
                    }
                    break;
                default:
                    Constants._assert(i2 == 0 || i2 == 10);
                    return;
            }
        } else {
            Constants.SETARG_A(getcodePtr(expdescVar), i);
        }
        expdescVar.u.f3934info = i;
        expdescVar.k = 6;
    }

    public void discharge2anyreg(LexState.expdesc expdescVar) {
        if (expdescVar.k != 6) {
            reserveregs(1);
            discharge2reg(expdescVar, this.freereg - 1);
        }
    }

    public void exp2reg(LexState.expdesc expdescVar, int i) {
        int iCode_label;
        int iCode_label2;
        discharge2reg(expdescVar, i);
        if (expdescVar.k == 10) {
            concat(expdescVar.t, expdescVar.u.f3934info);
        }
        if (expdescVar.hasjumps()) {
            if (need_value(expdescVar.t.i) || need_value(expdescVar.f.i)) {
                int iJump = expdescVar.k == 10 ? -1 : jump();
                iCode_label = code_label(i, 0, 1);
                iCode_label2 = code_label(i, 1, 0);
                patchtohere(iJump);
            } else {
                iCode_label2 = -1;
                iCode_label = -1;
            }
            int i2 = getlabel();
            patchlistaux(expdescVar.f.i, i2, i, iCode_label);
            patchlistaux(expdescVar.t.i, i2, i, iCode_label2);
        }
        IntPtr intPtr = expdescVar.f;
        expdescVar.t.i = -1;
        intPtr.i = -1;
        expdescVar.u.f3934info = i;
        expdescVar.k = 6;
    }

    public void exp2nextreg(LexState.expdesc expdescVar) {
        dischargevars(expdescVar);
        freeexp(expdescVar);
        reserveregs(1);
        exp2reg(expdescVar, this.freereg - 1);
    }

    public int exp2anyreg(LexState.expdesc expdescVar) {
        dischargevars(expdescVar);
        if (expdescVar.k == 6) {
            if (!expdescVar.hasjumps()) {
                return expdescVar.u.f3934info;
            }
            int i = expdescVar.u.f3934info;
            if (i >= this.nactvar) {
                exp2reg(expdescVar, i);
                return expdescVar.u.f3934info;
            }
        }
        exp2nextreg(expdescVar);
        return expdescVar.u.f3934info;
    }

    public void exp2anyregup(LexState.expdesc expdescVar) {
        if (expdescVar.k != 8 || expdescVar.hasjumps()) {
            exp2anyreg(expdescVar);
        }
    }

    public void exp2val(LexState.expdesc expdescVar) {
        if (expdescVar.hasjumps()) {
            exp2anyreg(expdescVar);
        } else {
            dischargevars(expdescVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int exp2RK(vm2.compiler.LexState.expdesc r7) {
        /*
            r6 = this;
            r6.exp2val(r7)
            int r0 = r7.k
            r1 = 255(0xff, float:3.57E-43)
            r2 = 2
            r3 = 4
            r4 = 1
            if (r0 == r4) goto L30
            if (r0 == r2) goto L30
            r5 = 3
            if (r0 == r5) goto L30
            if (r0 == r3) goto L25
            r2 = 5
            if (r0 == r2) goto L17
            goto L52
        L17:
            vm2.compiler.LexState$expdesc$U r0 = r7.u
            vm2.LuaValue r2 = r0.nval()
            int r2 = r6.numberK(r2)
            r0.f3934info = r2
            r7.k = r3
        L25:
            vm2.compiler.LexState$expdesc$U r0 = r7.u
            int r0 = r0.f3934info
            if (r0 > r1) goto L52
            int r7 = vm2.Lua.RKASK(r0)
            return r7
        L30:
            int r5 = r6.nk
            if (r5 > r1) goto L52
            vm2.compiler.LexState$expdesc$U r1 = r7.u
            if (r0 != r4) goto L3d
            int r0 = r6.nilK()
            goto L45
        L3d:
            if (r0 != r2) goto L40
            goto L41
        L40:
            r4 = 0
        L41:
            int r0 = r6.boolK(r4)
        L45:
            r1.f3934info = r0
            r7.k = r3
            vm2.compiler.LexState$expdesc$U r7 = r7.u
            int r7 = r7.f3934info
            int r7 = vm2.Lua.RKASK(r7)
            return r7
        L52:
            int r7 = r6.exp2anyreg(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.FuncState.exp2RK(vm2.compiler.LexState$expdesc):int");
    }

    public void storevar(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int i = expdescVar.k;
        if (i == 7) {
            freeexp(expdescVar2);
            exp2reg(expdescVar2, expdescVar.u.f3934info);
            return;
        }
        if (i == 8) {
            codeABC(9, exp2anyreg(expdescVar2), expdescVar.u.f3934info, 0);
        } else if (i == 9) {
            int i2 = expdescVar.u.ind_vt == 7 ? 10 : 8;
            int iExp2RK = exp2RK(expdescVar2);
            LexState.expdesc.U u = expdescVar.u;
            codeABC(i2, u.ind_t, u.ind_idx, iExp2RK);
        } else {
            Constants._assert(false);
        }
        freeexp(expdescVar2);
    }

    public void self(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        exp2anyreg(expdescVar);
        freeexp(expdescVar);
        short s = this.freereg;
        reserveregs(2);
        codeABC(12, s, expdescVar.u.f3934info, exp2RK(expdescVar2));
        freeexp(expdescVar2);
        expdescVar.u.f3934info = s;
        expdescVar.k = 6;
    }

    public void invertjump(LexState.expdesc expdescVar) {
        InstructionPtr instructionPtr = getjumpcontrol(expdescVar.u.f3934info);
        Constants._assert((!Lua.testTMode(Lua.GET_OPCODE(instructionPtr.get())) || Lua.GET_OPCODE(instructionPtr.get()) == 28 || Lua.GET_OPCODE(instructionPtr.get()) == 27) ? false : true);
        Constants.SETARG_A(instructionPtr, Lua.GETARG_A(instructionPtr.get()) == 0 ? 1 : 0);
    }

    public int jumponcond(LexState.expdesc expdescVar, int i) {
        if (expdescVar.k == 11) {
            int i2 = getcode(expdescVar);
            if (Lua.GET_OPCODE(i2) == 21) {
                this.pc--;
                return condjump(27, Lua.GETARG_B(i2), 0, i != 0 ? 0 : 1);
            }
        }
        discharge2anyreg(expdescVar);
        freeexp(expdescVar);
        return condjump(28, 255, expdescVar.u.f3934info, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void goiftrue(vm2.compiler.LexState.expdesc r4) {
        /*
            r3 = this;
            r3.dischargevars(r4)
            int r0 = r4.k
            r1 = 2
            r2 = -1
            if (r0 == r1) goto L21
            r1 = 10
            if (r0 == r1) goto L19
            r1 = 4
            if (r0 == r1) goto L21
            r1 = 5
            if (r0 == r1) goto L21
            r0 = 0
            int r0 = r3.jumponcond(r4, r0)
            goto L22
        L19:
            r3.invertjump(r4)
            vm2.compiler.LexState$expdesc$U r0 = r4.u
            int r0 = r0.f3934info
            goto L22
        L21:
            r0 = r2
        L22:
            vm2.compiler.IntPtr r1 = r4.f
            r3.concat(r1, r0)
            vm2.compiler.IntPtr r0 = r4.t
            int r0 = r0.i
            r3.patchtohere(r0)
            vm2.compiler.IntPtr r4 = r4.t
            r4.i = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.FuncState.goiftrue(vm2.compiler.LexState$expdesc):void");
    }

    public void goiffalse(LexState.expdesc expdescVar) {
        int iJumponcond;
        dischargevars(expdescVar);
        int i = expdescVar.k;
        if (i == 1 || i == 3) {
            iJumponcond = -1;
        } else if (i == 10) {
            iJumponcond = expdescVar.u.f3934info;
        } else {
            iJumponcond = jumponcond(expdescVar, 1);
        }
        concat(expdescVar.t, iJumponcond);
        patchtohere(expdescVar.f.i);
        expdescVar.f.i = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void codenot(vm2.compiler.LexState.expdesc r6) {
        /*
            r5 = this;
            r5.dischargevars(r6)
            int r0 = r6.k
            r1 = 10
            if (r0 == r1) goto L32
            r1 = 11
            r2 = 0
            if (r0 == r1) goto L1d
            switch(r0) {
                case 1: goto L19;
                case 2: goto L15;
                case 3: goto L19;
                case 4: goto L15;
                case 5: goto L15;
                case 6: goto L1d;
                default: goto L11;
            }
        L11:
            vm2.compiler.Constants._assert(r2)
            goto L35
        L15:
            r0 = 3
            r6.k = r0
            goto L35
        L19:
            r0 = 2
            r6.k = r0
            goto L35
        L1d:
            r5.discharge2anyreg(r6)
            r5.freeexp(r6)
            vm2.compiler.LexState$expdesc$U r0 = r6.u
            r3 = 21
            int r4 = r0.f3934info
            int r2 = r5.codeABC(r3, r2, r4, r2)
            r0.f3934info = r2
            r6.k = r1
            goto L35
        L32:
            r5.invertjump(r6)
        L35:
            vm2.compiler.IntPtr r0 = r6.f
            int r1 = r0.i
            vm2.compiler.IntPtr r2 = r6.t
            int r3 = r2.i
            r0.i = r3
            r2.i = r1
            int r0 = r0.i
            r5.removevalues(r0)
            vm2.compiler.IntPtr r6 = r6.t
            int r6 = r6.i
            r5.removevalues(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.compiler.FuncState.codenot(vm2.compiler.LexState$expdesc):void");
    }

    public void indexed(LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        LexState.expdesc.U u = expdescVar.u;
        u.ind_t = (short) u.f3934info;
        u.ind_idx = (short) exp2RK(expdescVar2);
        int i = expdescVar.k;
        Constants._assert(i == 8 || vkisinreg(i));
        expdescVar.u.ind_vt = (short) (expdescVar.k != 8 ? 7 : 8);
        expdescVar.k = 9;
    }

    public boolean constfolding(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        LuaValue luaValueAdd;
        if (!expdescVar.isnumeral() || !expdescVar2.isnumeral() || ((i == 17 || i == 18) && expdescVar2.u.nval().eq_b(LuaValue.ZERO))) {
            return false;
        }
        LuaValue luaValueNval = expdescVar.u.nval();
        LuaValue luaValueNval2 = expdescVar2.u.nval();
        switch (i) {
            case 13:
                return false;
            case 14:
                luaValueAdd = luaValueNval.add(luaValueNval2);
                break;
            case 15:
                luaValueAdd = luaValueNval.sub(luaValueNval2);
                break;
            case 16:
                luaValueAdd = luaValueNval.mul(luaValueNval2);
                break;
            case 17:
                luaValueAdd = luaValueNval.div(luaValueNval2);
                break;
            case 18:
                luaValueAdd = luaValueNval.mod(luaValueNval2);
                break;
            case 19:
                luaValueAdd = luaValueNval.pow(luaValueNval2);
                break;
            case 20:
                luaValueAdd = luaValueNval.neg();
                break;
            default:
                Constants._assert(false);
                luaValueAdd = null;
                break;
        }
        if (Double.isNaN(luaValueAdd.todouble())) {
            return false;
        }
        expdescVar.u.setNval(luaValueAdd);
        return true;
    }

    public void codearith(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i2) {
        if (constfolding(i, expdescVar, expdescVar2)) {
            return;
        }
        int iExp2RK = (i == 20 || i == 13) ? 0 : exp2RK(expdescVar2);
        int iExp2RK2 = exp2RK(expdescVar);
        if (iExp2RK2 > iExp2RK) {
            freeexp(expdescVar);
            freeexp(expdescVar2);
        } else {
            freeexp(expdescVar2);
            freeexp(expdescVar);
        }
        expdescVar.u.f3934info = codeABC(i, 0, iExp2RK2, iExp2RK);
        expdescVar.k = 11;
        fixline(i2);
    }

    public void codecomp(int i, int i2, LexState.expdesc expdescVar, LexState.expdesc expdescVar2) {
        int iExp2RK = exp2RK(expdescVar);
        int iExp2RK2 = exp2RK(expdescVar2);
        freeexp(expdescVar2);
        freeexp(expdescVar);
        if (i2 == 0 && i != 25) {
            i2 = 1;
            iExp2RK2 = iExp2RK;
            iExp2RK = iExp2RK2;
        }
        expdescVar.u.f3934info = condjump(i, i2, iExp2RK, iExp2RK2);
        expdescVar.k = 10;
    }

    public void prefix(int i, LexState.expdesc expdescVar, int i2) {
        LexState.expdesc expdescVar2 = new LexState.expdesc();
        expdescVar2.init(5, 0);
        if (i == 0) {
            if (expdescVar.isnumeral()) {
                LexState.expdesc.U u = expdescVar.u;
                u.setNval(u.nval().neg());
                return;
            } else {
                exp2anyreg(expdescVar);
                codearith(20, expdescVar, expdescVar2, i2);
                return;
            }
        }
        if (i == 1) {
            codenot(expdescVar);
        } else if (i == 2) {
            exp2anyreg(expdescVar);
            codearith(13, expdescVar, expdescVar2, i2);
        } else {
            Constants._assert(false);
        }
    }

    public void infix(int i, LexState.expdesc expdescVar) {
        if (i == 13) {
            goiftrue(expdescVar);
            return;
        }
        if (i == 14) {
            goiffalse(expdescVar);
            return;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                if (!expdescVar.isnumeral()) {
                    exp2RK(expdescVar);
                }
                break;
            case 6:
                exp2nextreg(expdescVar);
                break;
            default:
                exp2RK(expdescVar);
                break;
        }
    }

    public void posfix(int i, LexState.expdesc expdescVar, LexState.expdesc expdescVar2, int i2) {
        switch (i) {
            case 0:
                codearith(14, expdescVar, expdescVar2, i2);
                break;
            case 1:
                codearith(15, expdescVar, expdescVar2, i2);
                break;
            case 2:
                codearith(16, expdescVar, expdescVar2, i2);
                break;
            case 3:
                codearith(17, expdescVar, expdescVar2, i2);
                break;
            case 4:
                codearith(18, expdescVar, expdescVar2, i2);
                break;
            case 5:
                codearith(19, expdescVar, expdescVar2, i2);
                break;
            case 6:
                exp2val(expdescVar2);
                if (expdescVar2.k == 11 && Lua.GET_OPCODE(getcode(expdescVar2)) == 22) {
                    Constants._assert(expdescVar.u.f3934info == Lua.GETARG_B(getcode(expdescVar2)) - 1);
                    freeexp(expdescVar);
                    Constants.SETARG_B(getcodePtr(expdescVar2), expdescVar.u.f3934info);
                    expdescVar.k = 11;
                    expdescVar.u.f3934info = expdescVar2.u.f3934info;
                } else {
                    exp2nextreg(expdescVar2);
                    codearith(22, expdescVar, expdescVar2, i2);
                }
                break;
            case 7:
                codecomp(25, 0, expdescVar, expdescVar2);
                break;
            case 8:
                codecomp(25, 1, expdescVar, expdescVar2);
                break;
            case 9:
                codecomp(26, 1, expdescVar, expdescVar2);
                break;
            case 10:
                codecomp(23, 1, expdescVar, expdescVar2);
                break;
            case 11:
                codecomp(26, 0, expdescVar, expdescVar2);
                break;
            case 12:
                codecomp(23, 0, expdescVar, expdescVar2);
                break;
            case 13:
                Constants._assert(expdescVar.t.i == -1);
                dischargevars(expdescVar2);
                concat(expdescVar2.f, expdescVar.f.i);
                expdescVar.setvalue(expdescVar2);
                break;
            case 14:
                Constants._assert(expdescVar.f.i == -1);
                dischargevars(expdescVar2);
                concat(expdescVar2.t, expdescVar.t.i);
                expdescVar.setvalue(expdescVar2);
                break;
            default:
                Constants._assert(false);
                break;
        }
    }

    public void fixline(int i) {
        this.f.lineinfo[this.pc - 1] = i;
    }

    public int code(int i, int i2) {
        Prototype prototype = this.f;
        dischargejpc();
        int[] iArr = prototype.code;
        if (iArr == null || this.pc + 1 > iArr.length) {
            prototype.code = Constants.realloc(iArr, (this.pc * 2) + 1);
        }
        int[] iArr2 = prototype.code;
        int i3 = this.pc;
        iArr2[i3] = i;
        int[] iArr3 = prototype.lineinfo;
        if (iArr3 == null || i3 + 1 > iArr3.length) {
            prototype.lineinfo = Constants.realloc(iArr3, (i3 * 2) + 1);
        }
        int[] iArr4 = prototype.lineinfo;
        int i4 = this.pc;
        iArr4[i4] = i2;
        this.pc = i4 + 1;
        return i4;
    }

    public int codeABC(int i, int i2, int i3, int i4) {
        Constants._assert(Lua.getOpMode(i) == 0);
        Constants._assert(Lua.getBMode(i) != 0 || i3 == 0);
        Constants._assert(Lua.getCMode(i) != 0 || i4 == 0);
        return code(Constants.CREATE_ABC(i, i2, i3, i4), this.ls.lastline);
    }

    public int codeABx(int i, int i2, int i3) {
        boolean z = false;
        Constants._assert(Lua.getOpMode(i) == 1 || Lua.getOpMode(i) == 2);
        Constants._assert(Lua.getCMode(i) == 0);
        if (i3 >= 0 && i3 <= 262143) {
            z = true;
        }
        Constants._assert(z);
        return code(Constants.CREATE_ABx(i, i2, i3), this.ls.lastline);
    }

    public int codeextraarg(int i) {
        Constants._assert(i <= 67108863);
        return code(Constants.CREATE_Ax(39, i), this.ls.lastline);
    }

    public int codeK(int i, int i2) {
        if (i2 <= 262143) {
            return codeABx(0, i, i2);
        }
        int iCodeABx = codeABx(3, i, 0);
        codeextraarg(i2);
        return iCodeABx;
    }

    public void setlist(int i, int i2, int i3) {
        int i4 = ((i2 - 1) / 50) + 1;
        int i5 = i3 == -1 ? 0 : i3;
        Constants._assert(i3 != 0);
        if (i4 <= 511) {
            codeABC(36, i, i5, i4);
        } else {
            codeABC(36, i, i5, 0);
            code(i4, this.ls.lastline);
        }
        this.freereg = (short) (i + 1);
    }
}
