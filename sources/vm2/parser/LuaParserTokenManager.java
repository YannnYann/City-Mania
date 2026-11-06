package vm2.parser;

import ads_mobile_sdk.fh;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes6.dex */
public class LuaParserTokenManager implements LuaParserConstants {
    protected char curChar;
    int curLexState;
    public PrintStream debugStream;
    int defaultLexState;
    private StringBuffer image;
    protected SimpleCharStream input_stream;
    private final StringBuffer jjimage;
    private int jjimageLen;
    int jjmatchedKind;
    int jjmatchedPos;
    int jjnewStateCnt;
    int jjround;
    private final int[] jjrounds;
    private final int[] jjstateSet;
    private int lengthOfMatch;
    static final long[] jjbitVec0 = {-2, -1, -1, -1};
    static final long[] jjbitVec2 = {0, 0, -1, -1};
    static final int[] jjnextStates = {62, 63, 65, 32, 49, 50, 51, 36, 37, 38, 26, 27, 29, 22, 36, 37, 38, 46, 36, 47, 37, 38, 49, 50, 51, 59, 49, 60, 50, 51, 20, 25, 23, 24, 33, 34, 39, 40, 45, 52, 53, 58, 0, 1, 3};
    public static final String[] jjstrLiteralImages = {"", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "and", "break", R6.w1, "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "return", "repeat", "then", "true", "until", "while", null, null, null, null, null, null, null, null, null, null, null, null, null, null, "::", null, null, null, "#", ";", C3522b4.j.b, ",", ".", ":", "(", ")", C3522b4.j.d, C3522b4.j.e, "...", "{", "}", "+", "-", "*", "/", "^", "%", "..", "<", "<=", ">", ">=", "==", "~="};
    public static final String[] lexStateNames = {"DEFAULT", "IN_COMMENT", "IN_LC0", "IN_LC1", "IN_LC2", "IN_LC3", "IN_LCN", "IN_LS0", "IN_LS1", "IN_LS2", "IN_LS3", "IN_LSN"};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    static final long[] jjtoToken = {6926536226618998785L, 2147483618};
    static final long[] jjtoSkip = {8257598, 0};
    static final long[] jjtoSpecial = {8257536, 0};
    static final long[] jjtoMore = {268566464, 0};

    public void SkipLexicalActions(Token token) {
    }

    public void setDebugStream(PrintStream printStream) {
        this.debugStream = printStream;
    }

    private int jjStopAtPos(int i, int i2) {
        this.jjmatchedKind = i2;
        this.jjmatchedPos = i;
        return i + 1;
    }

    private int jjMoveStringLiteralDfa0_2() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_2(262144L);
    }

    private int jjMoveStringLiteralDfa1_2(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j & 262144) != 0) {
                return jjStopAtPos(1, 18);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa0_11() {
        return jjMoveNfa_11(6, 0);
    }

    private int jjMoveNfa_11(int i, int i2) {
        this.jjnewStateCnt = 7;
        this.jjstateSet[0] = i;
        int i3 = 1;
        int i4 = Integer.MAX_VALUE;
        int i5 = 0;
        while (true) {
            int i6 = this.jjround + 1;
            this.jjround = i6;
            if (i6 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            char c = this.curChar;
            if (c < '@') {
                do {
                    int[] iArr = this.jjstateSet;
                    i3--;
                    int i7 = iArr[i3];
                    if (i7 == 0 || i7 == 1) {
                        if (this.curChar == '=') {
                            jjCheckNAddTwoStates(1, 2);
                        }
                    } else if (i7 != 3) {
                        if (i7 == 4) {
                            if (this.curChar == '=') {
                                int i8 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i8 + 1;
                                iArr[i8] = 3;
                            }
                        } else if (i7 == 5 && this.curChar == '=') {
                            int i9 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i9 + 1;
                            iArr[i9] = 4;
                        }
                    } else if (this.curChar == '=') {
                        int i10 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i10 + 1;
                        iArr[i10] = 0;
                    }
                } while (i3 != i5);
            } else if (c < 128) {
                do {
                    int[] iArr2 = this.jjstateSet;
                    i3--;
                    int i11 = iArr2[i3];
                    if (i11 == 2) {
                        if (this.curChar == ']' && i4 > 27) {
                            i4 = 27;
                        }
                    } else if (i11 == 6 && this.curChar == ']') {
                        int i12 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i12 + 1;
                        iArr2[i12] = 5;
                    }
                } while (i3 != i5);
            } else {
                do {
                    i3--;
                    int i13 = this.jjstateSet[i3];
                } while (i3 != i5);
            }
            if (i4 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i4;
                this.jjmatchedPos = i2;
                i4 = Integer.MAX_VALUE;
            }
            i2++;
            i3 = this.jjnewStateCnt;
            this.jjnewStateCnt = i5;
            i5 = 7 - i5;
            if (i3 == i5) {
                break;
            }
            try {
                this.curChar = this.input_stream.readChar();
            } catch (IOException unused) {
            }
        }
        return i2;
    }

    private int jjMoveStringLiteralDfa0_10() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_10(67108864L);
    }

    private int jjMoveStringLiteralDfa1_10(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_10(j, 67108864L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_10(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_10(j3, 67108864L);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_10(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 4;
            }
            return jjMoveStringLiteralDfa4_10(j3, 67108864L);
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa4_10(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 4;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 67108864) != 0) {
                return jjStopAtPos(4, 26);
            }
            return 5;
        } catch (IOException unused) {
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa0_9() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_9(33554432L);
    }

    private int jjMoveStringLiteralDfa1_9(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_9(j, 33554432L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_9(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_9(j3, 33554432L);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_9(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 33554432) != 0) {
                return jjStopAtPos(3, 25);
            }
            return 4;
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa0_8() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_8(16777216L);
    }

    private int jjMoveStringLiteralDfa1_8(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_8(j, 16777216L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_8(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 16777216) != 0) {
                return jjStopAtPos(2, 24);
            }
            return 3;
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa0_7() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_7(8388608L);
    }

    private int jjMoveStringLiteralDfa1_7(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j & 8388608) != 0) {
                return jjStopAtPos(1, 23);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private final int jjStopStringLiteralDfa_0(int i, long j, long j2) {
        switch (i) {
            case 0:
                if ((30720 & j) != 0 || (j2 & 8192) != 0) {
                    return 14;
                }
                if ((j2 & 16810496) != 0) {
                    return 31;
                }
                if ((2251799276814336L & j) == 0) {
                    return ((66496 & j) == 0 && (j2 & 524288) == 0) ? -1 : 7;
                }
                this.jjmatchedKind = 51;
                return 17;
            case 1:
                if ((66496 & j) != 0) {
                    return 6;
                }
                if ((28672 & j) != 0) {
                    return 13;
                }
                if ((19243600969728L & j) != 0) {
                    return 17;
                }
                if ((2232555675844608L & j) == 0) {
                    return -1;
                }
                if (this.jjmatchedPos != 1) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 1;
                }
                return 17;
            case 2:
                if ((2219275100094464L & j) != 0) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 2;
                    return 17;
                }
                if ((24576 & j) != 0) {
                    return 12;
                }
                if ((960 & j) != 0) {
                    return 5;
                }
                return (13280575750144L & j) != 0 ? 17 : -1;
            case 3:
                if ((896 & j) != 0) {
                    return 4;
                }
                if ((1796774872219648L & j) == 0) {
                    if ((422500227874816L & j) != 0) {
                        return 17;
                    }
                    return (16384 & j) != 0 ? 9 : -1;
                }
                if (this.jjmatchedPos != 3) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 3;
                }
                return 17;
            case 4:
                if ((105699145154560L & j) != 0) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 4;
                    return 17;
                }
                if ((768 & j) != 0) {
                    return 3;
                }
                return (1691084316999680L & j) != 0 ? 17 : -1;
            case 5:
                if ((512 & j) != 0) {
                    return 0;
                }
                if ((105561706201088L & j) != 0) {
                    return 17;
                }
                if ((j & 137438953472L) == 0) {
                    return -1;
                }
                this.jjmatchedKind = 51;
                this.jjmatchedPos = 5;
                return 17;
            case 6:
                if ((j & 137438953472L) == 0) {
                    return -1;
                }
                this.jjmatchedKind = 51;
                this.jjmatchedPos = 6;
                return 17;
            default:
                return -1;
        }
    }

    private final int jjStartNfa_0(int i, long j, long j2) {
        return jjMoveNfa_0(jjStopStringLiteralDfa_0(i, j, j2), i + 1);
    }

    private int jjMoveStringLiteralDfa0_0() {
        char c = this.curChar;
        if (c == '#') {
            return jjStopAtPos(0, 69);
        }
        if (c == '%') {
            return jjStopAtPos(0, 87);
        }
        if (c == '[') {
            this.jjmatchedKind = 77;
            return jjMoveStringLiteralDfa1_0(30720L, 0L);
        }
        if (c == 'i') {
            return jjMoveStringLiteralDfa1_0(1649267441664L, 0L);
        }
        if (c == 'l') {
            return jjMoveStringLiteralDfa1_0(2199023255552L, 0L);
        }
        if (c == 'r') {
            return jjMoveStringLiteralDfa1_0(105553116266496L, 0L);
        }
        if (c == 'w') {
            return jjMoveStringLiteralDfa1_0(1125899906842624L, 0L);
        }
        if (c == '{') {
            return jjStopAtPos(0, 80);
        }
        if (c == ']') {
            return jjStopAtPos(0, 78);
        }
        if (c == '^') {
            return jjStopAtPos(0, 86);
        }
        if (c == 'a') {
            return jjMoveStringLiteralDfa1_0(536870912L, 0L);
        }
        if (c == 'b') {
            return jjMoveStringLiteralDfa1_0(1073741824L, 0L);
        }
        if (c == 'n') {
            return jjMoveStringLiteralDfa1_0(13194139533312L, 0L);
        }
        if (c == 'o') {
            return jjMoveStringLiteralDfa1_0(17592186044416L, 0L);
        }
        if (c == 't') {
            return jjMoveStringLiteralDfa1_0(422212465065984L, 0L);
        }
        if (c == 'u') {
            return jjMoveStringLiteralDfa1_0(562949953421312L, 0L);
        }
        if (c == '}') {
            return jjStopAtPos(0, 81);
        }
        if (c != '~') {
            switch (c) {
                case '(':
                    return jjStopAtPos(0, 75);
                case ')':
                    return jjStopAtPos(0, 76);
                case '*':
                    return jjStopAtPos(0, 84);
                case '+':
                    return jjStopAtPos(0, 82);
                case ',':
                    return jjStopAtPos(0, 72);
                case '-':
                    this.jjmatchedKind = 83;
                    return jjMoveStringLiteralDfa1_0(66496L, 0L);
                case '.':
                    this.jjmatchedKind = 73;
                    return jjMoveStringLiteralDfa1_0(0L, 16809984L);
                case '/':
                    return jjStopAtPos(0, 85);
                default:
                    switch (c) {
                        case ':':
                            this.jjmatchedKind = 74;
                            return jjMoveStringLiteralDfa1_0(0L, 2L);
                        case ';':
                            return jjStopAtPos(0, 70);
                        case '<':
                            this.jjmatchedKind = 89;
                            return jjMoveStringLiteralDfa1_0(0L, 67108864L);
                        case '=':
                            this.jjmatchedKind = 71;
                            return jjMoveStringLiteralDfa1_0(0L, 536870912L);
                        case '>':
                            this.jjmatchedKind = 91;
                            return jjMoveStringLiteralDfa1_0(0L, 268435456L);
                        default:
                            switch (c) {
                                case 'd':
                                    return jjMoveStringLiteralDfa1_0(2147483648L, 0L);
                                case 'e':
                                    return jjMoveStringLiteralDfa1_0(30064771072L, 0L);
                                case 'f':
                                    return jjMoveStringLiteralDfa1_0(240518168576L, 0L);
                                case 'g':
                                    return jjMoveStringLiteralDfa1_0(274877906944L, 0L);
                                default:
                                    return jjMoveNfa_0(8, 0);
                            }
                    }
            }
        }
        return jjMoveStringLiteralDfa1_0(0L, 1073741824L);
    }

    private int jjMoveStringLiteralDfa1_0(long j, long j2) {
        long j3;
        long j4;
        LuaParserTokenManager luaParserTokenManager;
        long j5;
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == '-') {
                if ((65536 & j) != 0) {
                    this.jjmatchedKind = 16;
                    this.jjmatchedPos = 1;
                }
                return jjMoveStringLiteralDfa2_0(j, 960L, j2, 0L);
            }
            if (c == '.') {
                if ((16777216 & j2) != 0) {
                    this.jjmatchedKind = 88;
                    this.jjmatchedPos = 1;
                }
                return jjMoveStringLiteralDfa2_0(j, 0L, j2, 32768L);
            }
            if (c == ':') {
                j3 = j;
                j4 = j2;
                luaParserTokenManager = this;
                if ((2 & j4) != 0) {
                    return jjStopAtPos(1, 65);
                }
            } else {
                if (c == '=') {
                    if ((67108864 & j2) != 0) {
                        return jjStopAtPos(1, 90);
                    }
                    if ((268435456 & j2) != 0) {
                        return jjStopAtPos(1, 92);
                    }
                    if ((536870912 & j2) != 0) {
                        return jjStopAtPos(1, 93);
                    }
                    if ((1073741824 & j2) != 0) {
                        return jjStopAtPos(1, 94);
                    }
                    return jjMoveStringLiteralDfa2_0(j, 28672L, j2, 0L);
                }
                if (c == '[') {
                    j3 = j;
                    j4 = j2;
                    luaParserTokenManager = this;
                    if ((2048 & j3) != 0) {
                        return jjStopAtPos(1, 11);
                    }
                } else {
                    if (c == 'a') {
                        return jjMoveStringLiteralDfa2_0(j, 34359738368L, j2, 0L);
                    }
                    if (c == 'l') {
                        return jjMoveStringLiteralDfa2_0(j, 12884901888L, j2, 0L);
                    }
                    if (c == 'r') {
                        if ((17592186044416L & j) != 0) {
                            return jjStartNfaWithStates_0(1, 44, 17);
                        }
                        return jjMoveStringLiteralDfa2_0(j, 281476050452480L, j2, 0L);
                    }
                    if (c == 'u') {
                        return jjMoveStringLiteralDfa2_0(j, 137438953472L, j2, 0L);
                    }
                    if (c == 'e') {
                        return jjMoveStringLiteralDfa2_0(j, 105553116266496L, j2, 0L);
                    }
                    if (c != 'f') {
                        if (c == 'h') {
                            return jjMoveStringLiteralDfa2_0(j, 1266637395197952L, j2, 0L);
                        }
                        if (c == 'i') {
                            return jjMoveStringLiteralDfa2_0(j, 4398046511104L, j2, 0L);
                        }
                        if (c == 'n') {
                            if ((1099511627776L & j) != 0) {
                                return jjStartNfaWithStates_0(1, 40, 17);
                            }
                            return jjMoveStringLiteralDfa2_0(j, 562967670161408L, j2, 0L);
                        }
                        if (c == 'o') {
                            if ((2147483648L & j) != 0) {
                                return jjStartNfaWithStates_0(1, 31, 17);
                            }
                            return jjMoveStringLiteralDfa2_0(j, 11338713661440L, j2, 0L);
                        }
                        luaParserTokenManager = this;
                        j5 = j;
                        j4 = j2;
                        return luaParserTokenManager.jjStartNfa_0(0, j5, j4);
                    }
                    j3 = j;
                    luaParserTokenManager = this;
                    j4 = j2;
                    if ((549755813888L & j3) != 0) {
                        return jjStartNfaWithStates_0(1, 39, 17);
                    }
                }
            }
            j5 = j3;
            return luaParserTokenManager.jjStartNfa_0(0, j5, j4);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(0, j, j2);
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_0(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        long j6 = j4 & j3;
        if ((j5 | j6) == 0) {
            return jjStartNfa_0(0, j, j3);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '.') {
                if (c == '=') {
                    return jjMoveStringLiteralDfa3_0(j5, 24576L, j6, 0L);
                }
                if (c == '[') {
                    if ((4096 & j5) != 0) {
                        return jjStopAtPos(2, 12);
                    }
                    return jjMoveStringLiteralDfa3_0(j5, 960L, j6, 0L);
                }
                if (c == 'i') {
                    return jjMoveStringLiteralDfa3_0(j5, 1125899906842624L, j6, 0L);
                }
                if (c == 'l') {
                    if ((4398046511104L & j5) != 0) {
                        return jjStartNfaWithStates_0(2, 42, 17);
                    }
                    return jjMoveStringLiteralDfa3_0(j5, 34359738368L, j6, 0L);
                }
                if (c == 'n') {
                    return jjMoveStringLiteralDfa3_0(j5, 137438953472L, j6, 0L);
                }
                if (c != 'p') {
                    switch (c) {
                        case fh.R0 /* 99 */:
                            return jjMoveStringLiteralDfa3_0(j5, 2199023255552L, j6, 0L);
                        case 'd':
                            if ((536870912 & j5) != 0) {
                                return jjStartNfaWithStates_0(2, 29, 17);
                            }
                            if ((17179869184L & j5) != 0) {
                                return jjStartNfaWithStates_0(2, 34, 17);
                            }
                            break;
                        case 'e':
                            return jjMoveStringLiteralDfa3_0(j5, 140738562097152L, j6, 0L);
                        default:
                            switch (c) {
                                case ASSET_WRITE_ERROR_VALUE:
                                    if ((68719476736L & j5) != 0) {
                                        return jjStartNfaWithStates_0(2, 36, 17);
                                    }
                                    break;
                                case INVALID_INDEX_URL_VALUE:
                                    return jjMoveStringLiteralDfa3_0(j5, 12884901888L, j6, 0L);
                                case GZIP_ENCODE_ERROR_VALUE:
                                    if ((8796093022208L & j5) != 0) {
                                        return jjStartNfaWithStates_0(2, 43, 17);
                                    }
                                    return jjMoveStringLiteralDfa3_0(j5, 598409203417088L, j6, 0L);
                                case ASSET_FAILED_STATUS_CODE_VALUE:
                                    return jjMoveStringLiteralDfa3_0(j5, 281474976710656L, j6, 0L);
                            }
                            break;
                    }
                } else {
                    return jjMoveStringLiteralDfa3_0(j5, 70368744177664L, j6, 0L);
                }
            } else if ((32768 & j6) != 0) {
                return jjStopAtPos(2, 79);
            }
            return jjStartNfa_0(1, j5, j6);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(1, j5, j6);
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_0(long j, long j2, long j3, long j4) {
        long j5 = j2 & j;
        if (((j4 & j3) | j5) == 0) {
            return jjStartNfa_0(1, j, j3);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == '=') {
                return jjMoveStringLiteralDfa4_0(j5, 17280L);
            }
            if (c != '[') {
                if (c == 'a') {
                    return jjMoveStringLiteralDfa4_0(j5, 2200096997376L);
                }
                if (c == 'c') {
                    return jjMoveStringLiteralDfa4_0(j5, 137438953472L);
                }
                if (c == 'e') {
                    if ((4294967296L & j5) != 0) {
                        this.jjmatchedKind = 32;
                        this.jjmatchedPos = 3;
                    } else if ((281474976710656L & j5) != 0) {
                        return jjStartNfaWithStates_0(3, 48, 17);
                    }
                    return jjMoveStringLiteralDfa4_0(j5, 70377334112256L);
                }
                if (c == 'i') {
                    return jjMoveStringLiteralDfa4_0(j5, 562949953421312L);
                }
                if (c == 'l') {
                    return jjMoveStringLiteralDfa4_0(j5, 1125899906842624L);
                }
                if (c == 's') {
                    return jjMoveStringLiteralDfa4_0(j5, 34359738368L);
                }
                if (c == 'u') {
                    return jjMoveStringLiteralDfa4_0(j5, 35184372088832L);
                }
                if (c != 'n') {
                    if (c == 'o' && (274877906944L & j5) != 0) {
                        return jjStartNfaWithStates_0(3, 38, 17);
                    }
                } else if ((140737488355328L & j5) != 0) {
                    return jjStartNfaWithStates_0(3, 47, 17);
                }
            } else {
                if ((64 & j5) != 0) {
                    return jjStopAtPos(3, 6);
                }
                if ((8192 & j5) != 0) {
                    return jjStopAtPos(3, 13);
                }
            }
            return jjStartNfa_0(2, j5, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(2, j5, 0L);
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa4_0(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return jjStartNfa_0(2, j, 0L);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == '=') {
                return jjMoveStringLiteralDfa5_0(j3, 768L);
            }
            if (c != '[') {
                if (c == 'a') {
                    return jjMoveStringLiteralDfa5_0(j3, 70368744177664L);
                }
                if (c != 'e') {
                    if (c == 'i') {
                        return jjMoveStringLiteralDfa5_0(j3, 8589934592L);
                    }
                    if (c == 'r') {
                        return jjMoveStringLiteralDfa5_0(j3, 35184372088832L);
                    }
                    if (c == 't') {
                        return jjMoveStringLiteralDfa5_0(j3, 137438953472L);
                    }
                    if (c != 'k') {
                        if (c == 'l') {
                            if ((2199023255552L & j3) != 0) {
                                return jjStartNfaWithStates_0(4, 41, 17);
                            }
                            if ((562949953421312L & j3) != 0) {
                                return jjStartNfaWithStates_0(4, 49, 17);
                            }
                        }
                    } else if ((1073741824 & j3) != 0) {
                        return jjStartNfaWithStates_0(4, 30, 17);
                    }
                } else {
                    if ((34359738368L & j3) != 0) {
                        return jjStartNfaWithStates_0(4, 35, 17);
                    }
                    if ((1125899906842624L & j3) != 0) {
                        return jjStartNfaWithStates_0(4, 50, 17);
                    }
                }
            } else {
                if ((128 & j3) != 0) {
                    return jjStopAtPos(4, 7);
                }
                if ((16384 & j3) != 0) {
                    return jjStopAtPos(4, 14);
                }
            }
            return jjStartNfa_0(3, j3, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(3, j3, 0L);
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa5_0(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return jjStartNfa_0(3, j, 0L);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == '=') {
                return jjMoveStringLiteralDfa6_0(j3, 512L);
            }
            if (c != '[') {
                if (c != 'f') {
                    if (c == 'i') {
                        return jjMoveStringLiteralDfa6_0(j3, 137438953472L);
                    }
                    if (c != 'n') {
                        if (c == 't' && (70368744177664L & j3) != 0) {
                            return jjStartNfaWithStates_0(5, 46, 17);
                        }
                    } else if ((35184372088832L & j3) != 0) {
                        return jjStartNfaWithStates_0(5, 45, 17);
                    }
                } else if ((8589934592L & j3) != 0) {
                    return jjStartNfaWithStates_0(5, 33, 17);
                }
            } else if ((256 & j3) != 0) {
                return jjStopAtPos(5, 8);
            }
            return jjStartNfa_0(4, j3, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(4, j3, 0L);
            return 5;
        }
    }

    private int jjMoveStringLiteralDfa6_0(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return jjStartNfa_0(4, j, 0L);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '[') {
                if (c == 'o') {
                    return jjMoveStringLiteralDfa7_0(j3, 137438953472L);
                }
            } else if ((512 & j3) != 0) {
                return jjStopAtPos(6, 9);
            }
            return jjStartNfa_0(5, j3, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(5, j3, 0L);
            return 6;
        }
    }

    private int jjMoveStringLiteralDfa7_0(long j, long j2) {
        long j3 = j2 & j;
        if (j3 == 0) {
            return jjStartNfa_0(5, j, 0L);
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == 'n' && (137438953472L & j3) != 0) {
                return jjStartNfaWithStates_0(7, 37, 17);
            }
            return jjStartNfa_0(6, j3, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(6, j3, 0L);
            return 7;
        }
    }

    private int jjStartNfaWithStates_0(int i, int i2, int i3) {
        this.jjmatchedKind = i2;
        this.jjmatchedPos = i;
        try {
            this.curChar = this.input_stream.readChar();
            return jjMoveNfa_0(i3, i + 1);
        } catch (IOException unused) {
            return i + 1;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053 A[PHI: r6
      0x0053: PHI (r6v26 int) = 
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v31 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v33 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v35 int)
      (r6v25 int)
      (r6v37 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v39 int)
      (r6v25 int)
      (r6v41 int)
      (r6v25 int)
      (r6v43 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v45 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v47 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v52 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v53 int)
      (r6v25 int)
      (r6v25 int)
      (r6v25 int)
      (r6v55 int)
      (r6v25 int)
      (r6v57 int)
      (r6v25 int)
      (r6v59 int)
     binds: [B:10:0x0040, B:183:0x02e5, B:184:0x02e7, B:180:0x02d5, B:181:0x02d7, B:177:0x02c5, B:178:0x02c7, B:174:0x02b5, B:175:0x02b7, B:167:0x029d, B:172:0x02a7, B:164:0x028b, B:165:0x028d, B:161:0x0280, B:162:0x0282, B:155:0x026e, B:159:0x0275, B:152:0x0261, B:153:0x0263, B:146:0x024a, B:150:0x0251, B:140:0x0236, B:144:0x023d, B:137:0x0227, B:138:0x0229, B:131:0x0215, B:135:0x021c, B:125:0x0205, B:129:0x020c, B:119:0x01f3, B:123:0x01fa, B:116:0x01e6, B:117:0x01e8, B:110:0x01d6, B:114:0x01dd, B:107:0x01cb, B:108:0x01cd, B:101:0x01b4, B:105:0x01bb, B:98:0x01a7, B:99:0x01a9, B:95:0x0196, B:96:0x0198, B:91:0x0184, B:92:0x0186, B:89:0x0178, B:87:0x016a, B:88:0x016c, B:84:0x0158, B:85:0x015a, B:81:0x0146, B:82:0x0148, B:78:0x0138, B:79:0x013a, B:75:0x0129, B:76:0x012b, B:72:0x011a, B:73:0x011c, B:69:0x010f, B:70:0x0111, B:66:0x0106, B:67:0x0108, B:61:0x00f3, B:63:0x00f7, B:64:0x00f9, B:59:0x00ec, B:57:0x00de, B:58:0x00e0, B:54:0x00cc, B:55:0x00ce, B:51:0x00bb, B:52:0x00bd, B:48:0x00b1, B:49:0x00b3, B:45:0x00a5, B:46:0x00a7, B:42:0x0097, B:43:0x0099, B:36:0x0088, B:40:0x008e, B:33:0x007a, B:34:0x007c, B:27:0x006a, B:31:0x0070, B:21:0x005c, B:25:0x0062, B:13:0x0048, B:17:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0602 A[LOOP:2: B:227:0x03a5->B:375:0x0602, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0391 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int jjMoveNfa_0(int r33, int r34) {
        /*
            Method dump skipped, instruction units count: 1820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParserTokenManager.jjMoveNfa_0(int, int):int");
    }

    private int jjMoveStringLiteralDfa0_1() {
        return jjMoveNfa_1(4, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009f A[LOOP:1: B:9:0x002d->B:48:0x009f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00e1 A[EDGE_INSN: B:82:0x00e1->B:70:0x00e1 BREAK  A[LOOP:1: B:9:0x002d->B:48:0x009f], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int jjMoveNfa_1(int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParserTokenManager.jjMoveNfa_1(int, int):int");
    }

    private int jjMoveStringLiteralDfa0_6() {
        return jjMoveNfa_6(6, 0);
    }

    private int jjMoveNfa_6(int i, int i2) {
        this.jjnewStateCnt = 7;
        this.jjstateSet[0] = i;
        int i3 = 1;
        int i4 = Integer.MAX_VALUE;
        int i5 = 0;
        while (true) {
            int i6 = this.jjround + 1;
            this.jjround = i6;
            if (i6 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            char c = this.curChar;
            if (c < '@') {
                do {
                    int[] iArr = this.jjstateSet;
                    i3--;
                    int i7 = iArr[i3];
                    if (i7 == 0 || i7 == 1) {
                        if (this.curChar == '=') {
                            jjCheckNAddTwoStates(1, 2);
                        }
                    } else if (i7 != 3) {
                        if (i7 == 4) {
                            if (this.curChar == '=') {
                                int i8 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i8 + 1;
                                iArr[i8] = 3;
                            }
                        } else if (i7 == 5 && this.curChar == '=') {
                            int i9 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i9 + 1;
                            iArr[i9] = 4;
                        }
                    } else if (this.curChar == '=') {
                        int i10 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i10 + 1;
                        iArr[i10] = 0;
                    }
                } while (i3 != i5);
            } else if (c < 128) {
                do {
                    int[] iArr2 = this.jjstateSet;
                    i3--;
                    int i11 = iArr2[i3];
                    if (i11 == 2) {
                        if (this.curChar == ']' && i4 > 22) {
                            i4 = 22;
                        }
                    } else if (i11 == 6 && this.curChar == ']') {
                        int i12 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i12 + 1;
                        iArr2[i12] = 5;
                    }
                } while (i3 != i5);
            } else {
                do {
                    i3--;
                    int i13 = this.jjstateSet[i3];
                } while (i3 != i5);
            }
            if (i4 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i4;
                this.jjmatchedPos = i2;
                i4 = Integer.MAX_VALUE;
            }
            i2++;
            i3 = this.jjnewStateCnt;
            this.jjnewStateCnt = i5;
            i5 = 7 - i5;
            if (i3 == i5) {
                break;
            }
            try {
                this.curChar = this.input_stream.readChar();
            } catch (IOException unused) {
            }
        }
        return i2;
    }

    private int jjMoveStringLiteralDfa0_5() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_5(2097152L);
    }

    private int jjMoveStringLiteralDfa1_5(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_5(j, 2097152L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_5(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_5(j3, 2097152L);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_5(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 4;
            }
            return jjMoveStringLiteralDfa4_5(j3, 2097152L);
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa4_5(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 4;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 2097152) != 0) {
                return jjStopAtPos(4, 21);
            }
            return 5;
        } catch (IOException unused) {
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa0_4() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_4(1048576L);
    }

    private int jjMoveStringLiteralDfa1_4(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_4(j, 1048576L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_4(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_4(j3, 1048576L);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_4(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 3;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 1048576) != 0) {
                return jjStopAtPos(3, 20);
            }
            return 4;
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa0_3() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_3(524288L);
    }

    private int jjMoveStringLiteralDfa1_3(long j) {
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_3(j, 524288L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_3(long j, long j2) {
        long j3 = j & j2;
        if (j3 == 0) {
            return 2;
        }
        try {
            char c = this.input_stream.readChar();
            this.curChar = c;
            if (c == ']' && (j3 & 524288) != 0) {
                return jjStopAtPos(2, 19);
            }
            return 3;
        } catch (IOException unused) {
            return 2;
        }
    }

    private static final boolean jjCanMove_0(int i, int i2, int i3, long j, long j2) {
        return i != 0 ? (jjbitVec0[i2] & j) != 0 : (jjbitVec2[i3] & j2) != 0;
    }

    public LuaParserTokenManager(SimpleCharStream simpleCharStream) {
        this.debugStream = System.out;
        this.jjrounds = new int[66];
        this.jjstateSet = new int[Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE];
        StringBuffer stringBuffer = new StringBuffer();
        this.jjimage = stringBuffer;
        this.image = stringBuffer;
        this.curLexState = 0;
        this.defaultLexState = 0;
        this.input_stream = simpleCharStream;
    }

    public LuaParserTokenManager(SimpleCharStream simpleCharStream, int i) {
        this(simpleCharStream);
        SwitchTo(i);
    }

    public void ReInit(SimpleCharStream simpleCharStream) {
        this.jjnewStateCnt = 0;
        this.jjmatchedPos = 0;
        this.curLexState = this.defaultLexState;
        this.input_stream = simpleCharStream;
        ReInitRounds();
    }

    private void ReInitRounds() {
        this.jjround = -2147483647;
        int i = 66;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            this.jjrounds[i2] = Integer.MIN_VALUE;
            i = i2;
        }
    }

    public void ReInit(SimpleCharStream simpleCharStream, int i) {
        ReInit(simpleCharStream);
        SwitchTo(i);
    }

    public void SwitchTo(int i) {
        if (i >= 12 || i < 0) {
            throw new TokenMgrError("Error: Ignoring invalid lexical state : " + i + ". State unchanged.", 2);
        }
        this.curLexState = i;
    }

    public Token jjFillToken() {
        String strGetImage;
        int beginLine;
        int beginColumn;
        int endLine;
        int endColumn;
        if (this.jjmatchedPos < 0) {
            StringBuffer stringBuffer = this.image;
            if (stringBuffer == null) {
                strGetImage = "";
            } else {
                strGetImage = stringBuffer.toString();
            }
            beginLine = this.input_stream.getBeginLine();
            beginColumn = this.input_stream.getBeginColumn();
            endLine = beginLine;
            endColumn = beginColumn;
        } else {
            strGetImage = jjstrLiteralImages[this.jjmatchedKind];
            if (strGetImage == null) {
                strGetImage = this.input_stream.GetImage();
            }
            beginLine = this.input_stream.getBeginLine();
            beginColumn = this.input_stream.getBeginColumn();
            endLine = this.input_stream.getEndLine();
            endColumn = this.input_stream.getEndColumn();
        }
        Token tokenNewToken = Token.newToken(this.jjmatchedKind, strGetImage);
        tokenNewToken.beginLine = beginLine;
        tokenNewToken.endLine = endLine;
        tokenNewToken.beginColumn = beginColumn;
        tokenNewToken.endColumn = endColumn;
        return tokenNewToken;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public vm2.parser.Token getNextToken() {
        /*
            Method dump skipped, instruction units count: 570
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: vm2.parser.LuaParserTokenManager.getNextToken():vm2.parser.Token");
    }

    private void jjCheckNAdd(int i) {
        int[] iArr = this.jjrounds;
        int i2 = iArr[i];
        int i3 = this.jjround;
        if (i2 != i3) {
            int[] iArr2 = this.jjstateSet;
            int i4 = this.jjnewStateCnt;
            this.jjnewStateCnt = i4 + 1;
            iArr2[i4] = i;
            iArr[i] = i3;
        }
    }

    private void jjAddStates(int i, int i2) {
        while (true) {
            int[] iArr = this.jjstateSet;
            int i3 = this.jjnewStateCnt;
            this.jjnewStateCnt = i3 + 1;
            iArr[i3] = jjnextStates[i];
            int i4 = i + 1;
            if (i == i2) {
                return;
            } else {
                i = i4;
            }
        }
    }

    private void jjCheckNAddTwoStates(int i, int i2) {
        jjCheckNAdd(i);
        jjCheckNAdd(i2);
    }

    private void jjCheckNAddStates(int i, int i2) {
        while (true) {
            jjCheckNAdd(jjnextStates[i]);
            int i3 = i + 1;
            if (i == i2) {
                return;
            } else {
                i = i3;
            }
        }
    }
}
