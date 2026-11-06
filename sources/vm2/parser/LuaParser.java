package vm2.parser;

import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import vm2.LuaString;
import vm2.LuaValue;
import vm2.ast.Block;
import vm2.ast.Chunk;
import vm2.ast.Exp;
import vm2.ast.FuncBody;
import vm2.ast.FuncName;
import vm2.ast.Name;
import vm2.ast.ParList;
import vm2.ast.Stat;
import vm2.ast.Str;
import vm2.ast.SyntaxElement;
import vm2.ast.TableField;

/* JADX INFO: loaded from: classes6.dex */
public class LuaParser implements LuaParserConstants {
    private static int[] jj_la1_0;
    private static int[] jj_la1_1;
    private static int[] jj_la1_2;
    private final JJCalls[] jj_2_rtns;
    private int jj_endpos;
    private List jj_expentries;
    private int[] jj_expentry;
    private int jj_gc;
    private int jj_gen;
    SimpleCharStream jj_input_stream;
    private int jj_kind;
    private int jj_la;
    private final int[] jj_la1;
    private Token jj_lastpos;
    private int[] jj_lasttokens;
    private final LookaheadSuccess jj_ls;
    public Token jj_nt;
    private int jj_ntk;
    private boolean jj_rescan;
    private Token jj_scanpos;
    public Token token;
    public LuaParserTokenManager token_source;

    public static final class JJCalls {
        int arg;
        Token first;
        int gen;
        JJCalls next;
    }

    public final void disable_tracing() {
    }

    public final void enable_tracing() {
    }

    static {
        LuaValue.valueOf(true);
        jj_la1_init_0();
        jj_la1_init_1();
        jj_la1_init_2();
    }

    public static void main(String[] strArr) throws ParseException {
        new LuaParser(System.in).Chunk();
    }

    private static Exp.VarExp assertvarexp(Exp.PrimaryExp primaryExp) throws ParseException {
        if (!primaryExp.isvarexp()) {
            throw new ParseException("expected variable");
        }
        return (Exp.VarExp) primaryExp;
    }

    private static Exp.FuncCall assertfunccall(Exp.PrimaryExp primaryExp) throws ParseException {
        if (!primaryExp.isfunccall()) {
            throw new ParseException("expected function call");
        }
        return (Exp.FuncCall) primaryExp;
    }

    public SimpleCharStream getCharStream() {
        return this.jj_input_stream;
    }

    private long LineInfo() {
        return (((long) this.jj_input_stream.getBeginLine()) << 32) | ((long) this.jj_input_stream.getBeginColumn());
    }

    private void L(SyntaxElement syntaxElement, long j) {
        syntaxElement.beginLine = (int) (j >> 32);
        syntaxElement.beginColumn = (short) j;
        Token token = this.token;
        syntaxElement.endLine = token.endLine;
        syntaxElement.endColumn = (short) token.endColumn;
    }

    private void L(SyntaxElement syntaxElement, Token token) {
        syntaxElement.beginLine = token.beginLine;
        syntaxElement.beginColumn = (short) token.beginColumn;
        Token token2 = this.token;
        syntaxElement.endLine = token2.endLine;
        syntaxElement.endColumn = (short) token2.endColumn;
    }

    public final Chunk Chunk() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 69) {
            jj_consume_token(69);
            this.token_source.SwitchTo(1);
        } else {
            this.jj_la1[0] = this.jj_gen;
        }
        Block Block = Block();
        jj_consume_token(0);
        Chunk chunk = new Chunk(Block);
        L(chunk, jLineInfo);
        return chunk;
    }

    public final Block Block() throws ParseException {
        Block block = new Block();
        long jLineInfo = LineInfo();
        while (true) {
            int iJj_ntk = this.jj_ntk;
            if (iJj_ntk == -1) {
                iJj_ntk = jj_ntk();
            }
            if (iJj_ntk != 30 && iJj_ntk != 31 && iJj_ntk != 41 && iJj_ntk != 46 && iJj_ntk != 65 && iJj_ntk != 70 && iJj_ntk != 75 && iJj_ntk != 50 && iJj_ntk != 51) {
                switch (iJj_ntk) {
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        this.jj_la1[1] = this.jj_gen;
                        int iJj_ntk2 = this.jj_ntk;
                        if (iJj_ntk2 == -1) {
                            iJj_ntk2 = jj_ntk();
                        }
                        if (iJj_ntk2 == 45) {
                            block.add(ReturnStat());
                        } else {
                            this.jj_la1[2] = this.jj_gen;
                        }
                        L(block, jLineInfo);
                        return block;
                }
            }
            block.add(Stat());
        }
    }

    public final Stat Stat() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 30) {
            jj_consume_token(30);
            Stat statBreakstat = Stat.breakstat();
            L(statBreakstat, jLineInfo);
            return statBreakstat;
        }
        if (iJj_ntk == 31) {
            jj_consume_token(31);
            Block Block = Block();
            jj_consume_token(34);
            Stat statBlock = Stat.block(Block);
            L(statBlock, jLineInfo);
            return statBlock;
        }
        if (iJj_ntk == 38) {
            jj_consume_token(38);
            Stat statGotostat = Stat.gotostat(jj_consume_token(51).image);
            L(statGotostat, jLineInfo);
            return statGotostat;
        }
        if (iJj_ntk == 39) {
            Stat statIfThenElse = IfThenElse();
            L(statIfThenElse, jLineInfo);
            return statIfThenElse;
        }
        if (iJj_ntk == 46) {
            jj_consume_token(46);
            Block Block2 = Block();
            jj_consume_token(49);
            Stat statRepeatuntil = Stat.repeatuntil(Block2, Exp());
            L(statRepeatuntil, jLineInfo);
            return statRepeatuntil;
        }
        if (iJj_ntk == 50) {
            jj_consume_token(50);
            Exp Exp = Exp();
            jj_consume_token(31);
            Block Block3 = Block();
            jj_consume_token(34);
            Stat statWhiledo = Stat.whiledo(Exp, Block3);
            L(statWhiledo, jLineInfo);
            return statWhiledo;
        }
        if (iJj_ntk == 65) {
            Stat statLabel = Label();
            L(statLabel, jLineInfo);
            return statLabel;
        }
        List<Exp> listExpList = null;
        Exp Exp2 = null;
        if (iJj_ntk == 70) {
            jj_consume_token(70);
            return null;
        }
        this.jj_la1[5] = this.jj_gen;
        if (jj_2_1(3)) {
            jj_consume_token(36);
            Token tokenJj_consume_token = jj_consume_token(51);
            jj_consume_token(71);
            Exp Exp3 = Exp();
            jj_consume_token(72);
            Exp Exp4 = Exp();
            int iJj_ntk2 = this.jj_ntk;
            if (iJj_ntk2 == -1) {
                iJj_ntk2 = jj_ntk();
            }
            if (iJj_ntk2 == 72) {
                jj_consume_token(72);
                Exp2 = Exp();
            } else {
                this.jj_la1[3] = this.jj_gen;
            }
            jj_consume_token(31);
            Block Block4 = Block();
            jj_consume_token(34);
            Stat statFornumeric = Stat.fornumeric(tokenJj_consume_token.image, Exp3, Exp4, Exp2, Block4);
            L(statFornumeric, jLineInfo);
            return statFornumeric;
        }
        int iJj_ntk3 = this.jj_ntk;
        if (iJj_ntk3 == -1) {
            iJj_ntk3 = jj_ntk();
        }
        if (iJj_ntk3 == 36) {
            jj_consume_token(36);
            List<Name> listNameList = NameList();
            jj_consume_token(40);
            List<Exp> listExpList2 = ExpList();
            jj_consume_token(31);
            Block Block5 = Block();
            jj_consume_token(34);
            Stat statForgeneric = Stat.forgeneric(listNameList, listExpList2, Block5);
            L(statForgeneric, jLineInfo);
            return statForgeneric;
        }
        if (iJj_ntk3 == 37) {
            jj_consume_token(37);
            Stat statFunctiondef = Stat.functiondef(FuncName(), FuncBody());
            L(statFunctiondef, jLineInfo);
            return statFunctiondef;
        }
        this.jj_la1[6] = this.jj_gen;
        if (jj_2_2(2)) {
            jj_consume_token(41);
            jj_consume_token(37);
            Token tokenJj_consume_token2 = jj_consume_token(51);
            Stat statLocalfunctiondef = Stat.localfunctiondef(tokenJj_consume_token2.image, FuncBody());
            L(statLocalfunctiondef, jLineInfo);
            return statLocalfunctiondef;
        }
        int iJj_ntk4 = this.jj_ntk;
        if (iJj_ntk4 == -1) {
            iJj_ntk4 = jj_ntk();
        }
        if (iJj_ntk4 != 41) {
            if (iJj_ntk4 == 51 || iJj_ntk4 == 75) {
                Stat statExprStat = ExprStat();
                L(statExprStat, jLineInfo);
                return statExprStat;
            }
            this.jj_la1[7] = this.jj_gen;
            jj_consume_token(-1);
            throw new ParseException();
        }
        jj_consume_token(41);
        List<Name> listNameList2 = NameList();
        int iJj_ntk5 = this.jj_ntk;
        if (iJj_ntk5 == -1) {
            iJj_ntk5 = jj_ntk();
        }
        if (iJj_ntk5 == 71) {
            jj_consume_token(71);
            listExpList = ExpList();
        } else {
            this.jj_la1[4] = this.jj_gen;
        }
        Stat statLocalassignment = Stat.localassignment(listNameList2, listExpList);
        L(statLocalassignment, jLineInfo);
        return statLocalassignment;
    }

    public final Stat IfThenElse() throws ParseException {
        jj_consume_token(39);
        Exp Exp = Exp();
        jj_consume_token(47);
        Block Block = Block();
        Block Block2 = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        while (true) {
            int iJj_ntk = this.jj_ntk;
            if (iJj_ntk == -1) {
                iJj_ntk = jj_ntk();
            }
            if (iJj_ntk != 33) {
                break;
            }
            jj_consume_token(33);
            Exp Exp2 = Exp();
            jj_consume_token(47);
            Block Block3 = Block();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            arrayList.add(Exp2);
            arrayList2.add(Block3);
        }
        this.jj_la1[8] = this.jj_gen;
        int iJj_ntk2 = this.jj_ntk;
        if (iJj_ntk2 == -1) {
            iJj_ntk2 = jj_ntk();
        }
        if (iJj_ntk2 == 32) {
            jj_consume_token(32);
            Block2 = Block();
        } else {
            this.jj_la1[9] = this.jj_gen;
        }
        jj_consume_token(34);
        return Stat.ifthenelse(Exp, Block, arrayList, arrayList2, Block2);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final vm2.ast.Stat ReturnStat() throws vm2.parser.ParseException {
        /*
            r6 = this;
            long r0 = r6.LineInfo()
            r2 = 45
            r6.jj_consume_token(r2)
            int r2 = r6.jj_ntk
            r3 = -1
            if (r2 != r3) goto L12
            int r2 = r6.jj_ntk()
        L12:
            r4 = 35
            if (r2 == r4) goto L57
            r4 = 37
            if (r2 == r4) goto L57
            r4 = 48
            if (r2 == r4) goto L57
            r4 = 69
            if (r2 == r4) goto L57
            r4 = 75
            if (r2 == r4) goto L57
            r4 = 83
            if (r2 == r4) goto L57
            r4 = 42
            if (r2 == r4) goto L57
            r4 = 43
            if (r2 == r4) goto L57
            r4 = 51
            if (r2 == r4) goto L57
            r4 = 52
            if (r2 == r4) goto L57
            r4 = 61
            if (r2 == r4) goto L57
            r4 = 62
            if (r2 == r4) goto L57
            r4 = 79
            if (r2 == r4) goto L57
            r4 = 80
            if (r2 == r4) goto L57
            switch(r2) {
                case 23: goto L57;
                case 24: goto L57;
                case 25: goto L57;
                case 26: goto L57;
                case 27: goto L57;
                default: goto L4d;
            }
        L4d:
            int[] r2 = r6.jj_la1
            r4 = 10
            int r5 = r6.jj_gen
            r2[r4] = r5
            r2 = 0
            goto L5b
        L57:
            java.util.List r2 = r6.ExpList()
        L5b:
            int r4 = r6.jj_ntk
            if (r4 != r3) goto L63
            int r4 = r6.jj_ntk()
        L63:
            r3 = 70
            if (r4 == r3) goto L70
            int[] r3 = r6.jj_la1
            r4 = 11
            int r5 = r6.jj_gen
            r3[r4] = r5
            goto L73
        L70:
            r6.jj_consume_token(r3)
        L73:
            vm2.ast.Stat r2 = vm2.ast.Stat.returnstat(r2)
            r6.L(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParser.ReturnStat():vm2.ast.Stat");
    }

    public final Stat Label() throws ParseException {
        jj_consume_token(65);
        Token tokenJj_consume_token = jj_consume_token(51);
        jj_consume_token(65);
        return Stat.labelstat(tokenJj_consume_token.image);
    }

    public final Stat ExprStat() throws ParseException {
        Stat statAssign;
        long jLineInfo = LineInfo();
        Exp.PrimaryExp PrimaryExp = PrimaryExp();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 71 || iJj_ntk == 72) {
            statAssign = Assign(assertvarexp(PrimaryExp));
        } else {
            this.jj_la1[12] = this.jj_gen;
            statAssign = null;
        }
        if (statAssign == null) {
            statAssign = Stat.functioncall(assertfunccall(PrimaryExp));
        }
        L(statAssign, jLineInfo);
        return statAssign;
    }

    public final Stat Assign(Exp.VarExp varExp) throws ParseException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(varExp);
        long jLineInfo = LineInfo();
        while (true) {
            int iJj_ntk = this.jj_ntk;
            if (iJj_ntk == -1) {
                iJj_ntk = jj_ntk();
            }
            if (iJj_ntk != 72) {
                this.jj_la1[13] = this.jj_gen;
                jj_consume_token(71);
                Stat statAssignment = Stat.assignment(arrayList, ExpList());
                L(statAssignment, jLineInfo);
                return statAssignment;
            }
            jj_consume_token(72);
            arrayList.add(VarExp());
        }
    }

    public final Exp.VarExp VarExp() throws ParseException {
        return assertvarexp(PrimaryExp());
    }

    public final FuncName FuncName() throws ParseException {
        Token tokenJj_consume_token = jj_consume_token(51);
        FuncName funcName = new FuncName(tokenJj_consume_token.image);
        while (true) {
            int iJj_ntk = this.jj_ntk;
            if (iJj_ntk == -1) {
                iJj_ntk = jj_ntk();
            }
            if (iJj_ntk != 73) {
                break;
            }
            jj_consume_token(73);
            tokenJj_consume_token = jj_consume_token(51);
            funcName.adddot(tokenJj_consume_token.image);
        }
        this.jj_la1[14] = this.jj_gen;
        int iJj_ntk2 = this.jj_ntk;
        if (iJj_ntk2 == -1) {
            iJj_ntk2 = jj_ntk();
        }
        if (iJj_ntk2 == 74) {
            jj_consume_token(74);
            tokenJj_consume_token = jj_consume_token(51);
            funcName.method = tokenJj_consume_token.image;
        } else {
            this.jj_la1[15] = this.jj_gen;
        }
        L(funcName, tokenJj_consume_token);
        return funcName;
    }

    public final Exp.PrimaryExp PrefixExp() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 51) {
            Exp.NameExp nameExpNameprefix = Exp.nameprefix(jj_consume_token(51).image);
            L(nameExpNameprefix, jLineInfo);
            return nameExpNameprefix;
        }
        if (iJj_ntk == 75) {
            jj_consume_token(75);
            Exp Exp = Exp();
            jj_consume_token(76);
            Exp.ParensExp parensExpParensprefix = Exp.parensprefix(Exp);
            L(parensExpParensprefix, jLineInfo);
            return parensExpParensprefix;
        }
        this.jj_la1[16] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final Exp.PrimaryExp PrimaryExp() throws ParseException {
        long jLineInfo = LineInfo();
        Exp.PrimaryExp primaryExpPrefixExp = PrefixExp();
        while (jj_2_3(2)) {
            primaryExpPrefixExp = PostfixOp(primaryExpPrefixExp);
        }
        L(primaryExpPrefixExp, jLineInfo);
        return primaryExpPrefixExp;
    }

    public final Exp.PrimaryExp PostfixOp(Exp.PrimaryExp primaryExp) throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk != 61 && iJj_ntk != 62) {
            if (iJj_ntk == 77) {
                jj_consume_token(77);
                Exp Exp = Exp();
                jj_consume_token(78);
                Exp.IndexExp indexExpIndexop = Exp.indexop(primaryExp, Exp);
                L(indexExpIndexop, jLineInfo);
                return indexExpIndexop;
            }
            if (iJj_ntk != 80) {
                switch (iJj_ntk) {
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                        break;
                    default:
                        switch (iJj_ntk) {
                            case 73:
                                jj_consume_token(73);
                                Exp.FieldExp fieldExpFieldop = Exp.fieldop(primaryExp, jj_consume_token(51).image);
                                L(fieldExpFieldop, jLineInfo);
                                return fieldExpFieldop;
                            case 74:
                                jj_consume_token(74);
                                Token tokenJj_consume_token = jj_consume_token(51);
                                Exp.MethodCall methodCallMethodop = Exp.methodop(primaryExp, tokenJj_consume_token.image, FuncArgs());
                                L(methodCallMethodop, jLineInfo);
                                return methodCallMethodop;
                            case 75:
                                break;
                            default:
                                this.jj_la1[17] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                        break;
                }
            }
        }
        Exp.FuncCall funcCallFunctionop = Exp.functionop(primaryExp, FuncArgs());
        L(funcCallFunctionop, jLineInfo);
        return funcCallFunctionop;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final vm2.ast.FuncArgs FuncArgs() throws vm2.parser.ParseException {
        /*
            r8 = this;
            long r0 = r8.LineInfo()
            int r2 = r8.jj_ntk
            r3 = -1
            if (r2 != r3) goto Ld
            int r2 = r8.jj_ntk()
        Ld:
            r4 = 61
            if (r2 == r4) goto L96
            r5 = 62
            if (r2 == r5) goto L96
            r6 = 80
            r7 = 75
            if (r2 == r7) goto L3d
            if (r2 == r6) goto L31
            switch(r2) {
                case 23: goto L96;
                case 24: goto L96;
                case 25: goto L96;
                case 26: goto L96;
                case 27: goto L96;
                default: goto L20;
            }
        L20:
            int[] r0 = r8.jj_la1
            r1 = 19
            int r2 = r8.jj_gen
            r0[r1] = r2
            r8.jj_consume_token(r3)
            vm2.parser.ParseException r0 = new vm2.parser.ParseException
            r0.<init>()
            throw r0
        L31:
            vm2.ast.TableConstructor r2 = r8.TableConstructor()
            vm2.ast.FuncArgs r2 = vm2.ast.FuncArgs.tableconstructor(r2)
            r8.L(r2, r0)
            return r2
        L3d:
            r8.jj_consume_token(r7)
            int r2 = r8.jj_ntk
            if (r2 != r3) goto L48
            int r2 = r8.jj_ntk()
        L48:
            r3 = 35
            if (r2 == r3) goto L85
            r3 = 37
            if (r2 == r3) goto L85
            r3 = 48
            if (r2 == r3) goto L85
            r3 = 69
            if (r2 == r3) goto L85
            if (r2 == r7) goto L85
            r3 = 83
            if (r2 == r3) goto L85
            r3 = 42
            if (r2 == r3) goto L85
            r3 = 43
            if (r2 == r3) goto L85
            r3 = 51
            if (r2 == r3) goto L85
            r3 = 52
            if (r2 == r3) goto L85
            if (r2 == r4) goto L85
            if (r2 == r5) goto L85
            r3 = 79
            if (r2 == r3) goto L85
            if (r2 == r6) goto L85
            switch(r2) {
                case 23: goto L85;
                case 24: goto L85;
                case 25: goto L85;
                case 26: goto L85;
                case 27: goto L85;
                default: goto L7b;
            }
        L7b:
            int[] r2 = r8.jj_la1
            r3 = 18
            int r4 = r8.jj_gen
            r2[r3] = r4
            r2 = 0
            goto L89
        L85:
            java.util.List r2 = r8.ExpList()
        L89:
            r3 = 76
            r8.jj_consume_token(r3)
            vm2.ast.FuncArgs r2 = vm2.ast.FuncArgs.explist(r2)
            r8.L(r2, r0)
            return r2
        L96:
            vm2.LuaString r2 = r8.Str()
            vm2.ast.FuncArgs r2 = vm2.ast.FuncArgs.string(r2)
            r8.L(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParser.FuncArgs():vm2.ast.FuncArgs");
    }

    public final List<Name> NameList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Name(jj_consume_token(51).image));
        while (jj_2_4(2)) {
            jj_consume_token(72);
            arrayList.add(new Name(jj_consume_token(51).image));
        }
        return arrayList;
    }

    public final List<Exp> ExpList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Exp());
        while (true) {
            int iJj_ntk = this.jj_ntk;
            if (iJj_ntk == -1) {
                iJj_ntk = jj_ntk();
            }
            if (iJj_ntk != 72) {
                this.jj_la1[20] = this.jj_gen;
                return arrayList;
            }
            jj_consume_token(72);
            arrayList.add(Exp());
        }
    }

    public final Exp SimpleExp() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 35) {
            jj_consume_token(35);
            Exp expConstant = Exp.constant(LuaValue.FALSE);
            L(expConstant, jLineInfo);
            return expConstant;
        }
        if (iJj_ntk == 37) {
            Exp expAnonymousfunction = Exp.anonymousfunction(FunctionCall());
            L(expAnonymousfunction, jLineInfo);
            return expAnonymousfunction;
        }
        if (iJj_ntk == 42) {
            jj_consume_token(42);
            Exp expConstant2 = Exp.constant(LuaValue.NIL);
            L(expConstant2, jLineInfo);
            return expConstant2;
        }
        if (iJj_ntk == 48) {
            jj_consume_token(48);
            Exp expConstant3 = Exp.constant(LuaValue.TRUE);
            L(expConstant3, jLineInfo);
            return expConstant3;
        }
        if (iJj_ntk == 75 || iJj_ntk == 51) {
            return PrimaryExp();
        }
        if (iJj_ntk == 52) {
            Exp expNumberconstant = Exp.numberconstant(jj_consume_token(52).image);
            L(expNumberconstant, jLineInfo);
            return expNumberconstant;
        }
        if (iJj_ntk != 61 && iJj_ntk != 62) {
            if (iJj_ntk == 79) {
                jj_consume_token(79);
                Exp expVarargs = Exp.varargs();
                L(expVarargs, jLineInfo);
                return expVarargs;
            }
            if (iJj_ntk == 80) {
                Exp expTableconstructor = Exp.tableconstructor(TableConstructor());
                L(expTableconstructor, jLineInfo);
                return expTableconstructor;
            }
            switch (iJj_ntk) {
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    this.jj_la1[21] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
            }
        }
        Exp expConstant4 = Exp.constant(Str());
        L(expConstant4, jLineInfo);
        return expConstant4;
    }

    public final LuaString Str() throws ParseException {
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 61) {
            jj_consume_token(61);
            return Str.quoteString(this.token.image);
        }
        if (iJj_ntk == 62) {
            jj_consume_token(62);
            return Str.charString(this.token.image);
        }
        switch (iJj_ntk) {
            case 23:
                jj_consume_token(23);
                return Str.longString(this.token.image);
            case 24:
                jj_consume_token(24);
                return Str.longString(this.token.image);
            case 25:
                jj_consume_token(25);
                return Str.longString(this.token.image);
            case 26:
                jj_consume_token(26);
                return Str.longString(this.token.image);
            case 27:
                jj_consume_token(27);
                return Str.longString(this.token.image);
            default:
                this.jj_la1[22] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
    }

    public final Exp Exp() throws ParseException {
        Exp expSimpleExp;
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 35 || iJj_ntk == 37 || iJj_ntk == 48) {
            expSimpleExp = SimpleExp();
        } else {
            if (iJj_ntk != 69) {
                if (iJj_ntk != 75) {
                    if (iJj_ntk != 83) {
                        if (iJj_ntk != 42) {
                            if (iJj_ntk != 43) {
                                if (iJj_ntk != 51 && iJj_ntk != 52 && iJj_ntk != 61 && iJj_ntk != 62 && iJj_ntk != 79 && iJj_ntk != 80) {
                                    switch (iJj_ntk) {
                                        case 23:
                                        case 24:
                                        case 25:
                                        case 26:
                                        case 27:
                                            break;
                                        default:
                                            this.jj_la1[23] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                                }
                            }
                        }
                    }
                }
                expSimpleExp = SimpleExp();
            }
            expSimpleExp = Exp.unaryexp(Unop(), Exp());
        }
        while (jj_2_5(2)) {
            expSimpleExp = Exp.binaryexp(expSimpleExp, Binop(), Exp());
        }
        L(expSimpleExp, jLineInfo);
        return expSimpleExp;
    }

    public final FuncBody FunctionCall() throws ParseException {
        long jLineInfo = LineInfo();
        jj_consume_token(37);
        FuncBody FuncBody = FuncBody();
        L(FuncBody, jLineInfo);
        return FuncBody;
    }

    public final FuncBody FuncBody() throws ParseException {
        ParList ParList;
        long jLineInfo = LineInfo();
        jj_consume_token(75);
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 51 || iJj_ntk == 79) {
            ParList = ParList();
        } else {
            this.jj_la1[24] = this.jj_gen;
            ParList = null;
        }
        jj_consume_token(76);
        Block Block = Block();
        jj_consume_token(34);
        FuncBody funcBody = new FuncBody(ParList, Block);
        L(funcBody, jLineInfo);
        return funcBody;
    }

    public final ParList ParList() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        boolean z = true;
        if (iJj_ntk != 51) {
            if (iJj_ntk == 79) {
                jj_consume_token(79);
                ParList parList = new ParList(null, true);
                L(parList, jLineInfo);
                return parList;
            }
            this.jj_la1[26] = this.jj_gen;
            jj_consume_token(-1);
            throw new ParseException();
        }
        List<Name> listNameList = NameList();
        int iJj_ntk2 = this.jj_ntk;
        if (iJj_ntk2 == -1) {
            iJj_ntk2 = jj_ntk();
        }
        if (iJj_ntk2 == 72) {
            jj_consume_token(72);
            jj_consume_token(79);
        } else {
            this.jj_la1[25] = this.jj_gen;
            z = false;
        }
        ParList parList2 = new ParList(listNameList, z);
        L(parList2, jLineInfo);
        return parList2;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final vm2.ast.TableConstructor TableConstructor() throws vm2.parser.ParseException {
        /*
            r6 = this;
            vm2.ast.TableConstructor r0 = new vm2.ast.TableConstructor
            r0.<init>()
            long r1 = r6.LineInfo()
            r3 = 80
            r6.jj_consume_token(r3)
            int r4 = r6.jj_ntk
            r5 = -1
            if (r4 != r5) goto L17
            int r4 = r6.jj_ntk()
        L17:
            r5 = 35
            if (r4 == r5) goto L5d
            r5 = 37
            if (r4 == r5) goto L5d
            r5 = 48
            if (r4 == r5) goto L5d
            r5 = 69
            if (r4 == r5) goto L5d
            r5 = 75
            if (r4 == r5) goto L5d
            r5 = 77
            if (r4 == r5) goto L5d
            r5 = 83
            if (r4 == r5) goto L5d
            r5 = 42
            if (r4 == r5) goto L5d
            r5 = 43
            if (r4 == r5) goto L5d
            r5 = 51
            if (r4 == r5) goto L5d
            r5 = 52
            if (r4 == r5) goto L5d
            r5 = 61
            if (r4 == r5) goto L5d
            r5 = 62
            if (r4 == r5) goto L5d
            r5 = 79
            if (r4 == r5) goto L5d
            if (r4 == r3) goto L5d
            switch(r4) {
                case 23: goto L5d;
                case 24: goto L5d;
                case 25: goto L5d;
                case 26: goto L5d;
                case 27: goto L5d;
                default: goto L54;
            }
        L54:
            int[] r3 = r6.jj_la1
            r4 = 27
            int r5 = r6.jj_gen
            r3[r4] = r5
            goto L63
        L5d:
            java.util.List r3 = r6.FieldList()
            r0.fields = r3
        L63:
            r3 = 81
            r6.jj_consume_token(r3)
            r6.L(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParser.TableConstructor():vm2.ast.TableConstructor");
    }

    public final List<TableField> FieldList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Field());
        while (jj_2_6(2)) {
            FieldSep();
            arrayList.add(Field());
        }
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 70 || iJj_ntk == 72) {
            FieldSep();
            return arrayList;
        }
        this.jj_la1[28] = this.jj_gen;
        return arrayList;
    }

    public final TableField Field() throws ParseException {
        long jLineInfo = LineInfo();
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 77) {
            jj_consume_token(77);
            Exp Exp = Exp();
            jj_consume_token(78);
            jj_consume_token(71);
            TableField tableFieldKeyedField = TableField.keyedField(Exp, Exp());
            L(tableFieldKeyedField, jLineInfo);
            return tableFieldKeyedField;
        }
        this.jj_la1[29] = this.jj_gen;
        if (jj_2_7(2)) {
            Token tokenJj_consume_token = jj_consume_token(51);
            jj_consume_token(71);
            TableField tableFieldNamedField = TableField.namedField(tokenJj_consume_token.image, Exp());
            L(tableFieldNamedField, jLineInfo);
            return tableFieldNamedField;
        }
        int iJj_ntk2 = this.jj_ntk;
        if (iJj_ntk2 == -1) {
            iJj_ntk2 = jj_ntk();
        }
        if (iJj_ntk2 != 35 && iJj_ntk2 != 37 && iJj_ntk2 != 48 && iJj_ntk2 != 69 && iJj_ntk2 != 75 && iJj_ntk2 != 83 && iJj_ntk2 != 42 && iJj_ntk2 != 43 && iJj_ntk2 != 51 && iJj_ntk2 != 52 && iJj_ntk2 != 61 && iJj_ntk2 != 62 && iJj_ntk2 != 79 && iJj_ntk2 != 80) {
            switch (iJj_ntk2) {
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    this.jj_la1[30] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
            }
        }
        TableField tableFieldListField = TableField.listField(Exp());
        L(tableFieldListField, jLineInfo);
        return tableFieldListField;
    }

    public final void FieldSep() throws ParseException {
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 70) {
            jj_consume_token(70);
        } else if (iJj_ntk == 72) {
            jj_consume_token(72);
        } else {
            this.jj_la1[31] = this.jj_gen;
            jj_consume_token(-1);
            throw new ParseException();
        }
    }

    public final int Binop() throws ParseException {
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 29) {
            jj_consume_token(29);
            return 60;
        }
        if (iJj_ntk != 44) {
            switch (iJj_ntk) {
                case 82:
                    jj_consume_token(82);
                    return 14;
                case 83:
                    jj_consume_token(83);
                    return 15;
                case 84:
                    jj_consume_token(84);
                    return 16;
                case 85:
                    jj_consume_token(85);
                    return 17;
                case 86:
                    jj_consume_token(86);
                    return 19;
                case 87:
                    jj_consume_token(87);
                    return 18;
                case 88:
                    jj_consume_token(88);
                    return 22;
                case 89:
                    jj_consume_token(89);
                    return 26;
                case 90:
                    jj_consume_token(90);
                    return 23;
                case 91:
                    jj_consume_token(91);
                    return 63;
                case 92:
                    jj_consume_token(92);
                    return 62;
                case 93:
                    jj_consume_token(93);
                    return 25;
                case 94:
                    jj_consume_token(94);
                    return 61;
                default:
                    this.jj_la1[32] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
            }
        }
        jj_consume_token(44);
        return 59;
    }

    public final int Unop() throws ParseException {
        int iJj_ntk = this.jj_ntk;
        if (iJj_ntk == -1) {
            iJj_ntk = jj_ntk();
        }
        if (iJj_ntk == 43) {
            jj_consume_token(43);
            return 21;
        }
        if (iJj_ntk == 69) {
            jj_consume_token(69);
            return 13;
        }
        if (iJj_ntk == 83) {
            jj_consume_token(83);
            return 20;
        }
        this.jj_la1[33] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    private boolean jj_2_1(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_1();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(0, i);
        }
    }

    private boolean jj_2_2(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return !jj_3_2();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(1, i);
        }
    }

    private boolean jj_2_3(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_3();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(2, i);
        }
    }

    private boolean jj_2_4(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(3, i);
        }
    }

    private boolean jj_2_5(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_5();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(4, i);
        }
    }

    private boolean jj_2_6(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_6();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(5, i);
        }
    }

    private boolean jj_2_7(int i) {
        this.jj_la = i;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_7();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(6, i);
        }
    }

    private boolean jj_3R_43() {
        return jj_3R_58();
    }

    private boolean jj_3R_42() {
        return jj_3R_57();
    }

    private boolean jj_3R_41() {
        if (jj_scan_token(75)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_56()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(76);
    }

    private boolean jj_3R_38() {
        Token token = this.jj_scanpos;
        if (!jj_3R_41()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_42()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_43();
    }

    private boolean jj_3_3() {
        return jj_3R_10();
    }

    private boolean jj_3R_18() {
        return jj_3R_38();
    }

    private boolean jj_3R_17() {
        return jj_scan_token(74) || jj_scan_token(51);
    }

    private boolean jj_3R_16() {
        return jj_scan_token(77) || jj_3R_12();
    }

    private boolean jj_3R_35() {
        return jj_3R_40();
    }

    private boolean jj_3R_15() {
        return jj_scan_token(73) || jj_scan_token(51);
    }

    private boolean jj_3R_10() {
        Token token = this.jj_scanpos;
        if (!jj_3R_15()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_16()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_17()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_18();
    }

    private boolean jj_3R_59() {
        return jj_scan_token(37);
    }

    private boolean jj_3_5() {
        return jj_3R_11() || jj_3R_12();
    }

    private boolean jj_3R_60() {
        return jj_3R_70();
    }

    private boolean jj_3R_55() {
        return jj_scan_token(69);
    }

    private boolean jj_3R_54() {
        return jj_scan_token(43);
    }

    private boolean jj_3R_53() {
        return jj_scan_token(83);
    }

    private boolean jj_3R_40() {
        Token token = this.jj_scanpos;
        if (!jj_3R_53()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_54()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_55();
    }

    private boolean jj_3R_34() {
        return jj_3R_39();
    }

    private boolean jj_3R_12() {
        Token token = this.jj_scanpos;
        if (!jj_3R_34()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_35();
    }

    private boolean jj_3R_73() {
        return jj_scan_token(75);
    }

    private boolean jj_3R_33() {
        return jj_scan_token(44);
    }

    private boolean jj_3R_72() {
        return jj_scan_token(51);
    }

    private boolean jj_3R_70() {
        Token token = this.jj_scanpos;
        if (!jj_3R_72()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_73();
    }

    private boolean jj_3_2() {
        return jj_scan_token(41) || jj_scan_token(37);
    }

    private boolean jj_3R_32() {
        return jj_scan_token(29);
    }

    private boolean jj_3R_31() {
        return jj_scan_token(94);
    }

    private boolean jj_3_4() {
        return jj_scan_token(72) || jj_scan_token(51);
    }

    private boolean jj_3R_30() {
        return jj_scan_token(93);
    }

    private boolean jj_3_1() {
        return jj_scan_token(36) || jj_scan_token(51) || jj_scan_token(71);
    }

    private boolean jj_3R_29() {
        return jj_scan_token(92);
    }

    private boolean jj_3R_28() {
        return jj_scan_token(91);
    }

    private boolean jj_3R_69() {
        return jj_scan_token(27);
    }

    private boolean jj_3R_27() {
        return jj_scan_token(90);
    }

    private boolean jj_3R_68() {
        return jj_scan_token(26);
    }

    private boolean jj_3R_26() {
        return jj_scan_token(89);
    }

    private boolean jj_3R_67() {
        return jj_scan_token(25);
    }

    private boolean jj_3R_25() {
        return jj_scan_token(88);
    }

    private boolean jj_3R_66() {
        return jj_scan_token(24);
    }

    private boolean jj_3R_24() {
        return jj_scan_token(87);
    }

    private boolean jj_3R_65() {
        return jj_scan_token(23);
    }

    private boolean jj_3R_23() {
        return jj_scan_token(86);
    }

    private boolean jj_3R_64() {
        return jj_scan_token(62);
    }

    private boolean jj_3R_22() {
        return jj_scan_token(85);
    }

    private boolean jj_3R_63() {
        return jj_scan_token(61);
    }

    private boolean jj_3R_58() {
        Token token = this.jj_scanpos;
        if (!jj_3R_63()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_64()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_65()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_66()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_67()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_68()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_69();
    }

    private boolean jj_3R_21() {
        return jj_scan_token(84);
    }

    private boolean jj_3R_20() {
        return jj_scan_token(83);
    }

    private boolean jj_3R_19() {
        return jj_scan_token(82);
    }

    private boolean jj_3R_11() {
        Token token = this.jj_scanpos;
        if (!jj_3R_19()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_20()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_21()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_22()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_23()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_24()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_25()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_26()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_27()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_28()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_29()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_30()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_31()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_32()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_33();
    }

    private boolean jj_3_6() {
        return jj_3R_13() || jj_3R_14();
    }

    private boolean jj_3R_52() {
        return jj_3R_60();
    }

    private boolean jj_3R_51() {
        return jj_3R_59();
    }

    private boolean jj_3R_50() {
        return jj_3R_57();
    }

    private boolean jj_3R_13() {
        Token token = this.jj_scanpos;
        if (!jj_scan_token(72)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(70);
    }

    private boolean jj_3R_49() {
        return jj_scan_token(79);
    }

    private boolean jj_3R_48() {
        return jj_3R_58();
    }

    private boolean jj_3R_47() {
        return jj_scan_token(52);
    }

    private boolean jj_3R_46() {
        return jj_scan_token(35);
    }

    private boolean jj_3R_45() {
        return jj_scan_token(48);
    }

    private boolean jj_3R_44() {
        return jj_scan_token(42);
    }

    private boolean jj_3R_39() {
        Token token = this.jj_scanpos;
        if (!jj_3R_44()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_45()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_46()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_47()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_48()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_49()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_50()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_51()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_52();
    }

    private boolean jj_3R_37() {
        return jj_3R_12();
    }

    private boolean jj_3_7() {
        return jj_scan_token(51) || jj_scan_token(71);
    }

    private boolean jj_3R_14() {
        Token token = this.jj_scanpos;
        if (!jj_3R_36()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3_7()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_37();
    }

    private boolean jj_3R_36() {
        return jj_scan_token(77);
    }

    private boolean jj_3R_71() {
        return jj_3R_14();
    }

    private boolean jj_3R_61() {
        return jj_3R_12();
    }

    private boolean jj_3R_62() {
        return jj_3R_71();
    }

    private boolean jj_3R_57() {
        if (jj_scan_token(80)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_62()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(81);
    }

    private boolean jj_3R_56() {
        return jj_3R_61();
    }

    private static void jj_la1_init_0() {
        jj_la1_0 = new int[]{0, -1073741824, 0, 0, 0, -1073741824, 0, 0, 0, 0, 260046848, 0, 0, 0, 0, 0, 0, 260046848, 260046848, 260046848, 0, 260046848, 260046848, 260046848, 0, 0, 0, 260046848, 0, 0, 260046848, 0, 536870912, 0};
    }

    private static void jj_la1_init_1() {
        jj_la1_1 = new int[]{0, 803568, 8192, 0, 0, 278720, 48, 524800, 2, 1, 1612254248, 0, 0, 0, 0, 0, 524288, 1610612736, 1612254248, 1610612736, 0, 1612252200, 1610612736, 1612254248, 524288, 0, 524288, 1612254248, 0, 0, 1612254248, 0, 4096, a.o};
    }

    private static void jj_la1_init_2() {
        jj_la1_2 = new int[]{32, 2114, 0, 256, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, 66, 0, a.o, 0, 0, 624672, 64, 384, 256, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, 1024, a.o, 77312, 624672, 67584, 256, 100352, 0, 624672, 32768, 256, 32768, 632864, 320, 8192, 624672, 320, 2147221504, 524320};
    }

    public LuaParser(InputStream inputStream) {
        this(inputStream, null);
    }

    public LuaParser(InputStream inputStream, String str) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        try {
            this.jj_input_stream = new SimpleCharStream(inputStream, str, 1, 1);
            this.token_source = new LuaParserTokenManager(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            this.jj_gen = 0;
            for (int i2 = 0; i2 < 34; i2++) {
                this.jj_la1[i2] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i] = new JJCalls();
                i++;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public void ReInit(InputStream inputStream) {
        ReInit(inputStream, null);
    }

    public void ReInit(InputStream inputStream, String str) {
        try {
            this.jj_input_stream.ReInit(inputStream, str, 1, 1);
            this.token_source.ReInit(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            int i = 0;
            this.jj_gen = 0;
            for (int i2 = 0; i2 < 34; i2++) {
                this.jj_la1[i2] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i] = new JJCalls();
                i++;
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public LuaParser(Reader reader) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.jj_input_stream = new SimpleCharStream(reader, 1, 1);
        this.token_source = new LuaParserTokenManager(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.jj_la1[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public void ReInit(Reader reader) {
        this.jj_input_stream.ReInit(reader, 1, 1);
        this.token_source.ReInit(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        int i = 0;
        this.jj_gen = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.jj_la1[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public LuaParser(LuaParserTokenManager luaParserTokenManager) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.jj_la1[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    public void ReInit(LuaParserTokenManager luaParserTokenManager) {
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.jj_ntk = -1;
        int i = 0;
        this.jj_gen = 0;
        for (int i2 = 0; i2 < 34; i2++) {
            this.jj_la1[i2] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i] = new JJCalls();
            i++;
        }
    }

    private Token jj_consume_token(int i) throws ParseException {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        if (this.token.kind == i) {
            this.jj_gen++;
            int i2 = this.jj_gc + 1;
            this.jj_gc = i2;
            if (i2 > 100) {
                int i3 = 0;
                this.jj_gc = 0;
                while (true) {
                    JJCalls[] jJCallsArr = this.jj_2_rtns;
                    if (i3 >= jJCallsArr.length) {
                        break;
                    }
                    for (JJCalls jJCalls = jJCallsArr[i3]; jJCalls != null; jJCalls = jJCalls.next) {
                        if (jJCalls.gen < this.jj_gen) {
                            jJCalls.first = null;
                        }
                    }
                    i3++;
                }
            }
            return this.token;
        }
        this.token = token;
        this.jj_kind = i;
        throw generateParseException();
    }

    public static final class LookaheadSuccess extends Error {
        private LookaheadSuccess() {
        }
    }

    private boolean jj_scan_token(int i) {
        Token token = this.jj_scanpos;
        if (token == this.jj_lastpos) {
            this.jj_la--;
            Token token2 = token.next;
            if (token2 == null) {
                Token nextToken = this.token_source.getNextToken();
                token.next = nextToken;
                this.jj_scanpos = nextToken;
                this.jj_lastpos = nextToken;
            } else {
                this.jj_scanpos = token2;
                this.jj_lastpos = token2;
            }
        } else {
            this.jj_scanpos = token.next;
        }
        if (this.jj_rescan) {
            Token token3 = this.token;
            int i2 = 0;
            while (token3 != null && token3 != this.jj_scanpos) {
                i2++;
                token3 = token3.next;
            }
            if (token3 != null) {
                jj_add_error_token(i, i2);
            }
        }
        Token token4 = this.jj_scanpos;
        if (token4.kind != i) {
            return true;
        }
        if (this.jj_la == 0 && token4 == this.jj_lastpos) {
            throw this.jj_ls;
        }
        return false;
    }

    public final Token getNextToken() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        this.jj_gen++;
        return this.token;
    }

    public final Token getToken(int i) {
        Token token = this.token;
        for (int i2 = 0; i2 < i; i2++) {
            Token nextToken = token.next;
            if (nextToken == null) {
                nextToken = this.token_source.getNextToken();
                token.next = nextToken;
            }
            token = nextToken;
        }
        return token;
    }

    private int jj_ntk() {
        Token token = this.token;
        Token token2 = token.next;
        this.jj_nt = token2;
        if (token2 == null) {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            int i = nextToken.kind;
            this.jj_ntk = i;
            return i;
        }
        int i2 = token2.kind;
        this.jj_ntk = i2;
        return i2;
    }

    private void jj_add_error_token(int i, int i2) {
        if (i2 >= 100) {
            return;
        }
        int i3 = this.jj_endpos;
        if (i2 == i3 + 1) {
            int[] iArr = this.jj_lasttokens;
            this.jj_endpos = i3 + 1;
            iArr[i3] = i;
            return;
        }
        if (i3 != 0) {
            this.jj_expentry = new int[i3];
            for (int i4 = 0; i4 < this.jj_endpos; i4++) {
                this.jj_expentry[i4] = this.jj_lasttokens[i4];
            }
            Iterator it = this.jj_expentries.iterator();
            loop1: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] iArr2 = (int[]) it.next();
                if (iArr2.length == this.jj_expentry.length) {
                    int i5 = 0;
                    while (true) {
                        int[] iArr3 = this.jj_expentry;
                        if (i5 < iArr3.length) {
                            if (iArr2[i5] != iArr3[i5]) {
                                break;
                            } else {
                                i5++;
                            }
                        } else {
                            this.jj_expentries.add(iArr3);
                            break loop1;
                        }
                    }
                }
            }
            if (i2 != 0) {
                int[] iArr4 = this.jj_lasttokens;
                this.jj_endpos = i2;
                iArr4[i2 - 1] = i;
            }
        }
    }

    public ParseException generateParseException() {
        this.jj_expentries.clear();
        boolean[] zArr = new boolean[95];
        int i = this.jj_kind;
        if (i >= 0) {
            zArr[i] = true;
            this.jj_kind = -1;
        }
        for (int i2 = 0; i2 < 34; i2++) {
            if (this.jj_la1[i2] == this.jj_gen) {
                for (int i3 = 0; i3 < 32; i3++) {
                    int i4 = 1 << i3;
                    if ((jj_la1_0[i2] & i4) != 0) {
                        zArr[i3] = true;
                    }
                    if ((jj_la1_1[i2] & i4) != 0) {
                        zArr[i3 + 32] = true;
                    }
                    if ((jj_la1_2[i2] & i4) != 0) {
                        zArr[i3 + 64] = true;
                    }
                }
            }
        }
        for (int i5 = 0; i5 < 95; i5++) {
            if (zArr[i5]) {
                int[] iArr = {i5};
                this.jj_expentry = iArr;
                this.jj_expentries.add(iArr);
            }
        }
        this.jj_endpos = 0;
        jj_rescan_token();
        jj_add_error_token(0, 0);
        int[][] iArr2 = new int[this.jj_expentries.size()][];
        for (int i6 = 0; i6 < this.jj_expentries.size(); i6++) {
            iArr2[i6] = (int[]) this.jj_expentries.get(i6);
        }
        return new ParseException(this.token, iArr2, LuaParserConstants.tokenImage);
    }

    private void jj_rescan_token() {
        this.jj_rescan = true;
        for (int i = 0; i < 7; i++) {
            try {
                JJCalls jJCalls = this.jj_2_rtns[i];
                do {
                    if (jJCalls.gen > this.jj_gen) {
                        this.jj_la = jJCalls.arg;
                        Token token = jJCalls.first;
                        this.jj_scanpos = token;
                        this.jj_lastpos = token;
                        switch (i) {
                            case 0:
                                jj_3_1();
                                break;
                            case 1:
                                jj_3_2();
                                break;
                            case 2:
                                jj_3_3();
                                break;
                            case 3:
                                jj_3_4();
                                break;
                            case 4:
                                jj_3_5();
                                break;
                            case 5:
                                jj_3_6();
                                break;
                            case 6:
                                jj_3_7();
                                break;
                        }
                    }
                    jJCalls = jJCalls.next;
                } while (jJCalls != null);
            } catch (LookaheadSuccess unused) {
            }
        }
        this.jj_rescan = false;
    }

    private void jj_save(int i, int i2) {
        JJCalls jJCalls = this.jj_2_rtns[i];
        while (true) {
            if (jJCalls.gen <= this.jj_gen) {
                break;
            }
            JJCalls jJCalls2 = jJCalls.next;
            if (jJCalls2 == null) {
                JJCalls jJCalls3 = new JJCalls();
                jJCalls.next = jJCalls3;
                jJCalls = jJCalls3;
                break;
            }
            jJCalls = jJCalls2;
        }
        jJCalls.gen = (this.jj_gen + i2) - this.jj_la;
        jJCalls.first = this.token;
        jJCalls.arg = i2;
    }
}
