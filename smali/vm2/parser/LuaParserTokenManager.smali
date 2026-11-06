###### Class vm2.parser.LuaParserTokenManager (vm2.parser.LuaParserTokenManager)
.class public Lvm2/parser/LuaParserTokenManager;
.super Ljava/lang/Object;
.source "LuaParserTokenManager.java"

# interfaces
.implements Lvm2/parser/LuaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuffer;

.field protected input_stream:Lvm2/parser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuffer;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .registers 96

    const/4 v0, 0x4

    .line 848
    new-array v1, v0, [J

    fill-array-data v1, :array_114

    sput-object v1, Lvm2/parser/LuaParserTokenManager;->jjbitVec0:[J

    .line 851
    new-array v0, v0, [J

    fill-array-data v0, :array_128

    sput-object v0, Lvm2/parser/LuaParserTokenManager;->jjbitVec2:[J

    const/16 v0, 0x2d

    .line 1698
    new-array v0, v0, [I

    fill-array-data v0, :array_13c

    sput-object v0, Lvm2/parser/LuaParserTokenManager;->jjnextStates:[I

    .line 1717
    const-string v94, "=="

    const-string v95, "~="

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "and"

    const-string v31, "break"

    const-string v32, "do"

    const-string v33, "else"

    const-string v34, "elseif"

    const-string v35, "end"

    const-string v36, "false"

    const-string v37, "for"

    const-string v38, "function"

    const-string v39, "goto"

    const-string v40, "if"

    const-string v41, "in"

    const-string v42, "local"

    const-string v43, "nil"

    const-string v44, "not"

    const-string v45, "or"

    const-string v46, "return"

    const-string v47, "repeat"

    const-string v48, "then"

    const-string v49, "true"

    const-string v50, "until"

    const-string v51, "while"

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-string v66, "::"

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-string v70, "#"

    const-string v71, ";"

    const-string v72, "="

    const-string v73, ","

    const-string v74, "."

    const-string v75, ":"

    const-string v76, "("

    const-string v77, ")"

    const-string v78, "["

    const-string v79, "]"

    const-string v80, "..."

    const-string v81, "{"

    const-string v82, "}"

    const-string v83, "+"

    const-string v84, "-"

    const-string v85, "*"

    const-string v86, "/"

    const-string v87, "^"

    const-string v88, "%"

    const-string v89, ".."

    const-string v90, "<"

    const-string v91, "<="

    const-string v92, ">"

    const-string v93, ">="

    filled-new-array/range {v1 .. v95}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 1731
    const-string v11, "IN_LS3"

    const-string v12, "IN_LSN"

    const-string v1, "DEFAULT"

    const-string v2, "IN_COMMENT"

    const-string v3, "IN_LC0"

    const-string v4, "IN_LC1"

    const-string v5, "IN_LC2"

    const-string v6, "IN_LC3"

    const-string v7, "IN_LCN"

    const-string v8, "IN_LS0"

    const-string v9, "IN_LS1"

    const-string v10, "IN_LS2"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/parser/LuaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/4 v0, 0x2

    const/16 v1, 0x5f

    .line 1747
    new-array v1, v1, [I

    fill-array-data v1, :array_19a

    sput-object v1, Lvm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    .line 1753
    new-array v1, v0, [J

    fill-array-data v1, :array_25c

    sput-object v1, Lvm2/parser/LuaParserTokenManager;->jjtoToken:[J

    .line 1756
    new-array v1, v0, [J

    fill-array-data v1, :array_268

    sput-object v1, Lvm2/parser/LuaParserTokenManager;->jjtoSkip:[J

    .line 1759
    new-array v1, v0, [J

    fill-array-data v1, :array_274

    sput-object v1, Lvm2/parser/LuaParserTokenManager;->jjtoSpecial:[J

    .line 1762
    new-array v0, v0, [J

    fill-array-data v0, :array_280

    sput-object v0, Lvm2/parser/LuaParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_114
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_128
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_13c
    .array-data 4
        0x3e
        0x3f
        0x41
        0x20
        0x31
        0x32
        0x33
        0x24
        0x25
        0x26
        0x1a
        0x1b
        0x1d
        0x16
        0x24
        0x25
        0x26
        0x2e
        0x24
        0x2f
        0x25
        0x26
        0x31
        0x32
        0x33
        0x3b
        0x31
        0x3c
        0x32
        0x33
        0x14
        0x19
        0x17
        0x18
        0x21
        0x22
        0x27
        0x28
        0x2d
        0x34
        0x35
        0x3a
        0x0
        0x1
        0x3
    .end array-data

    :array_19a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_25c
    .array-data 8
        0x601fffffef800001L    # 1.0726246014297432E155
        0x7fffffe2
    .end array-data

    :array_268
    .array-data 8
        0x7e003e
        0x0
    .end array-data

    :array_274
    .array-data 8
        0x7e0000
        0x0
    .end array-data

    :array_280
    .array-data 8
        0x1001ffc0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lvm2/parser/SimpleCharStream;)V
    .registers 3

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lvm2/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x42

    .line 1766
    new-array v0, v0, [I

    iput-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjrounds:[I

    const/16 v0, 0x84

    .line 1767
    new-array v0, v0, [I

    iput-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    .line 1768
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjimage:Ljava/lang/StringBuffer;

    .line 1769
    iput-object v0, p0, Lvm2/parser/LuaParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1854
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    .line 1855
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->defaultLexState:I

    .line 1777
    iput-object p1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lvm2/parser/SimpleCharStream;I)V
    .registers 3

    .line 1782
    invoke-direct {p0, p1}, Lvm2/parser/LuaParserTokenManager;-><init>(Lvm2/parser/SimpleCharStream;)V

    .line 1783
    invoke-virtual {p0, p2}, Lvm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    .line 1797
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    const/16 v0, 0x42

    :goto_7
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_13

    .line 1799
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_7

    :cond_13
    return-void
.end method

.method private jjAddStates(II)V
    .registers 6

    .line 2083
    :goto_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lvm2/parser/LuaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_12

    .line 1710
    sget-object p0, Lvm2/parser/LuaParserTokenManager;->jjbitVec0:[J

    aget-wide p1, p0, p1

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v1

    :cond_11
    return v0

    .line 1708
    :cond_12
    sget-object p0, Lvm2/parser/LuaParserTokenManager;->jjbitVec2:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    return v0
.end method

.method private jjCheckNAdd(I)V
    .registers 7

    .line 2074
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_14

    .line 2076
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 2077
    aput v2, v0, p1

    :cond_14
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .registers 4

    .line 2095
    :goto_0
    sget-object v0, Lvm2/parser/LuaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .registers 3

    .line 2088
    invoke-direct {p0, p1}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    .line 2089
    invoke-direct {p0, p2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .registers 35

    move-object/from16 v0, p0

    const/16 v1, 0x42

    .line 857
    iput v1, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    .line 859
    iget-object v1, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v4, p2

    move v5, v1

    move v7, v2

    move v6, v3

    .line 863
    :goto_14
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    add-int/2addr v8, v1

    iput v8, v0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v8, v3, :cond_1e

    .line 864
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->ReInitRounds()V

    .line 865
    :cond_1e
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const/16 v14, 0x27

    const-wide/16 p1, 0x1

    const/16 v11, 0x20

    const/16 v3, 0x16

    const/4 v12, 0x4

    const/4 v10, 0x6

    const/16 v1, 0x34

    const-wide/16 v19, 0x0

    if-ge v8, v9, :cond_39a

    shl-long v21, p1, v8

    .line 870
    :goto_34
    iget-object v8, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v15, 0x2e

    const/16 v13, 0x3d

    const-wide/high16 v24, 0x3ff000000000000L

    packed-switch v9, :pswitch_data_666

    :goto_43
    :pswitch_43
    goto :goto_53

    :pswitch_44
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_4b

    goto :goto_43

    :cond_4b
    if-le v6, v1, :cond_4e

    move v6, v1

    :cond_4e
    const/16 v8, 0x41

    .line 1125
    invoke-direct {v0, v8, v11}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_53
    :goto_53
    move/from16 v24, v2

    :cond_55
    :goto_55
    const/4 v9, 0x1

    goto/16 :goto_38f

    :pswitch_58
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_5f

    goto :goto_43

    :cond_5f
    if-le v6, v1, :cond_62

    move v6, v1

    :cond_62
    const/16 v8, 0x40

    .line 1118
    invoke-direct {v0, v8, v11}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_53

    .line 1107
    :pswitch_68
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-eq v8, v15, :cond_6d

    goto :goto_43

    :cond_6d
    if-le v6, v1, :cond_70

    move v6, v1

    :cond_70
    const/16 v8, 0x40

    .line 1111
    invoke-direct {v0, v8, v11}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_53

    :pswitch_76
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x3e

    const/16 v9, 0x3f

    .line 1104
    invoke-direct {v0, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_53

    :pswitch_84
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_8b

    goto :goto_43

    :cond_8b
    if-le v6, v1, :cond_8e

    move v6, v1

    :cond_8e
    const/4 v8, 0x3

    .line 1100
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_53

    :pswitch_93
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x1a

    const/16 v9, 0x1d

    .line 1093
    invoke-direct {v0, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_53

    :pswitch_a1
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x19

    .line 1089
    invoke-direct {v0, v3, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_53

    :pswitch_ad
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    .line 1085
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_53

    :pswitch_b7
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1080
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x39

    aput v13, v8, v9

    goto :goto_53

    :pswitch_c8
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1076
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x38

    aput v13, v8, v9

    goto/16 :goto_53

    :pswitch_da
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1072
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x37

    aput v13, v8, v9

    goto/16 :goto_53

    .line 1068
    :pswitch_ec
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    .line 1064
    :pswitch_f1
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v14, :cond_53

    const/16 v8, 0x3e

    if-le v6, v8, :cond_53

    const/16 v6, 0x3e

    goto/16 :goto_53

    :pswitch_fd
    const-wide v8, -0x8000000001L

    and-long v8, v21, v8

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    .line 1061
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    .line 1056
    :pswitch_10d
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v14, :cond_53

    .line 1057
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_116
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x12

    const/16 v9, 0x15

    .line 1053
    invoke-direct {v0, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_125
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0xe

    const/16 v9, 0x11

    .line 1049
    invoke-direct {v0, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_134
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x9

    const/4 v9, 0x7

    .line 1045
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_142
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1040
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2c

    aput v13, v8, v9

    goto/16 :goto_53

    :pswitch_154
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1036
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2b

    aput v13, v8, v9

    goto/16 :goto_53

    :pswitch_166
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_53

    .line 1032
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2a

    aput v13, v8, v9

    goto/16 :goto_53

    :pswitch_178
    const/16 v8, 0x9

    const/4 v9, 0x7

    .line 1028
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    .line 1024
    :pswitch_180
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_53

    if-le v6, v13, :cond_53

    move/from16 v24, v2

    move v6, v13

    goto/16 :goto_55

    :pswitch_18d
    const-wide v8, -0x400000001L

    and-long v8, v21, v8

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x9

    const/4 v9, 0x7

    .line 1021
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_1a0
    const/16 v8, 0x9

    const/4 v9, 0x7

    .line 1016
    iget-char v13, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v15, 0x22

    if-ne v13, v15, :cond_53

    .line 1017
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_1ae
    const/16 v15, 0x22

    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_1b8

    goto/16 :goto_43

    :cond_1b8
    if-le v6, v1, :cond_1bb

    move v6, v1

    .line 1013
    :cond_1bb
    invoke-direct {v0, v15}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    :pswitch_1c0
    const/16 v15, 0x22

    const-wide v8, 0x280000000000L

    and-long v8, v21, v8

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    .line 1006
    invoke-direct {v0, v15}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    :pswitch_1d2
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_1da

    goto/16 :goto_43

    :cond_1da
    if-le v6, v1, :cond_1dd

    move v6, v1

    :cond_1dd
    const/16 v8, 0x1f

    .line 1002
    invoke-direct {v0, v8, v11}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    .line 994
    :pswitch_1e4
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v15, :cond_53

    const/16 v8, 0x1f

    .line 995
    invoke-direct {v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    :pswitch_1ef
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_1f7

    goto/16 :goto_43

    :cond_1f7
    if-le v6, v1, :cond_1fa

    move v6, v1

    :cond_1fa
    const/16 v8, 0x1d

    .line 991
    invoke-direct {v0, v8, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    :pswitch_201
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_209

    goto/16 :goto_43

    :cond_209
    if-le v6, v1, :cond_20c

    move v6, v1

    :cond_20c
    const/16 v8, 0x1c

    .line 984
    invoke-direct {v0, v8, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    .line 973
    :pswitch_213
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-eq v8, v15, :cond_219

    goto/16 :goto_43

    :cond_219
    if-le v6, v1, :cond_21c

    move v6, v1

    :cond_21c
    const/16 v8, 0x1c

    .line 977
    invoke-direct {v0, v8, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    :pswitch_223
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x1a

    const/16 v9, 0x1b

    .line 970
    invoke-direct {v0, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    :pswitch_232
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_23a

    goto/16 :goto_43

    :cond_23a
    if-le v6, v1, :cond_23d

    move v6, v1

    :cond_23d
    const/16 v8, 0xd

    const/16 v9, 0xa

    .line 966
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_53

    :pswitch_246
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_24e

    goto/16 :goto_43

    :cond_24e
    if-le v6, v1, :cond_251

    move v6, v1

    :cond_251
    const/16 v8, 0x18

    .line 959
    invoke-direct {v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    :pswitch_258
    const-wide v8, 0x280000000000L

    and-long v8, v21, v8

    cmp-long v8, v8, v19

    if-eqz v8, :cond_53

    const/16 v8, 0x18

    .line 952
    invoke-direct {v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    :pswitch_26a
    and-long v8, v21, v24

    cmp-long v8, v8, v19

    if-nez v8, :cond_272

    goto/16 :goto_43

    :cond_272
    if-le v6, v1, :cond_275

    move v6, v1

    :cond_275
    const/16 v9, 0x15

    .line 948
    invoke-direct {v0, v9, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    :pswitch_27c
    const/16 v9, 0x15

    .line 940
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v15, :cond_53

    .line 941
    invoke-direct {v0, v9}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_53

    .line 936
    :pswitch_287
    iget-char v9, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v13, 0x30

    if-ne v9, v13, :cond_53

    .line 937
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x13

    aput v13, v8, v9

    goto/16 :goto_53

    :pswitch_299
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-nez v9, :cond_2a1

    goto/16 :goto_43

    :cond_2a1
    const/16 v9, 0x33

    if-le v6, v9, :cond_2a7

    const/16 v6, 0x33

    .line 933
    :cond_2a7
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x11

    aput v13, v8, v9

    goto/16 :goto_53

    .line 925
    :pswitch_2b3
    iget-char v9, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_53

    .line 926
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0xd

    aput v13, v8, v9

    goto/16 :goto_53

    .line 921
    :pswitch_2c3
    iget-char v9, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_53

    .line 922
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0xc

    aput v13, v8, v9

    goto/16 :goto_53

    .line 917
    :pswitch_2d3
    iget-char v9, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v9, v13, :cond_53

    .line 918
    iget v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v9, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v18, 0x9

    aput v18, v8, v9

    goto/16 :goto_53

    .line 913
    :pswitch_2e3
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v13, :cond_53

    const/16 v8, 0xb

    const/16 v9, 0xa

    .line 914
    invoke-direct {v0, v9, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_53

    :pswitch_2f0
    and-long v24, v21, v24

    cmp-long v9, v24, v19

    if-eqz v9, :cond_300

    if-le v6, v1, :cond_2f9

    move v6, v1

    :cond_2f9
    const/4 v8, 0x3

    .line 877
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    :goto_2fd
    move/from16 v24, v2

    goto :goto_32d

    .line 879
    :cond_300
    iget-char v9, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v9, v14, :cond_308

    .line 880
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_2fd

    :cond_308
    const/16 v13, 0x22

    if-ne v9, v13, :cond_315

    move/from16 v24, v2

    const/4 v2, 0x7

    const/16 v13, 0x9

    .line 882
    invoke-direct {v0, v2, v13}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_32d

    :cond_315
    move/from16 v24, v2

    if-ne v9, v15, :cond_31f

    const/16 v2, 0x1f

    .line 884
    invoke-direct {v0, v2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_32d

    :cond_31f
    const/16 v2, 0x2d

    if-ne v9, v2, :cond_32d

    .line 886
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v23, 0x7

    aput v23, v8, v2

    .line 887
    :cond_32d
    :goto_32d
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x30

    if-ne v2, v8, :cond_55

    .line 888
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v9, 0x13

    aput v9, v2, v8

    goto/16 :goto_55

    :pswitch_341
    move/from16 v24, v2

    .line 908
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v9, 0x2d

    if-ne v2, v9, :cond_55

    .line 909
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v10, v8, v2

    goto/16 :goto_55

    :pswitch_353
    move/from16 v24, v2

    .line 904
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_55

    .line 905
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v12, v8, v2

    goto/16 :goto_55

    :pswitch_363
    move/from16 v24, v2

    .line 900
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_55

    .line 901
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    aput v9, v8, v2

    goto/16 :goto_55

    :pswitch_374
    move/from16 v24, v2

    .line 896
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_55

    .line 897
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v24, v8, v2

    goto/16 :goto_55

    :pswitch_384
    move/from16 v24, v2

    .line 892
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v13, :cond_55

    const/4 v2, 0x2

    const/4 v9, 0x1

    .line 893
    invoke-direct {v0, v9, v2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :goto_38f
    if-ne v5, v7, :cond_396

    :goto_391
    const v3, 0x7fffffff

    goto/16 :goto_646

    :cond_396
    move/from16 v2, v24

    goto/16 :goto_34

    :cond_39a
    move/from16 v24, v2

    const/4 v9, 0x1

    const/16 v2, 0x80

    if-ge v8, v2, :cond_606

    and-int/lit8 v2, v8, 0x3f

    shl-long v21, p1, v2

    .line 1136
    :goto_3a5
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v2, v5

    const/4 v13, 0x2

    const/16 v15, 0x5b

    if-eq v8, v13, :cond_5f1

    if-eq v8, v10, :cond_5df

    const/16 v13, 0x8

    if-eq v8, v13, :cond_5b6

    const/16 v13, 0xb

    if-eq v8, v13, :cond_5a4

    const/16 v13, 0x13

    if-eq v8, v13, :cond_58d

    if-eq v8, v11, :cond_575

    const/16 v13, 0x24

    if-eq v8, v13, :cond_563

    const/16 v13, 0x31

    if-eq v8, v13, :cond_554

    const-wide v25, 0x7e0000007eL

    const/16 v13, 0x15

    if-eq v8, v13, :cond_53e

    if-eq v8, v3, :cond_52d

    const/16 v13, 0x19

    if-eq v8, v13, :cond_519

    const/16 v13, 0x1a

    if-eq v8, v13, :cond_50b

    const/16 v13, 0x1c

    if-eq v8, v13, :cond_4fa

    const/16 v13, 0x1d

    if-eq v8, v13, :cond_4e9

    packed-switch v8, :pswitch_data_6ee

    packed-switch v8, :pswitch_data_6f8

    packed-switch v8, :pswitch_data_70a

    :goto_3ec
    goto/16 :goto_4d2

    :pswitch_3ee
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_4d2

    .line 1276
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4d2

    :pswitch_3f9
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1272
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x39

    aput v13, v2, v8

    goto/16 :goto_4d2

    :pswitch_40b
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1268
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x38

    aput v13, v2, v8

    goto/16 :goto_4d2

    :pswitch_41d
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1264
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x37

    aput v13, v2, v8

    goto/16 :goto_4d2

    .line 1259
    :pswitch_42f
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v13, 0x75

    if-ne v8, v13, :cond_4d2

    .line 1260
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x36

    aput v13, v2, v8

    goto/16 :goto_4d2

    .line 1256
    :pswitch_441
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4d2

    .line 1252
    :pswitch_446
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v2, v8, :cond_4d2

    const/16 v2, 0x29

    .line 1253
    invoke-direct {v0, v14, v2}, Lvm2/parser/LuaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_4d2

    :pswitch_453
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_4d2

    const/4 v2, 0x7

    const/16 v8, 0x9

    .line 1245
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4d2

    :pswitch_461
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1241
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2c

    aput v13, v2, v8

    goto :goto_4d2

    :pswitch_472
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1237
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2b

    aput v13, v2, v8

    goto :goto_4d2

    :pswitch_483
    and-long v25, v21, v25

    cmp-long v8, v25, v19

    if-eqz v8, :cond_4d2

    .line 1233
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x2a

    aput v13, v2, v8

    goto :goto_4d2

    .line 1228
    :pswitch_494
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v13, 0x75

    if-ne v8, v13, :cond_4d2

    .line 1229
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x29

    aput v13, v2, v8

    goto :goto_4d2

    :pswitch_4a5
    const/4 v2, 0x7

    const/16 v8, 0x9

    .line 1225
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4d2

    .line 1221
    :pswitch_4ac
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v2, v8, :cond_4d2

    const/16 v2, 0x24

    const/16 v8, 0x26

    .line 1222
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjAddStates(II)V

    goto :goto_4d2

    :pswitch_4ba
    const-wide v25, 0x7fffffe87fffffeL

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-nez v2, :cond_4c7

    goto/16 :goto_3ec

    :cond_4c7
    const/16 v2, 0x33

    if-le v6, v2, :cond_4cd

    const/16 v6, 0x33

    :cond_4cd
    const/16 v2, 0x11

    .line 1170
    invoke-direct {v0, v2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    :cond_4d2
    :goto_4d2
    const/16 v2, 0xa

    :goto_4d4
    const/16 v8, 0x22

    const/16 v13, 0x15

    goto/16 :goto_5fe

    .line 1161
    :pswitch_4da
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v8, v15, :cond_4d2

    .line 1162
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0xe

    aput v13, v2, v8

    goto :goto_4d2

    :cond_4e9
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-nez v2, :cond_4f1

    goto/16 :goto_3ec

    :cond_4f1
    if-le v6, v1, :cond_4f4

    move v6, v1

    :cond_4f4
    const/16 v2, 0x1d

    .line 1210
    invoke-direct {v0, v2, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4d2

    :cond_4fa
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-nez v2, :cond_502

    goto/16 :goto_3ec

    :cond_502
    if-le v6, v1, :cond_505

    move v6, v1

    :cond_505
    const/16 v2, 0x1c

    .line 1203
    invoke-direct {v0, v2, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4d2

    :cond_50b
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_4d2

    const/16 v2, 0x1a

    const/16 v8, 0x1b

    .line 1196
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4d2

    :cond_519
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-nez v2, :cond_521

    goto/16 :goto_3ec

    :cond_521
    if-le v6, v1, :cond_524

    move v6, v1

    :cond_524
    const/16 v2, 0xd

    const/16 v8, 0xa

    .line 1192
    invoke-direct {v0, v8, v2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    move v2, v8

    goto :goto_4d4

    :cond_52d
    const-wide v25, 0x1002000010020L

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_4d2

    const/16 v2, 0x21

    .line 1185
    invoke-direct {v0, v11, v2}, Lvm2/parser/LuaParserTokenManager;->jjAddStates(II)V

    goto :goto_4d2

    :cond_53e
    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-nez v2, :cond_546

    goto/16 :goto_3ec

    :cond_546
    if-le v6, v1, :cond_549

    move v6, v1

    :cond_549
    const/16 v13, 0x15

    .line 1181
    invoke-direct {v0, v13, v3}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_54e
    :goto_54e
    const/16 v2, 0xa

    const/16 v8, 0x22

    goto/16 :goto_5fe

    :cond_554
    const/16 v13, 0x15

    const-wide/32 v25, -0x10000001

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_54e

    .line 1249
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_54e

    :cond_563
    const/16 v13, 0x15

    const-wide/32 v25, -0x10000001

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_54e

    const/4 v2, 0x7

    const/16 v8, 0x9

    .line 1218
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_54e

    :cond_575
    const/16 v13, 0x15

    const-wide v25, 0x2000000020L

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_58a

    const/16 v2, 0x23

    const/16 v8, 0x22

    .line 1214
    invoke-direct {v0, v8, v2}, Lvm2/parser/LuaParserTokenManager;->jjAddStates(II)V

    goto :goto_5b3

    :cond_58a
    const/16 v8, 0x22

    goto :goto_5b3

    :cond_58d
    const/16 v8, 0x22

    const/16 v13, 0x15

    const-wide v25, 0x100000001000000L

    and-long v25, v21, v25

    cmp-long v2, v25, v19

    if-eqz v2, :cond_5b3

    const/16 v2, 0x1e

    const/16 v15, 0x1f

    .line 1174
    invoke-direct {v0, v2, v15}, Lvm2/parser/LuaParserTokenManager;->jjAddStates(II)V

    goto :goto_5b3

    :cond_5a4
    const/16 v8, 0x22

    const/16 v13, 0x15

    .line 1157
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v15, :cond_5b3

    const/16 v2, 0xf

    if-le v6, v2, :cond_5b3

    const/16 v2, 0xf

    move v6, v2

    :cond_5b3
    :goto_5b3
    const/16 v2, 0xa

    goto :goto_5fe

    :cond_5b6
    const/16 v8, 0x22

    const/16 v13, 0x15

    const-wide v25, 0x7fffffe87fffffeL

    and-long v25, v21, v25

    cmp-long v16, v25, v19

    if-eqz v16, :cond_5d0

    const/16 v3, 0x33

    if-le v6, v3, :cond_5ca

    move v6, v3

    :cond_5ca
    const/16 v2, 0x11

    .line 1143
    invoke-direct {v0, v2}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5b3

    .line 1145
    :cond_5d0
    iget-char v3, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v3, v15, :cond_5b3

    .line 1146
    iget v3, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v15, v3, 0x1

    iput v15, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/16 v15, 0xe

    aput v15, v2, v3

    goto :goto_5b3

    :cond_5df
    const/16 v8, 0x22

    const/16 v13, 0x15

    .line 1153
    iget-char v3, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v3, v15, :cond_5b3

    .line 1154
    iget v3, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v15, v3, 0x1

    iput v15, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    const/4 v15, 0x5

    aput v15, v2, v3

    goto :goto_5b3

    :cond_5f1
    const/16 v8, 0x22

    const/16 v13, 0x15

    .line 1149
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v15, :cond_5b3

    const/16 v2, 0xa

    if-le v6, v2, :cond_5fe

    move v6, v2

    :cond_5fe
    :goto_5fe
    if-ne v5, v7, :cond_602

    goto/16 :goto_391

    :cond_602
    const/16 v3, 0x16

    goto/16 :goto_3a5

    :cond_606
    shr-int/lit8 v25, v8, 0x8

    shr-int/lit8 v26, v8, 0xe

    and-int/lit8 v2, v25, 0x3f

    shl-long v28, p1, v2

    and-int/lit16 v2, v8, 0xff

    shr-int/lit8 v27, v2, 0x6

    and-int/lit8 v2, v8, 0x3f

    shl-long v30, p1, v2

    .line 1291
    :cond_616
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    const/16 v3, 0x24

    if-eq v2, v3, :cond_636

    if-eq v2, v14, :cond_636

    const/16 v3, 0x31

    if-eq v2, v3, :cond_62c

    if-eq v2, v1, :cond_62c

    :cond_628
    :goto_628
    const/4 v2, 0x7

    const/16 v8, 0x9

    goto :goto_642

    .line 1300
    :cond_62c
    invoke-static/range {v25 .. v31}, Lvm2/parser/LuaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v2

    if-eqz v2, :cond_628

    .line 1301
    invoke-direct {v0, v12, v10}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_628

    .line 1295
    :cond_636
    invoke-static/range {v25 .. v31}, Lvm2/parser/LuaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v2

    if-eqz v2, :cond_628

    const/4 v2, 0x7

    const/16 v8, 0x9

    .line 1296
    invoke-direct {v0, v2, v8}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    :goto_642
    if-ne v5, v7, :cond_616

    goto/16 :goto_391

    :goto_646
    if-eq v6, v3, :cond_64d

    .line 1309
    iput v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1310
    iput v4, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_64d
    add-int/lit8 v4, v4, 0x1

    .line 1314
    iget v5, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0x42

    if-ne v5, v7, :cond_658

    goto :goto_665

    .line 1316
    :cond_658
    :try_start_658
    iget-object v1, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_660
    .catch Ljava/io/IOException; {:try_start_658 .. :try_end_660} :catch_665

    move v1, v9

    move/from16 v2, v24

    goto/16 :goto_14

    :catch_665
    :goto_665
    return v4

    :pswitch_data_666
    .packed-switch 0x0
        :pswitch_384
        :pswitch_384
        :pswitch_43
        :pswitch_374
        :pswitch_363
        :pswitch_353
        :pswitch_43
        :pswitch_341
        :pswitch_2f0
        :pswitch_2e3
        :pswitch_2e3
        :pswitch_43
        :pswitch_2d3
        :pswitch_2c3
        :pswitch_2b3
        :pswitch_43
        :pswitch_43
        :pswitch_299
        :pswitch_287
        :pswitch_43
        :pswitch_27c
        :pswitch_26a
        :pswitch_43
        :pswitch_258
        :pswitch_246
        :pswitch_232
        :pswitch_223
        :pswitch_213
        :pswitch_201
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1d2
        :pswitch_43
        :pswitch_1c0
        :pswitch_1ae
        :pswitch_1a0
        :pswitch_18d
        :pswitch_180
        :pswitch_43
        :pswitch_178
        :pswitch_43
        :pswitch_166
        :pswitch_154
        :pswitch_142
        :pswitch_134
        :pswitch_125
        :pswitch_116
        :pswitch_134
        :pswitch_10d
        :pswitch_fd
        :pswitch_f1
        :pswitch_43
        :pswitch_ec
        :pswitch_43
        :pswitch_da
        :pswitch_c8
        :pswitch_b7
        :pswitch_ad
        :pswitch_a1
        :pswitch_93
        :pswitch_ad
        :pswitch_84
        :pswitch_76
        :pswitch_68
        :pswitch_58
        :pswitch_44
    .end packed-switch

    :pswitch_data_6ee
    .packed-switch 0xf
        :pswitch_4da
        :pswitch_4ba
        :pswitch_4ba
    .end packed-switch

    :pswitch_data_6f8
    .packed-switch 0x26
        :pswitch_4ac
        :pswitch_4a5
        :pswitch_494
        :pswitch_483
        :pswitch_472
        :pswitch_461
        :pswitch_453
    .end packed-switch

    :pswitch_data_70a
    .packed-switch 0x33
        :pswitch_446
        :pswitch_441
        :pswitch_42f
        :pswitch_41d
        :pswitch_40b
        :pswitch_3f9
        :pswitch_3ee
    .end packed-switch
.end method

.method private jjMoveNfa_1(II)I
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 1327
    iput v1, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    .line 1329
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move v6, v2

    move v5, v3

    move v7, v4

    move/from16 v3, p2

    .line 1333
    :goto_13
    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    add-int/2addr v8, v2

    iput v8, v0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v8, v4, :cond_1d

    .line 1334
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->ReInitRounds()V

    .line 1335
    :cond_1d
    iget-char v8, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/16 v12, 0x2c

    const/16 v13, 0x2a

    const/16 v14, 0x11

    if-ge v8, v9, :cond_a1

    shl-long v15, v10, v8

    .line 1340
    :goto_2d
    iget-object v8, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v8, v6

    const-wide/16 v17, 0x0

    if-eqz v9, :cond_8f

    const-wide/16 v19, 0x2400

    if-eq v9, v2, :cond_86

    const/4 v2, 0x2

    if-eq v9, v2, :cond_7c

    move/from16 p2, v2

    const/4 v2, 0x3

    const-wide/16 v21, -0x2401

    const/16 v10, 0xd

    if-eq v9, v2, :cond_6f

    if-eq v9, v1, :cond_4a

    goto :goto_9c

    :cond_4a
    and-long v8, v15, v21

    cmp-long v2, v8, v17

    if-eqz v2, :cond_57

    if-le v7, v14, :cond_53

    move v7, v14

    .line 1347
    :cond_53
    invoke-direct {v0, v13, v12}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_60

    :cond_57
    and-long v8, v15, v19

    cmp-long v2, v8, v17

    if-eqz v2, :cond_60

    if-le v7, v14, :cond_60

    move v7, v14

    .line 1354
    :cond_60
    :goto_60
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v10, :cond_9c

    .line 1355
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput p2, v2, v8

    goto :goto_9c

    .line 1372
    :cond_6f
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v2, v10, :cond_9c

    .line 1373
    iget v2, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput p2, v8, v2

    goto :goto_9c

    .line 1368
    :cond_7c
    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0xa

    if-ne v2, v8, :cond_9c

    if-le v7, v14, :cond_9c

    :goto_84
    move v7, v14

    goto :goto_9c

    :cond_86
    and-long v8, v15, v19

    cmp-long v2, v8, v17

    if-eqz v2, :cond_9c

    if-le v7, v14, :cond_9c

    goto :goto_84

    :cond_8f
    const-wide/16 v21, -0x2401

    and-long v8, v15, v21

    cmp-long v2, v8, v17

    if-nez v2, :cond_98

    goto :goto_9c

    .line 1361
    :cond_98
    invoke-direct {v0, v13, v12}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_84

    :cond_9c
    :goto_9c
    if-ne v6, v5, :cond_9f

    goto :goto_e1

    :cond_9f
    const/4 v2, 0x1

    goto :goto_2d

    :cond_a1
    const/16 v2, 0x80

    if-ge v8, v2, :cond_b7

    .line 1384
    :cond_a5
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-eqz v2, :cond_b0

    if-eq v2, v1, :cond_b0

    goto :goto_b4

    .line 1389
    :cond_b0
    invoke-direct {v0, v13, v12}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    move v7, v14

    :goto_b4
    if-ne v6, v5, :cond_a5

    goto :goto_e1

    :cond_b7
    shr-int/lit8 v15, v8, 0x8

    shr-int/lit8 v16, v8, 0xe

    and-int/lit8 v2, v15, 0x3f

    shl-long v18, v10, v2

    and-int/lit16 v2, v8, 0xff

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v2, v8, 0x3f

    shl-long v20, v10, v2

    .line 1404
    :cond_c7
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-eqz v2, :cond_d2

    if-eq v2, v1, :cond_d2

    goto :goto_df

    .line 1408
    :cond_d2
    invoke-static/range {v15 .. v21}, Lvm2/parser/LuaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v2

    if-nez v2, :cond_d9

    goto :goto_df

    :cond_d9
    if-le v7, v14, :cond_dc

    move v7, v14

    .line 1412
    :cond_dc
    invoke-direct {v0, v13, v12}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddStates(II)V

    :goto_df
    if-ne v6, v5, :cond_c7

    :goto_e1
    if-eq v7, v4, :cond_e8

    .line 1420
    iput v7, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1421
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v7, v4

    :cond_e8
    add-int/lit8 v3, v3, 0x1

    .line 1425
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v5, v0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v5, v5, 0x4

    if-ne v6, v5, :cond_f3

    goto :goto_fe

    .line 1427
    :cond_f3
    :try_start_f3
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fb} :catch_fe

    const/4 v2, 0x1

    goto/16 :goto_13

    :catch_fe
    :goto_fe
    return v3
.end method

.method private jjMoveNfa_11(II)I
    .registers 15

    const/4 v0, 0x7

    .line 52
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    .line 54
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const v0, 0x7fffffff

    move v2, p1

    move v4, v0

    move v3, v1

    .line 58
    :goto_f
    iget v5, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    add-int/2addr v5, p1

    iput v5, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v5, v0, :cond_19

    .line 59
    invoke-direct {p0}, Lvm2/parser/LuaParserTokenManager;->ReInitRounds()V

    .line 60
    :cond_19
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v6, 0x40

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ge v5, v6, :cond_67

    .line 65
    :cond_21
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x3d

    if-eqz v6, :cond_5d

    if-eq v6, p1, :cond_5d

    const/4 v10, 0x3

    if-eq v6, v10, :cond_50

    const/4 v11, 0x4

    if-eq v6, v11, :cond_43

    if-eq v6, v8, :cond_36

    goto :goto_64

    .line 81
    :cond_36
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 82
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v11, v5, v6

    goto :goto_64

    .line 77
    :cond_43
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 78
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v10, v5, v6

    goto :goto_64

    .line 73
    :cond_50
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 74
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v1, v5, v6

    goto :goto_64

    .line 69
    :cond_5d
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v5, v9, :cond_64

    .line 70
    invoke-direct {p0, p1, v7}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_64
    :goto_64
    if-ne v2, v3, :cond_21

    goto :goto_9a

    :cond_67
    const/16 v6, 0x80

    if-ge v5, v6, :cond_92

    .line 93
    :cond_6b
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x5d

    if-eq v6, v7, :cond_86

    const/4 v10, 0x6

    if-eq v6, v10, :cond_79

    goto :goto_8f

    .line 100
    :cond_79
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_8f

    .line 101
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v8, v5, v6

    goto :goto_8f

    .line 96
    :cond_86
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v5, v9, :cond_8f

    const/16 v5, 0x1b

    if-le v4, v5, :cond_8f

    move v4, v5

    :cond_8f
    :goto_8f
    if-ne v2, v3, :cond_6b

    goto :goto_9a

    .line 116
    :cond_92
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v5, v5, v2

    if-ne v2, v3, :cond_92

    :goto_9a
    if-eq v4, v0, :cond_a1

    .line 124
    iput v4, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 125
    iput p2, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v4, v0

    :cond_a1
    add-int/lit8 p2, p2, 0x1

    .line 129
    iget v2, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_ac

    goto :goto_b6

    .line 131
    :cond_ac
    :try_start_ac
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v5}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b4} :catch_b6

    goto/16 :goto_f

    :catch_b6
    :goto_b6
    return p2
.end method

.method private jjMoveNfa_6(II)I
    .registers 15

    const/4 v0, 0x7

    .line 1438
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    .line 1440
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const v0, 0x7fffffff

    move v2, p1

    move v4, v0

    move v3, v1

    .line 1444
    :goto_f
    iget v5, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    add-int/2addr v5, p1

    iput v5, p0, Lvm2/parser/LuaParserTokenManager;->jjround:I

    if-ne v5, v0, :cond_19

    .line 1445
    invoke-direct {p0}, Lvm2/parser/LuaParserTokenManager;->ReInitRounds()V

    .line 1446
    :cond_19
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v6, 0x40

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ge v5, v6, :cond_67

    .line 1451
    :cond_21
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x3d

    if-eqz v6, :cond_5d

    if-eq v6, p1, :cond_5d

    const/4 v10, 0x3

    if-eq v6, v10, :cond_50

    const/4 v11, 0x4

    if-eq v6, v11, :cond_43

    if-eq v6, v8, :cond_36

    goto :goto_64

    .line 1467
    :cond_36
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 1468
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v11, v5, v6

    goto :goto_64

    .line 1463
    :cond_43
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 1464
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v10, v5, v6

    goto :goto_64

    .line 1459
    :cond_50
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_64

    .line 1460
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v1, v5, v6

    goto :goto_64

    .line 1455
    :cond_5d
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v5, v9, :cond_64

    .line 1456
    invoke-direct {p0, p1, v7}, Lvm2/parser/LuaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_64
    :goto_64
    if-ne v2, v3, :cond_21

    goto :goto_9a

    :cond_67
    const/16 v6, 0x80

    if-ge v5, v6, :cond_92

    .line 1479
    :cond_6b
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x5d

    if-eq v6, v7, :cond_86

    const/4 v10, 0x6

    if-eq v6, v10, :cond_79

    goto :goto_8f

    .line 1486
    :cond_79
    iget-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_8f

    .line 1487
    iget v6, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    aput v8, v5, v6

    goto :goto_8f

    .line 1482
    :cond_86
    iget-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    if-ne v5, v9, :cond_8f

    const/16 v5, 0x16

    if-le v4, v5, :cond_8f

    move v4, v5

    :cond_8f
    :goto_8f
    if-ne v2, v3, :cond_6b

    goto :goto_9a

    .line 1502
    :cond_92
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v2, v2, -0x1

    aget v5, v5, v2

    if-ne v2, v3, :cond_92

    :goto_9a
    if-eq v4, v0, :cond_a1

    .line 1510
    iput v4, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1511
    iput p2, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    move v4, v0

    :cond_a1
    add-int/lit8 p2, p2, 0x1

    .line 1515
    iget v2, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v3, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_ac

    goto :goto_b6

    .line 1517
    :cond_ac
    :try_start_ac
    iget-object v5, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v5}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b4} :catch_b6

    goto/16 :goto_f

    :catch_b6
    :goto_b6
    return p2
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .registers 11

    .line 446
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-eq v0, v1, :cond_185

    const/16 v1, 0x25

    if-eq v0, v1, :cond_17e

    const/16 v1, 0x5b

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_173

    const/16 v5, 0x69

    if-eq v0, v5, :cond_169

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_15f

    const/16 v5, 0x72

    if-eq v0, v5, :cond_155

    const/16 v5, 0x77

    if-eq v0, v5, :cond_14e

    const/16 v5, 0x7b

    if-eq v0, v5, :cond_147

    const/16 v5, 0x5d

    if-eq v0, v5, :cond_140

    const/16 v5, 0x5e

    if-eq v0, v5, :cond_139

    const/16 v5, 0x61

    const-wide/32 v6, 0x20000000

    if-eq v0, v5, :cond_134

    const/16 v5, 0x62

    const-wide/32 v8, 0x40000000

    if-eq v0, v5, :cond_12f

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_125

    const/16 v5, 0x6f

    if-eq v0, v5, :cond_11b

    const/16 v5, 0x74

    if-eq v0, v5, :cond_111

    const/16 v5, 0x75

    if-eq v0, v5, :cond_10a

    const/16 v5, 0x7d

    if-eq v0, v5, :cond_103

    const/16 v5, 0x7e

    if-eq v0, v5, :cond_fe

    packed-switch v0, :pswitch_data_18c

    packed-switch v0, :pswitch_data_1a0

    packed-switch v0, :pswitch_data_1ae

    const/16 v0, 0x8

    .line 526
    invoke-direct {p0, v0, v2}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_63
    const-wide v0, 0x4000000000L

    .line 502
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_6d
    const-wide v0, 0x3800000000L

    .line 500
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_77
    const-wide v0, 0x700000000L

    .line 498
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_81
    const-wide v0, 0x80000000L

    .line 496
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    .line 482
    :pswitch_8b
    iput v1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x10000000

    .line 483
    invoke-direct {p0, v3, v4, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_95
    const/16 v0, 0x47

    .line 479
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 480
    invoke-direct {p0, v3, v4, v6, v7}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_9e
    const/16 v0, 0x59

    .line 476
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x4000000

    .line 477
    invoke-direct {p0, v3, v4, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_aa
    const/16 v0, 0x46

    .line 474
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_b1
    const/16 v0, 0x4a

    .line 471
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x2

    .line 472
    invoke-direct {p0, v3, v4, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_bc
    const/16 v0, 0x55

    .line 469
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_c3
    const/16 v0, 0x49

    .line 466
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x1008000

    .line 467
    invoke-direct {p0, v3, v4, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_cf
    const/16 v0, 0x53

    .line 463
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x103c0

    .line 464
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :pswitch_db
    const/16 v0, 0x48

    .line 461
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_e2
    const/16 v0, 0x52

    .line 459
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_e9
    const/16 v0, 0x54

    .line 457
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_f0
    const/16 v0, 0x4c

    .line 455
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_f7
    const/16 v0, 0x4b

    .line 453
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 524
    :cond_fe
    invoke-direct {p0, v3, v4, v8, v9}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_103
    const/16 v0, 0x51

    .line 522
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_10a
    const-wide/high16 v0, 0x2000000000000L

    .line 516
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_111
    const-wide v0, 0x1800000000000L

    .line 514
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_11b
    const-wide v0, 0x100000000000L

    .line 510
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_125
    const-wide v0, 0xc0000000000L

    .line 508
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    .line 494
    :cond_12f
    invoke-direct {p0, v8, v9, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    .line 492
    :cond_134
    invoke-direct {p0, v6, v7, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_139
    const/16 v0, 0x56

    .line 490
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_140
    const/16 v0, 0x4e

    .line 488
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_147
    const/16 v0, 0x50

    .line 520
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_14e
    const-wide/high16 v0, 0x4000000000000L

    .line 518
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_155
    const-wide v0, 0x600000000000L

    .line 512
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_15f
    const-wide v0, 0x20000000000L

    .line 506
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_169
    const-wide v0, 0x18000000000L

    .line 504
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_173
    const/16 v0, 0x4d

    .line 485
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x7800

    .line 486
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    return v0

    :cond_17e
    const/16 v0, 0x57

    .line 451
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_185
    const/16 v0, 0x45

    .line 449
    invoke-direct {p0, v2, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_18c
    .packed-switch 0x28
        :pswitch_f7
        :pswitch_f0
        :pswitch_e9
        :pswitch_e2
        :pswitch_db
        :pswitch_cf
        :pswitch_c3
        :pswitch_bc
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x3a
        :pswitch_b1
        :pswitch_aa
        :pswitch_9e
        :pswitch_95
        :pswitch_8b
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x64
        :pswitch_81
        :pswitch_77
        :pswitch_6d
        :pswitch_63
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1322
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_10()I
    .registers 3

    .line 137
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x4000000

    .line 140
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_10(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_11()I
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_11(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .registers 3

    .line 20
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x40000

    .line 23
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .registers 3

    .line 1657
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x80000

    .line 1660
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_4()I
    .registers 3

    .line 1598
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x100000

    .line 1601
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_4(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_5()I
    .registers 3

    .line 1523
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x200000

    .line 1526
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_5(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_6()I
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1433
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_6(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_7()I
    .registers 3

    .line 314
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x800000

    .line 317
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_7(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_8()I
    .registers 3

    .line 271
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x1000000

    .line 274
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_8(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_9()I
    .registers 3

    .line 212
    iget-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-wide/32 v0, 0x2000000

    .line 215
    invoke-direct {p0, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa1_9(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(JJ)I
    .registers 14

    const/4 v0, 0x1

    .line 531
    :try_start_1
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_1d1

    const/16 v2, 0x2d

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_1b6

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_19a

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_181

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_138

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_126

    const/16 v2, 0x61

    if-eq v1, v2, :cond_117

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_108

    const/16 v2, 0x72

    const/16 v5, 0x11

    if-eq v1, v2, :cond_e6

    const/16 v2, 0x75

    if-eq v1, v2, :cond_d7

    const/16 v2, 0x65

    if-eq v1, v2, :cond_c8

    const/16 v2, 0x66

    if-eq v1, v2, :cond_af

    const/16 v2, 0x68

    if-eq v1, v2, :cond_a0

    const/16 v2, 0x69

    if-eq v1, v2, :cond_91

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_6f

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_4e

    move-object v0, p0

    move-wide v2, p1

    move-wide v5, p3

    goto/16 :goto_193

    :cond_4e
    const-wide v1, 0x80000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5f

    const/16 p1, 0x1f

    .line 590
    invoke-direct {p0, v0, p1, v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_5f
    const-wide v3, 0xa5000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    .line 591
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    move-object v1, v0

    return p1

    :cond_6f
    move-wide v1, p1

    move p1, v0

    move p2, v5

    move-object v0, p0

    move-wide v5, p3

    const-wide p3, 0x10000000000L

    and-long/2addr p3, v1

    cmp-long p3, p3, v3

    if-eqz p3, :cond_85

    const/16 p3, 0x28

    .line 586
    invoke-direct {p0, p1, p3, p2}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_85
    const-wide v3, 0x2000420000000L

    const-wide/16 v7, 0x0

    .line 587
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_91
    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 581
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_a0
    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x4800000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 579
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_af
    move-wide v1, p1

    move p1, v0

    move p2, v5

    move-object v0, p0

    move-wide v5, p3

    const-wide p3, 0x8000000000L

    and-long/2addr p3, v1

    cmp-long p3, p3, v3

    if-eqz p3, :cond_c5

    const/16 p3, 0x27

    .line 576
    invoke-direct {p0, p1, p3, p2}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_c5
    move-wide v2, v1

    goto/16 :goto_193

    :cond_c8
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x600000000000L

    const-wide/16 v7, 0x0

    .line 573
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_d7
    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 597
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_e6
    move-wide v1, p1

    move p1, v0

    move p2, v5

    move-object v0, p0

    move-wide v5, p3

    const-wide p3, 0x100000000000L

    and-long/2addr p3, v1

    cmp-long p3, p3, v3

    if-eqz p3, :cond_fc

    const/16 p3, 0x2c

    .line 594
    invoke-direct {p0, p1, p3, p2}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_fc
    const-wide v3, 0x1000040000000L

    const-wide/16 v7, 0x0

    .line 595
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_108
    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x300000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 583
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_117
    move-wide v1, p1

    move-wide v5, p3

    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 571
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_126
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-object v0, p0

    const-wide/16 p2, 0x800

    and-long/2addr p2, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_c5

    const/16 p2, 0xb

    .line 568
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_138
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-object v0, p0

    const-wide/32 p2, 0x4000000

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_14b

    const/16 p2, 0x5a

    .line 558
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_14b
    const-wide/32 p2, 0x10000000

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_15a

    const/16 p2, 0x5c

    .line 560
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_15a
    const-wide/32 p2, 0x20000000

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_169

    const/16 p2, 0x5d

    .line 562
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_169
    const-wide/32 p2, 0x40000000

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_178

    const/16 p2, 0x5e

    .line 564
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_178
    const-wide/16 v3, 0x7000

    const-wide/16 v7, 0x0

    .line 565
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_181
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-object v0, p0

    const-wide/16 p2, 0x2

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_c5

    const/16 p2, 0x41

    .line 554
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :goto_193
    const/4 v1, 0x0

    move-wide v4, v5

    .line 601
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_19a
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-object v0, p0

    const-wide/32 p2, 0x1000000

    and-long/2addr p2, v5

    cmp-long p2, p2, v3

    if-eqz p2, :cond_1ac

    const/16 p2, 0x58

    .line 548
    iput p2, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 549
    iput p1, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_1ac
    const-wide/16 v3, 0x0

    const-wide/32 v7, 0x8000

    .line 551
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :cond_1b6
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-object v0, p0

    const-wide/32 p2, 0x10000

    and-long/2addr p2, v1

    cmp-long p2, p2, v3

    if-eqz p2, :cond_1c8

    const/16 p2, 0x10

    .line 541
    iput p2, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 542
    iput p1, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_1c8
    const-wide/16 v3, 0x3c0

    const-wide/16 v7, 0x0

    .line 544
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result p1

    return p1

    :catch_1d1
    move-wide v1, p1

    move-wide v5, p3

    move p1, v0

    move-wide v3, v1

    const/4 v2, 0x0

    move-object v1, p0

    .line 533
    invoke-direct/range {v1 .. v6}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa1_10(J)I
    .registers 5

    .line 147
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x4000000

    .line 154
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_10(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .registers 7

    const/4 v0, 0x1

    .line 30
    :try_start_1
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_21

    const/16 v2, 0x5d

    const/4 v3, 0x2

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    const-wide/32 v1, 0x40000

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_20

    const/16 p1, 0x12

    .line 38
    invoke-direct {p0, v0, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_20
    return v3

    :catch_21
    return v0
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .registers 5

    .line 1667
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x80000

    .line 1674
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa1_4(J)I
    .registers 5

    .line 1608
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x100000

    .line 1615
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_4(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa1_5(J)I
    .registers 5

    .line 1533
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x200000

    .line 1540
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_5(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa1_7(J)I
    .registers 7

    const/4 v0, 0x1

    .line 324
    :try_start_1
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_21

    const/16 v2, 0x5d

    const/4 v3, 0x2

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    const-wide/32 v1, 0x800000

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_20

    const/16 p1, 0x17

    .line 332
    invoke-direct {p0, v0, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_20
    return v3

    :catch_21
    return v0
.end method

.method private jjMoveStringLiteralDfa1_8(J)I
    .registers 5

    .line 281
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x1000000

    .line 288
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_8(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa1_9(J)I
    .registers 5

    .line 222
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_16

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const-wide/32 v0, 0x2000000

    .line 229
    invoke-direct {p0, p1, p2, v0, v1}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa2_9(JJ)I

    move-result p1

    return p1

    :catch_16
    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJ)I
    .registers 22

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_16

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    .line 606
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result v1

    return v1

    :cond_16
    const/4 v3, 0x2

    .line 607
    :try_start_17
    iget-object v4, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v4}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v4

    iput-char v4, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_144

    const/16 v9, 0x2e

    if-eq v4, v9, :cond_129

    const/16 v9, 0x3d

    if-eq v4, v9, :cond_11f

    const/16 v9, 0x5b

    if-eq v4, v9, :cond_107

    const/16 v9, 0x69

    if-eq v4, v9, :cond_fd

    const/16 v9, 0x6c

    const/16 v10, 0x11

    if-eq v4, v9, :cond_df

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_d2

    const/16 v9, 0x70

    if-eq v4, v9, :cond_c5

    packed-switch v4, :pswitch_data_150

    packed-switch v4, :pswitch_data_15a

    goto/16 :goto_138

    :pswitch_45
    const-wide/high16 v3, 0x1000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 655
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :pswitch_4f
    const-wide v11, 0x80000000000L

    and-long/2addr v11, v1

    cmp-long v4, v11, v7

    if-eqz v4, :cond_60

    const/16 v1, 0x2b

    .line 652
    invoke-direct {p0, v3, v1, v10}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    return v1

    :cond_60
    const-wide v3, 0x2204000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 653
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :pswitch_6d
    const-wide v3, 0x300000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 649
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :pswitch_7a
    const-wide v11, 0x1000000000L

    and-long/2addr v11, v1

    cmp-long v4, v11, v7

    if-eqz v4, :cond_138

    const/16 v1, 0x24

    .line 646
    invoke-direct {p0, v3, v1, v10}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    return v1

    :pswitch_8b
    const-wide v3, 0x800040000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 633
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :pswitch_98
    const-wide/32 v11, 0x20000000

    and-long/2addr v11, v1

    cmp-long v4, v11, v7

    if-eqz v4, :cond_a7

    const/16 v1, 0x1d

    .line 628
    invoke-direct {p0, v3, v1, v10}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    return v1

    :cond_a7
    const-wide v11, 0x400000000L

    and-long/2addr v11, v1

    cmp-long v4, v11, v7

    if-eqz v4, :cond_138

    const/16 v1, 0x22

    .line 630
    invoke-direct {p0, v3, v1, v10}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    return v1

    :pswitch_b8
    const-wide v3, 0x20000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 625
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_c5
    const-wide v3, 0x400000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 643
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_d2
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 641
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_df
    const-wide v11, 0x40000000000L

    and-long/2addr v11, v1

    cmp-long v4, v11, v7

    if-eqz v4, :cond_f0

    const/16 v1, 0x2a

    .line 638
    invoke-direct {p0, v3, v1, v10}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    return v1

    :cond_f0
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 639
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_fd
    const-wide/high16 v3, 0x4000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 635
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_107
    const-wide/16 v9, 0x1000

    and-long/2addr v9, v1

    cmp-long v4, v9, v7

    if-eqz v4, :cond_115

    const/16 v1, 0xc

    .line 622
    invoke-direct {p0, v3, v1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    return v1

    :cond_115
    const-wide/16 v3, 0x3c0

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 623
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_11f
    const-wide/16 v3, 0x6000

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 619
    invoke-direct/range {v0 .. v8}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    return v1

    :cond_129
    const-wide/32 v9, 0x8000

    and-long/2addr v9, v5

    cmp-long v4, v9, v7

    if-eqz v4, :cond_138

    const/16 v1, 0x4f

    .line 616
    invoke-direct {p0, v3, v1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    return v1

    :cond_138
    :goto_138
    const/4 v3, 0x1

    move-object p1, p0

    move-wide/from16 p3, v1

    move p2, v3

    move-wide/from16 p5, v5

    .line 659
    invoke-direct/range {p1 .. p6}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result v0

    return v0

    :catch_144
    const/4 v0, 0x1

    move-object p1, p0

    move p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    .line 609
    invoke-direct/range {p1 .. p6}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return v3

    nop

    :pswitch_data_150
    .packed-switch 0x63
        :pswitch_b8
        :pswitch_98
        :pswitch_8b
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x72
        :pswitch_7a
        :pswitch_6d
        :pswitch_4f
        :pswitch_45
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_10(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x2

    if-nez p3, :cond_9

    return p4

    .line 163
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x3

    return p1

    :cond_17
    const-wide/32 p3, 0x4000000

    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_10(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa2_3(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x2

    if-nez v0, :cond_9

    return v1

    .line 1683
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x3

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x80000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x13

    .line 1691
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa2_4(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x2

    if-nez p3, :cond_9

    return p4

    .line 1624
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x3

    return p1

    :cond_17
    const-wide/32 p3, 0x100000

    .line 1631
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_4(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa2_5(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x2

    if-nez p3, :cond_9

    return p4

    .line 1549
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x3

    return p1

    :cond_17
    const-wide/32 p3, 0x200000

    .line 1556
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_5(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa2_8(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x2

    if-nez v0, :cond_9

    return v1

    .line 297
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x3

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x1000000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x18

    .line 305
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa2_9(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x2

    if-nez p3, :cond_9

    return p4

    .line 238
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x3

    return p1

    :cond_17
    const-wide/32 p3, 0x2000000

    .line 245
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa3_9(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJ)I
    .registers 18

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p5

    .line 664
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result v1

    return v1

    :cond_14
    const/4 v3, 0x3

    .line 665
    :try_start_15
    iget-object v6, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v6}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v6

    iput-char v6, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_fc

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_f5

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_ce

    const/16 v7, 0x61

    if-eq v6, v7, :cond_c4

    const/16 v7, 0x63

    if-eq v6, v7, :cond_ba

    const/16 v7, 0x65

    const/16 v8, 0x11

    if-eq v6, v7, :cond_91

    const/16 v7, 0x69

    if-eq v6, v7, :cond_8a

    const/16 v7, 0x6c

    if-eq v6, v7, :cond_83

    const/16 v7, 0x73

    if-eq v6, v7, :cond_79

    const/16 v7, 0x75

    if-eq v6, v7, :cond_6f

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_5e

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_4d

    goto/16 :goto_e9

    :cond_4d
    const-wide v6, 0x4000000000L

    and-long/2addr v6, v0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_e9

    const/16 v0, 0x26

    .line 703
    invoke-direct {p0, v3, v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_5e
    const-wide v6, 0x800000000000L

    and-long/2addr v6, v0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_e9

    const/16 v0, 0x2f

    .line 699
    invoke-direct {p0, v3, v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6f
    const-wide v3, 0x200000000000L

    .line 708
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_79
    const-wide v3, 0x800000000L

    .line 706
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_83
    const-wide/high16 v3, 0x4000000000000L

    .line 696
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_8a
    const-wide/high16 v3, 0x2000000000000L

    .line 694
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_91
    const-wide v6, 0x100000000L

    and-long/2addr v6, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_a2

    const/16 v4, 0x20

    .line 687
    iput v4, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 688
    iput v3, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    goto :goto_b0

    :cond_a2
    const-wide/high16 v6, 0x1000000000000L

    and-long/2addr v6, v0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_b0

    const/16 v0, 0x30

    .line 691
    invoke-direct {p0, v3, v0, v8}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b0
    :goto_b0
    const-wide v3, 0x400200000000L

    .line 692
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_ba
    const-wide v3, 0x2000000000L

    .line 683
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_c4
    const-wide v3, 0x20040000000L

    .line 681
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :cond_ce
    const-wide/16 v6, 0x40

    and-long/2addr v6, v0

    cmp-long v6, v6, v4

    if-eqz v6, :cond_db

    const/4 v0, 0x6

    .line 676
    invoke-direct {p0, v3, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_db
    const-wide/16 v6, 0x2000

    and-long/2addr v6, v0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_e9

    const/16 v0, 0xd

    .line 678
    invoke-direct {p0, v3, v0}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_e9
    :goto_e9
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object p1, p0

    move-wide p3, v0

    move p2, v3

    move-wide p5, v4

    .line 712
    invoke-direct/range {p1 .. p6}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result v0

    return v0

    :cond_f5
    const-wide/16 v3, 0x4380

    .line 673
    invoke-direct {p0, v0, v1, v3, v4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v0

    return v0

    :catch_fc
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    move-object p1, p0

    move-wide p3, v0

    move p2, v4

    move-wide p5, v5

    .line 667
    invoke-direct/range {p1 .. p6}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return v3
.end method

.method private jjMoveStringLiteralDfa3_10(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x3

    if-nez p3, :cond_9

    return p4

    .line 179
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x4

    return p1

    :cond_17
    const-wide/32 p3, 0x4000000

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_10(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa3_4(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x3

    if-nez v0, :cond_9

    return v1

    .line 1640
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x4

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x100000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x14

    .line 1648
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa3_5(JJ)I
    .registers 5

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    const/4 p4, 0x3

    if-nez p3, :cond_9

    return p4

    .line 1565
    :cond_9
    :try_start_9
    iget-object p3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p3}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p3

    iput-char p3, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_1f

    const/16 p4, 0x3d

    if-eq p3, p4, :cond_17

    const/4 p1, 0x4

    return p1

    :cond_17
    const-wide/32 p3, 0x200000

    .line 1572
    invoke-direct {p0, p1, p2, p3, p4}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa4_5(JJ)I

    move-result p1

    return p1

    :catch_1f
    return p4
.end method

.method private jjMoveStringLiteralDfa3_9(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x3

    if-nez v0, :cond_9

    return v1

    .line 254
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x4

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x2000000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x19

    .line 262
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa4_0(JJ)I
    .registers 15

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_13

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    .line 717
    invoke-direct/range {v4 .. v9}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    move-object v0, v4

    return p1

    :cond_13
    move-object v0, p0

    const/4 p1, 0x4

    .line 718
    :try_start_15
    iget-object p2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_e4

    const/16 v1, 0x3d

    if-eq p2, v1, :cond_dd

    const/16 v1, 0x5b

    if-eq p2, v1, :cond_ba

    const/16 v1, 0x61

    if-eq p2, v1, :cond_b0

    const/16 v1, 0x65

    const/16 v4, 0x11

    if-eq p2, v1, :cond_91

    const/16 v1, 0x69

    if-eq p2, v1, :cond_87

    const/16 v1, 0x72

    if-eq p2, v1, :cond_7d

    const/16 v1, 0x74

    if-eq p2, v1, :cond_73

    const/16 v1, 0x6b

    if-eq p2, v1, :cond_64

    const/16 v1, 0x6c

    if-eq p2, v1, :cond_45

    goto/16 :goto_d5

    :cond_45
    const-wide v5, 0x20000000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_56

    const/16 p2, 0x29

    .line 749
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_56
    const-wide/high16 v5, 0x2000000000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_d5

    const/16 p2, 0x31

    .line 751
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_64
    const-wide/32 v5, 0x40000000

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_d5

    const/16 p2, 0x1e

    .line 745
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_73
    const-wide p1, 0x2000000000L

    .line 756
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result p1

    return p1

    :cond_7d
    const-wide p1, 0x200000000000L

    .line 754
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result p1

    return p1

    :cond_87
    const-wide p1, 0x200000000L

    .line 742
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result p1

    return p1

    :cond_91
    const-wide v5, 0x800000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_a2

    const/16 p2, 0x23

    .line 737
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_a2
    const-wide/high16 v5, 0x4000000000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_d5

    const/16 p2, 0x32

    .line 739
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_b0
    const-wide p1, 0x400000000000L

    .line 734
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result p1

    return p1

    :cond_ba
    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_c7

    const/4 p2, 0x7

    .line 729
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_c7
    const-wide/16 v4, 0x4000

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_d5

    const/16 p2, 0xe

    .line 731
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_d5
    :goto_d5
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    .line 760
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_dd
    const-wide/16 p1, 0x300

    .line 726
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result p1

    return p1

    :catch_e4
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    .line 720
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa4_10(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x4

    if-nez v0, :cond_9

    return v1

    .line 195
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x5

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x4000000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x1a

    .line 203
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa4_5(JJ)I
    .registers 11

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    const/4 v1, 0x4

    if-nez v0, :cond_9

    return v1

    .line 1581
    :cond_9
    :try_start_9
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_27

    const/16 v2, 0x5d

    const/4 v3, 0x5

    if-eq v0, v2, :cond_17

    return v3

    :cond_17
    const-wide/32 v4, 0x200000

    and-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-eqz p1, :cond_26

    const/16 p1, 0x15

    .line 1589
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_26
    return v3

    :catch_27
    return v1
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .registers 15

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_13

    const/4 v5, 0x3

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    .line 765
    invoke-direct/range {v4 .. v9}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    move-object v0, v4

    return p1

    :cond_13
    move-object v0, p0

    const/4 p1, 0x5

    .line 766
    :try_start_15
    iget-object p2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_92

    const/16 v1, 0x3d

    if-eq p2, v1, :cond_8b

    const/16 v1, 0x5b

    if-eq p2, v1, :cond_75

    const/16 v1, 0x66

    const/16 v4, 0x11

    if-eq p2, v1, :cond_64

    const/16 v1, 0x69

    if-eq p2, v1, :cond_5a

    const/16 v1, 0x6e

    if-eq p2, v1, :cond_49

    const/16 v1, 0x74

    if-eq p2, v1, :cond_38

    goto :goto_83

    :cond_38
    const-wide v5, 0x400000000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_83

    const/16 p2, 0x2e

    .line 791
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_49
    const-wide v5, 0x200000000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_83

    const/16 p2, 0x2d

    .line 787
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_5a
    const-wide p1, 0x2000000000L

    .line 784
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result p1

    return p1

    :cond_64
    const-wide v5, 0x200000000L

    and-long/2addr v5, v2

    cmp-long p2, v5, p3

    if-eqz p2, :cond_83

    const/16 p2, 0x21

    .line 781
    invoke-direct {p0, p1, p2, v4}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_75
    const-wide/16 v4, 0x100

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_83

    const/16 p2, 0x8

    .line 777
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_83
    :goto_83
    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    .line 796
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :cond_8b
    const-wide/16 p1, 0x200

    .line 774
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result p1

    return p1

    :catch_92
    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    .line 768
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .registers 15

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_13

    const/4 v5, 0x4

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    .line 801
    invoke-direct/range {v4 .. v9}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    move-object v0, v4

    return p1

    :cond_13
    move-object v0, p0

    const/4 p1, 0x6

    .line 802
    :try_start_15
    iget-object p2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_46

    const/16 v1, 0x5b

    if-eq p2, v1, :cond_30

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_26

    goto :goto_3e

    :cond_26
    const-wide p1, 0x2000000000L

    .line 814
    invoke-direct {p0, v2, v3, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result p1

    return p1

    :cond_30
    const-wide/16 v4, 0x200

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_3e

    const/16 p2, 0x9

    .line 811
    invoke-direct {p0, p1, p2}, Lvm2/parser/LuaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_3e
    :goto_3e
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    .line 818
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_46
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 804
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .registers 15

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_13

    const/4 v5, 0x5

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    .line 823
    invoke-direct/range {v4 .. v9}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    move-object v0, v4

    return p1

    :cond_13
    move-object v0, p0

    const/4 p1, 0x7

    .line 824
    :try_start_15
    iget-object p2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_3d

    const/16 v1, 0x6e

    if-eq p2, v1, :cond_22

    goto :goto_35

    :cond_22
    const-wide v4, 0x2000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_35

    const/16 p2, 0x25

    const/16 p3, 0x11

    .line 833
    invoke-direct {p0, p1, p2, p3}, Lvm2/parser/LuaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result p1

    return p1

    :cond_35
    :goto_35
    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    .line 838
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStartNfa_0(IJJ)I

    move-result p1

    return p1

    :catch_3d
    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 826
    invoke-direct/range {v0 .. v5}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    return p1
.end method

.method private jjStartNfaWithStates_0(III)I
    .registers 4

    .line 842
    iput p2, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 843
    iput p1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 844
    :try_start_4
    iget-object p2, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p2}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 p1, p1, 0x1

    .line 846
    invoke-direct {p0, p3, p1}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_13
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJJ)I
    .registers 6

    .line 442
    invoke-direct/range {p0 .. p5}, Lvm2/parser/LuaParserTokenManager;->jjStopStringLiteralDfa_0(IJJ)I

    move-result p2

    move p3, p1

    move-object p1, p0

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p2, p3}, Lvm2/parser/LuaParserTokenManager;->jjMoveNfa_0(II)I

    move-result p2

    return p2
.end method

.method private jjStopAtPos(II)I
    .registers 3

    .line 14
    iput p2, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 15
    iput p1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_0(IJJ)I
    .registers 19

    const-wide/32 v0, 0x103c0

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-wide v5, 0x2000000000L

    const/4 v7, 0x3

    const/16 v8, 0x33

    const/4 v9, -0x1

    const/16 v10, 0x11

    const-wide/16 v11, 0x0

    packed-switch p1, :pswitch_data_134

    return v9

    :pswitch_17
    and-long v0, p2, v5

    cmp-long p1, v0, v11

    if-eqz p1, :cond_22

    .line 431
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 432
    iput v4, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    return v10

    :cond_22
    return v9

    :pswitch_23
    const-wide/16 v0, 0x200

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    return p1

    :cond_2c
    const-wide v0, 0x600200000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_37

    return v10

    :cond_37
    and-long v0, p2, v5

    cmp-long p1, v0, v11

    if-eqz p1, :cond_42

    .line 423
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 424
    iput v3, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    return v10

    :cond_42
    return v9

    :pswitch_43
    const-wide v0, 0x602200000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_52

    .line 407
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 408
    iput v2, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    return v10

    :cond_52
    const-wide/16 v0, 0x300

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_5a

    return v7

    :cond_5a
    const-wide v0, 0x6020840000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_65

    return v10

    :cond_65
    return v9

    :pswitch_66
    const-wide/16 v0, 0x380

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_6e

    return v2

    :cond_6e
    const-wide v0, 0x6622840000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_81

    .line 392
    iget p1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-eq p1, v7, :cond_80

    .line 394
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 395
    iput v7, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_80
    return v10

    :cond_81
    const-wide v0, 0x1804300000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_8c

    return v10

    :cond_8c
    const-wide/16 v0, 0x4000

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_96

    const/16 p1, 0x9

    return p1

    :cond_96
    return v9

    :pswitch_97
    const-wide v0, 0x7e26b40000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_a7

    .line 376
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 p1, 0x2

    .line 377
    iput p1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    return v10

    :cond_a7
    const-wide/16 v0, 0x6000

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_b1

    const/16 p1, 0xc

    return p1

    :cond_b1
    const-wide/16 v0, 0x3c0

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_b9

    return v3

    :cond_b9
    const-wide v0, 0xc1420000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_c4

    return v10

    :cond_c4
    return v9

    :pswitch_c5
    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_cb

    return v4

    :cond_cb
    const-wide/16 v0, 0x7000

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_d5

    const/16 p1, 0xd

    return p1

    :cond_d5
    const-wide v0, 0x118080000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_e0

    return v10

    :cond_e0
    const-wide v0, 0x7ee7f60000000L

    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-eqz p1, :cond_f4

    .line 365
    iget p1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f3

    .line 367
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 368
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    :cond_f3
    return v10

    :cond_f4
    return v9

    :pswitch_f5
    const-wide/16 v2, 0x7800

    and-long/2addr v2, p2

    cmp-long p1, v2, v11

    if-nez p1, :cond_130

    const-wide/16 v2, 0x2000

    and-long v2, p4, v2

    cmp-long p1, v2, v11

    if-eqz p1, :cond_105

    goto :goto_130

    :cond_105
    const-wide/32 v2, 0x1008200

    and-long v2, p4, v2

    cmp-long p1, v2, v11

    if-eqz p1, :cond_111

    const/16 p1, 0x1f

    return p1

    :cond_111
    const-wide v2, 0x7ffffe0000000L

    and-long/2addr v2, p2

    cmp-long p1, v2, v11

    if-eqz p1, :cond_11e

    .line 350
    iput v8, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    return v10

    :cond_11e
    and-long/2addr v0, p2

    cmp-long p1, v0, v11

    if-nez p1, :cond_12e

    const-wide/32 v0, 0x80000

    and-long v0, p4, v0

    cmp-long p1, v0, v11

    if-eqz p1, :cond_12d

    goto :goto_12e

    :cond_12d
    return v9

    :cond_12e
    :goto_12e
    const/4 p1, 0x7

    return p1

    :cond_130
    :goto_130
    const/16 p1, 0xe

    return p1

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_c5
        :pswitch_97
        :pswitch_66
        :pswitch_43
        :pswitch_23
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public ReInit(Lvm2/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 1789
    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1790
    iget v0, p0, Lvm2/parser/LuaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    .line 1791
    iput-object p1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    .line 1792
    invoke-direct {p0}, Lvm2/parser/LuaParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lvm2/parser/SimpleCharStream;I)V
    .registers 3

    .line 1805
    invoke-virtual {p0, p1}, Lvm2/parser/LuaParserTokenManager;->ReInit(Lvm2/parser/SimpleCharStream;)V

    .line 1806
    invoke-virtual {p0, p2}, Lvm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SkipLexicalActions(Lvm2/parser/Token;)V
    .registers 2

    .line 0
    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/16 v0, 0xc

    if-ge p1, v0, :cond_9

    if-ltz p1, :cond_9

    .line 1815
    iput p1, p0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    return-void

    .line 1813
    :cond_9
    new-instance v0, Lvm2/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lvm2/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getNextToken()Lvm2/parser/Token;
    .registers 23

    move-object/from16 v0, p0

    .line 1864
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 1873
    :catch_8
    :cond_8
    :goto_8
    :try_start_8
    iget-object v6, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v6}, Lvm2/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_214

    .line 1882
    iget-object v6, v0, Lvm2/parser/LuaParserTokenManager;->jjimage:Ljava/lang/StringBuffer;

    iput-object v6, v0, Lvm2/parser/LuaParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 1883
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1884
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjimageLen:I

    .line 1888
    :goto_19
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    const/4 v11, -0x1

    const v12, 0x7fffffff

    const/16 v13, 0x1c

    packed-switch v6, :pswitch_data_21e

    goto/16 :goto_122

    .line 1988
    :pswitch_2a
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1989
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1990
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_11()I

    move-result v5

    .line 1991
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1993
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1979
    :pswitch_3e
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1980
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1981
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_10()I

    move-result v5

    .line 1982
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1984
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1970
    :pswitch_52
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1971
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1972
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_9()I

    move-result v5

    .line 1973
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1975
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1961
    :pswitch_66
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1962
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1963
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_8()I

    move-result v5

    .line 1964
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1966
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1952
    :pswitch_7a
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1953
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1954
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_7()I

    move-result v5

    .line 1955
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1957
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1943
    :pswitch_8e
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1944
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1945
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_6()I

    move-result v5

    .line 1946
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1948
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1934
    :pswitch_a2
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1935
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1936
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_5()I

    move-result v5

    .line 1937
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1939
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_122

    .line 1925
    :pswitch_b6
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1926
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1927
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v5

    .line 1928
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1930
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto :goto_122

    .line 1916
    :pswitch_c9
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1917
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1918
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    .line 1919
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1921
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto :goto_122

    .line 1907
    :pswitch_dc
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1908
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1909
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    .line 1910
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-nez v6, :cond_122

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    if-le v6, v13, :cond_122

    .line 1912
    iput v13, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    goto :goto_122

    :pswitch_ef
    const/16 v5, 0x11

    .line 1901
    iput v5, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1902
    iput v11, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1904
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_122

    .line 1891
    :pswitch_fa
    :try_start_fa
    iget-object v6, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v6, v3}, Lvm2/parser/SimpleCharStream;->backup(I)V

    .line 1892
    :goto_ff
    iget-char v6, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v13, 0x20

    if-gt v6, v13, :cond_11a

    shl-long v13, v9, v6

    const-wide v15, 0x100003600L

    and-long/2addr v13, v15

    cmp-long v6, v13, v7

    if-eqz v6, :cond_11a

    .line 1893
    iget-object v6, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v6}, Lvm2/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_119} :catch_8

    goto :goto_ff

    .line 1896
    :cond_11a
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1897
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    .line 1898
    invoke-direct {v0}, Lvm2/parser/LuaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 1997
    :cond_122
    :goto_122
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    const/4 v13, 0x1

    if-eq v6, v12, :cond_1b3

    .line 1999
    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v14, v6, 0x1

    if-ge v14, v5, :cond_135

    .line 2000
    iget-object v14, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v13

    invoke-virtual {v14, v6}, Lvm2/parser/SimpleCharStream;->backup(I)V

    .line 2001
    :cond_135
    sget-object v6, Lvm2/parser/LuaParserTokenManager;->jjtoToken:[J

    iget v14, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v15, v14, 0x6

    aget-wide v15, v6, v15

    and-int/lit8 v6, v14, 0x3f

    shl-long v17, v9, v6

    and-long v15, v15, v17

    cmp-long v6, v15, v7

    if-eqz v6, :cond_158

    .line 2003
    invoke-virtual {v0}, Lvm2/parser/LuaParserTokenManager;->jjFillToken()Lvm2/parser/Token;

    move-result-object v1

    .line 2004
    iput-object v4, v1, Lvm2/parser/Token;->specialToken:Lvm2/parser/Token;

    .line 2005
    sget-object v2, Lvm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v11, :cond_157

    .line 2006
    iput v2, v0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    :cond_157
    return-object v1

    .line 2009
    :cond_158
    sget-object v6, Lvm2/parser/LuaParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v15, v14, 0x6

    aget-wide v15, v6, v15

    and-int/lit8 v6, v14, 0x3f

    shl-long v17, v9, v6

    and-long v15, v15, v17

    cmp-long v6, v15, v7

    if-eqz v6, :cond_195

    .line 2011
    sget-object v6, Lvm2/parser/LuaParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v12, v14, 0x6

    aget-wide v12, v6, v12

    and-int/lit8 v6, v14, 0x3f

    shl-long/2addr v9, v6

    and-long/2addr v9, v12

    cmp-long v6, v9, v7

    if-eqz v6, :cond_186

    .line 2013
    invoke-virtual {v0}, Lvm2/parser/LuaParserTokenManager;->jjFillToken()Lvm2/parser/Token;

    move-result-object v6

    if-nez v4, :cond_17d

    goto :goto_181

    .line 2018
    :cond_17d
    iput-object v4, v6, Lvm2/parser/Token;->specialToken:Lvm2/parser/Token;

    .line 2019
    iput-object v6, v4, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    .line 2021
    :goto_181
    invoke-virtual {v0, v6}, Lvm2/parser/LuaParserTokenManager;->SkipLexicalActions(Lvm2/parser/Token;)V

    move-object v4, v6

    goto :goto_189

    .line 2024
    :cond_186
    invoke-virtual {v0, v2}, Lvm2/parser/LuaParserTokenManager;->SkipLexicalActions(Lvm2/parser/Token;)V

    .line 2025
    :goto_189
    sget-object v6, Lvm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget v6, v6, v7

    if-eq v6, v11, :cond_8

    .line 2026
    iput v6, v0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    goto/16 :goto_8

    .line 2029
    :cond_195
    iget v5, v0, Lvm2/parser/LuaParserTokenManager;->jjimageLen:I

    iget v6, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    add-int/2addr v6, v13

    add-int/2addr v5, v6

    iput v5, v0, Lvm2/parser/LuaParserTokenManager;->jjimageLen:I

    .line 2030
    sget-object v5, Lvm2/parser/LuaParserTokenManager;->jjnewLexState:[I

    aget v5, v5, v14

    if-eq v5, v11, :cond_1a5

    .line 2031
    iput v5, v0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    .line 2033
    :cond_1a5
    iput v12, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 2035
    :try_start_1a7
    iget-object v5, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v5}, Lvm2/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1af} :catch_1b2

    move v5, v3

    goto/16 :goto_19

    :catch_1b2
    move v5, v3

    .line 2040
    :cond_1b3
    iget-object v4, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v4}, Lvm2/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 2041
    iget-object v6, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v6}, Lvm2/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 2044
    :try_start_1bf
    iget-object v7, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v7}, Lvm2/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v7, v13}, Lvm2/parser/SimpleCharStream;->backup(I)V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c9} :catch_1cf

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v6

    goto :goto_1ef

    :catch_1cf
    if-gt v5, v13, :cond_1d3

    move-object v2, v1

    goto :goto_1d9

    .line 2047
    :cond_1d3
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lvm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 2048
    :goto_1d9
    iget-char v7, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1ec

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1e4

    goto :goto_1ec

    :cond_1e4
    add-int/lit8 v3, v6, 0x1

    :goto_1e6
    move/from16 v18, v3

    move/from16 v17, v4

    move v15, v13

    goto :goto_1ef

    :cond_1ec
    :goto_1ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e6

    :goto_1ef
    if-nez v15, :cond_202

    .line 2056
    iget-object v2, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2, v13}, Lvm2/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v13, :cond_1f9

    goto :goto_1ff

    .line 2057
    :cond_1f9
    iget-object v1, v0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_1ff
    move-object/from16 v19, v1

    goto :goto_204

    :cond_202
    move-object/from16 v19, v2

    .line 2059
    :goto_204
    new-instance v14, Lvm2/parser/TokenMgrError;

    iget v1, v0, Lvm2/parser/LuaParserTokenManager;->curLexState:I

    iget-char v2, v0, Lvm2/parser/LuaParserTokenManager;->curChar:C

    const/16 v21, 0x0

    move/from16 v16, v1

    move/from16 v20, v2

    invoke-direct/range {v14 .. v21}, Lvm2/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v14

    .line 1877
    :catch_214
    iput v3, v0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    .line 1878
    invoke-virtual {v0}, Lvm2/parser/LuaParserTokenManager;->jjFillToken()Lvm2/parser/Token;

    move-result-object v1

    .line 1879
    iput-object v4, v1, Lvm2/parser/Token;->specialToken:Lvm2/parser/Token;

    return-object v1

    nop

    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_ef
        :pswitch_dc
        :pswitch_c9
        :pswitch_b6
        :pswitch_a2
        :pswitch_8e
        :pswitch_7a
        :pswitch_66
        :pswitch_52
        :pswitch_3e
        :pswitch_2a
    .end packed-switch
.end method

.method public jjFillToken()Lvm2/parser/Token;
    .registers 7

    .line 1826
    iget v0, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedPos:I

    if-gez v0, :cond_1e

    .line 1828
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_b

    .line 1829
    const-string v0, ""

    goto :goto_f

    .line 1831
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1832
    :goto_f
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 1833
    iget-object v2, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lvm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    move v3, v1

    move v4, v2

    goto :goto_44

    .line 1837
    :cond_1e
    sget-object v0, Lvm2/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2c

    .line 1838
    iget-object v0, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .line 1839
    :cond_2c
    iget-object v1, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v1}, Lvm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 1840
    iget-object v2, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lvm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    .line 1841
    iget-object v3, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v3}, Lvm2/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 1842
    iget-object v4, p0, Lvm2/parser/LuaParserTokenManager;->input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v4}, Lvm2/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 1844
    :goto_44
    iget v5, p0, Lvm2/parser/LuaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lvm2/parser/Token;->newToken(ILjava/lang/String;)Lvm2/parser/Token;

    move-result-object v0

    .line 1846
    iput v1, v0, Lvm2/parser/Token;->beginLine:I

    .line 1847
    iput v3, v0, Lvm2/parser/Token;->endLine:I

    .line 1848
    iput v2, v0, Lvm2/parser/Token;->beginColumn:I

    .line 1849
    iput v4, v0, Lvm2/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lvm2/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
