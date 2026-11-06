###### Class vm2.compiler.LexState (vm2.compiler.LexState)
.class public Lvm2/compiler/LexState;
.super Lvm2/compiler/Constants;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/compiler/LexState$Token;,
        Lvm2/compiler/LexState$Dyndata;,
        Lvm2/compiler/LexState$SemInfo;,
        Lvm2/compiler/LexState$expdesc;,
        Lvm2/compiler/LexState$Vardesc;,
        Lvm2/compiler/LexState$Labeldesc;,
        Lvm2/compiler/LexState$ConsControl;,
        Lvm2/compiler/LexState$Priority;,
        Lvm2/compiler/LexState$LHS_assign;
    }
.end annotation


# static fields
.field private static final EOZ:I = -0x1

.field static final FIRST_RESERVED:I = 0x101

.field private static final LUAI_MAXCCALLS:I = 0xc8

.field private static final LUA_COMPAT_LSTR:I = 0x1

.field private static final LUA_COMPAT_VARARG:Z = true

.field private static final MAX_INT:I = 0x7ffffffd

.field static final NO_JUMP:I = -0x1

.field static final NUM_RESERVED:I = 0x16

.field static final OPR_ADD:I = 0x0

.field static final OPR_AND:I = 0xd

.field static final OPR_CONCAT:I = 0x6

.field static final OPR_DIV:I = 0x3

.field static final OPR_EQ:I = 0x8

.field static final OPR_GE:I = 0xc

.field static final OPR_GT:I = 0xb

.field static final OPR_LE:I = 0xa

.field static final OPR_LEN:I = 0x2

.field static final OPR_LT:I = 0x9

.field static final OPR_MINUS:I = 0x0

.field static final OPR_MOD:I = 0x4

.field static final OPR_MUL:I = 0x2

.field static final OPR_NE:I = 0x7

.field static final OPR_NOBINOPR:I = 0xf

.field static final OPR_NOT:I = 0x1

.field static final OPR_NOUNOPR:I = 0x3

.field static final OPR_OR:I = 0xe

.field static final OPR_POW:I = 0x5

.field static final OPR_SUB:I = 0x1

.field static final RESERVED:Ljava/util/Hashtable;

.field protected static final RESERVED_LOCAL_VAR_FOR_CONTROL:Ljava/lang/String; = "(for control)"

.field protected static final RESERVED_LOCAL_VAR_FOR_GENERATOR:Ljava/lang/String; = "(for generator)"

.field protected static final RESERVED_LOCAL_VAR_FOR_INDEX:Ljava/lang/String; = "(for index)"

.field protected static final RESERVED_LOCAL_VAR_FOR_LIMIT:Ljava/lang/String; = "(for limit)"

.field protected static final RESERVED_LOCAL_VAR_FOR_STATE:Ljava/lang/String; = "(for state)"

.field protected static final RESERVED_LOCAL_VAR_FOR_STEP:Ljava/lang/String; = "(for step)"

.field protected static final RESERVED_LOCAL_VAR_KEYWORDS:[Ljava/lang/String;

.field private static final RESERVED_LOCAL_VAR_KEYWORDS_TABLE:Ljava/util/Hashtable;

.field static final TK_AND:I = 0x101

.field static final TK_BREAK:I = 0x102

.field static final TK_CONCAT:I = 0x117

.field static final TK_DBCOLON:I = 0x11d

.field static final TK_DO:I = 0x103

.field static final TK_DOTS:I = 0x118

.field static final TK_ELSE:I = 0x104

.field static final TK_ELSEIF:I = 0x105

.field static final TK_END:I = 0x106

.field static final TK_EOS:I = 0x11e

.field static final TK_EQ:I = 0x119

.field static final TK_FALSE:I = 0x107

.field static final TK_FOR:I = 0x108

.field static final TK_FUNCTION:I = 0x109

.field static final TK_GE:I = 0x11a

.field static final TK_GOTO:I = 0x10a

.field static final TK_IF:I = 0x10b

.field static final TK_IN:I = 0x10c

.field static final TK_LE:I = 0x11b

.field static final TK_LOCAL:I = 0x10d

.field static final TK_NAME:I = 0x120

.field static final TK_NE:I = 0x11c

.field static final TK_NIL:I = 0x10e

.field static final TK_NOT:I = 0x10f

.field static final TK_NUMBER:I = 0x11f

.field static final TK_OR:I = 0x110

.field static final TK_REPEAT:I = 0x111

.field static final TK_RETURN:I = 0x112

.field static final TK_STRING:I = 0x121

.field static final TK_THEN:I = 0x113

.field static final TK_TRUE:I = 0x114

.field static final TK_UNTIL:I = 0x115

.field static final TK_WHILE:I = 0x116

.field private static final UCHAR_MAX:I = 0xff

.field static final UNARY_PRIORITY:I = 0x8

.field static final VCALL:I = 0xc

.field static final VFALSE:I = 0x3

.field static final VINDEXED:I = 0x9

.field static final VJMP:I = 0xa

.field static final VK:I = 0x4

.field static final VKNUM:I = 0x5

.field static final VLOCAL:I = 0x7

.field static final VNIL:I = 0x1

.field static final VNONRELOC:I = 0x6

.field static final VRELOCABLE:I = 0xb

.field static final VTRUE:I = 0x2

.field static final VUPVAL:I = 0x8

.field static final VVARARG:I = 0xd

.field static final VVOID:I

.field static final luaX_tokens:[Ljava/lang/String;

.field static priority:[Lvm2/compiler/LexState$Priority;


# instance fields
.field L:Lvm2/compiler/LuaC$CompileState;

.field buff:[C

.field current:I

.field decpoint:B

.field dyd:Lvm2/compiler/LexState$Dyndata;

.field envn:Lvm2/LuaString;

.field fs:Lvm2/compiler/FuncState;

.field lastline:I

.field linenumber:I

.field final lookahead:Lvm2/compiler/LexState$Token;

.field nbuff:I

.field source:Lvm2/LuaString;

.field final t:Lvm2/compiler/LexState$Token;

.field z:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 36

    .line 49
    const-string v4, "(for state)"

    const-string v5, "(for step)"

    const-string v0, "(for control)"

    const-string v1, "(for generator)"

    const-string v2, "(for index)"

    const-string v3, "(for limit)"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/compiler/LexState;->RESERVED_LOCAL_VAR_KEYWORDS:[Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lvm2/compiler/LexState;->RESERVED_LOCAL_VAR_KEYWORDS_TABLE:Ljava/util/Hashtable;

    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_1b
    sget-object v2, Lvm2/compiler/LexState;->RESERVED_LOCAL_VAR_KEYWORDS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2c

    .line 60
    sget-object v3, Lvm2/compiler/LexState;->RESERVED_LOCAL_VAR_KEYWORDS_TABLE:Ljava/util/Hashtable;

    aget-object v2, v2, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 147
    :cond_2c
    const-string v34, "<string>"

    const-string v35, "<eof>"

    const-string v2, "and"

    const-string v3, "break"

    const-string v4, "do"

    const-string v5, "else"

    const-string v6, "elseif"

    const-string v7, "end"

    const-string v8, "false"

    const-string v9, "for"

    const-string v10, "function"

    const-string v11, "goto"

    const-string v12, "if"

    const-string v13, "in"

    const-string v14, "local"

    const-string v15, "nil"

    const-string v16, "not"

    const-string v17, "or"

    const-string v18, "repeat"

    const-string v19, "return"

    const-string v20, "then"

    const-string v21, "true"

    const-string v22, "until"

    const-string v23, "while"

    const-string v24, ".."

    const-string v25, "..."

    const-string v26, "=="

    const-string v27, ">="

    const-string v28, "<="

    const-string v29, "~="

    const-string v30, "::"

    const-string v31, "<eos>"

    const-string v32, "<number>"

    const-string v33, "<name>"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvm2/compiler/LexState;->luaX_tokens:[Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lvm2/compiler/LexState;->RESERVED:Ljava/util/Hashtable;

    :goto_7d
    const/16 v1, 0x16

    if-ge v0, v1, :cond_97

    .line 172
    sget-object v1, Lvm2/compiler/LexState;->luaX_tokens:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    .line 173
    sget-object v2, Lvm2/compiler/LexState;->RESERVED:Ljava/util/Hashtable;

    add-int/lit16 v3, v0, 0x101

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 1555
    :cond_97
    new-instance v1, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x6

    invoke-direct {v1, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v2, Lvm2/compiler/LexState$Priority;

    invoke-direct {v2, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v3, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x7

    invoke-direct {v3, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v4, Lvm2/compiler/LexState$Priority;

    invoke-direct {v4, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v5, Lvm2/compiler/LexState$Priority;

    invoke-direct {v5, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v6, Lvm2/compiler/LexState$Priority;

    const/16 v0, 0xa

    const/16 v7, 0x9

    invoke-direct {v6, v0, v7}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v7, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x5

    const/4 v8, 0x4

    invoke-direct {v7, v0, v8}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v8, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x3

    invoke-direct {v8, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v9, Lvm2/compiler/LexState$Priority;

    invoke-direct {v9, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v10, Lvm2/compiler/LexState$Priority;

    invoke-direct {v10, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v11, Lvm2/compiler/LexState$Priority;

    invoke-direct {v11, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v12, Lvm2/compiler/LexState$Priority;

    invoke-direct {v12, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v13, Lvm2/compiler/LexState$Priority;

    invoke-direct {v13, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v14, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x2

    invoke-direct {v14, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    new-instance v15, Lvm2/compiler/LexState$Priority;

    const/4 v0, 0x1

    invoke-direct {v15, v0, v0}, Lvm2/compiler/LexState$Priority;-><init>(II)V

    filled-new-array/range {v1 .. v15}, [Lvm2/compiler/LexState$Priority;

    move-result-object v0

    sput-object v0, Lvm2/compiler/LexState;->priority:[Lvm2/compiler/LexState$Priority;

    return-void
.end method

.method public constructor <init>(Lvm2/compiler/LuaC$CompileState;Ljava/io/InputStream;)V
    .registers 5

    .line 205
    invoke-direct {p0}, Lvm2/compiler/Constants;-><init>()V

    .line 134
    new-instance v0, Lvm2/compiler/LexState$Token;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvm2/compiler/LexState$Token;-><init>(Lvm2/compiler/LexState$1;)V

    iput-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    .line 135
    new-instance v0, Lvm2/compiler/LexState$Token;

    invoke-direct {v0, v1}, Lvm2/compiler/LexState$Token;-><init>(Lvm2/compiler/LexState$1;)V

    iput-object v0, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    .line 141
    new-instance v0, Lvm2/compiler/LexState$Dyndata;

    invoke-direct {v0}, Lvm2/compiler/LexState$Dyndata;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    .line 206
    iput-object p2, p0, Lvm2/compiler/LexState;->z:Ljava/io/InputStream;

    const/16 p2, 0x20

    .line 207
    new-array p2, p2, [C

    iput-object p2, p0, Lvm2/compiler/LexState;->buff:[C

    .line 208
    iput-object p1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    return-void
.end method

.method private static final LUA_QL(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/compiler/LexState;->LUA_QS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final LUA_QS(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isReservedKeyword(Ljava/lang/String;)Z
    .registers 2

    .line 75
    sget-object v0, Lvm2/compiler/LexState;->RESERVED_LOCAL_VAR_KEYWORDS_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isalnum(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_1c

    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_10

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1c

    :cond_10
    const/16 v0, 0x41

    if-lt p1, v0, :cond_18

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1c

    :cond_18
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private isalpha(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private static iscntrl(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private isdigit(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private isspace(I)Z
    .registers 3

    .line 0
    if-ltz p1, :cond_8

    const/16 v0, 0x20

    if-gt p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method private isxdigit(I)Z
    .registers 3

    .line 0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_18

    :cond_8
    const/16 v0, 0x61

    if-lt p1, v0, :cond_10

    const/16 v0, 0x66

    if-le p1, v0, :cond_18

    :cond_10
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public static luaO_int2fb(I)I
    .registers 3

    .line 0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-lt p0, v1, :cond_c

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/16 v1, 0x8

    if-ge p0, v1, :cond_11

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private skipShebang()V
    .registers 3

    .line 308
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_15

    .line 309
    :goto_6
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lvm2/compiler/LexState;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 310
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto :goto_6

    :cond_15
    return-void
.end method

.method public static final vkisinreg(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x6

    if-eq p0, v0, :cond_9

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public static final vkisvar(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x7

    if-gt v0, p0, :cond_9

    const/16 v0, 0x9

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addprototype()Lvm2/Prototype;
    .registers 6

    .line 1083
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 1084
    iget-object v2, v1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    if-eqz v2, :cond_d

    iget v3, v0, Lvm2/compiler/FuncState;->np:I

    array-length v4, v2

    if-lt v3, v4, :cond_1c

    .line 1085
    :cond_d
    iget v0, v0, Lvm2/compiler/FuncState;->np:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Lvm2/compiler/Constants;->realloc([Lvm2/Prototype;I)[Lvm2/Prototype;

    move-result-object v0

    iput-object v0, v1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    .line 1087
    :cond_1c
    iget-object v0, v1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget v2, v1, Lvm2/compiler/FuncState;->np:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lvm2/compiler/FuncState;->np:I

    new-instance v1, Lvm2/Prototype;

    invoke-direct {v1}, Lvm2/Prototype;-><init>()V

    aput-object v1, v0, v2

    return-object v1
.end method

.method public adjust_assign(IILvm2/compiler/LexState$expdesc;)V
    .registers 5

    .line 967
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    sub-int/2addr p1, p2

    .line 969
    iget p2, p3, Lvm2/compiler/LexState$expdesc;->k:I

    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->hasmultret(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x1

    add-int/2addr p1, p2

    if-gez p1, :cond_10

    const/4 p1, 0x0

    .line 975
    :cond_10
    invoke-virtual {v0, p3, p1}, Lvm2/compiler/FuncState;->setreturns(Lvm2/compiler/LexState$expdesc;I)V

    if-le p1, p2, :cond_2b

    sub-int/2addr p1, p2

    .line 977
    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->reserveregs(I)V

    return-void

    .line 980
    :cond_1a
    iget p2, p3, Lvm2/compiler/LexState$expdesc;->k:I

    if-eqz p2, :cond_21

    .line 981
    invoke-virtual {v0, p3}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    :cond_21
    if-lez p1, :cond_2b

    .line 983
    iget-short p2, v0, Lvm2/compiler/FuncState;->freereg:S

    .line 984
    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 985
    invoke-virtual {v0, p2, p1}, Lvm2/compiler/FuncState;->nil(II)V

    :cond_2b
    return-void
.end method

.method public adjustlocalvars(I)V
    .registers 5

    .line 941
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 942
    iget-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    :goto_8
    if-lez p1, :cond_18

    .line 944
    iget-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v1

    iget v2, v0, Lvm2/compiler/FuncState;->pc:I

    iput v2, v1, Lvm2/LocVars;->startpc:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public anchor_token()V
    .registers 4

    .line 847
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    if-nez v0, :cond_f

    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x11e

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 848
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x120

    if-eq v1, v2, :cond_21

    const/16 v2, 0x121

    if-ne v1, v2, :cond_20

    goto :goto_21

    :cond_20
    return-void

    .line 849
    :cond_21
    :goto_21
    iget-object v0, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v0, v0, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    .line 851
    iget-object v1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    invoke-virtual {v1, v0}, Lvm2/compiler/LuaC$CompileState;->cachedLuaString(Lvm2/LuaString;)Lvm2/LuaString;

    return-void
.end method

.method public assignment(Lvm2/compiler/LexState$LHS_assign;I)V
    .registers 9

    .line 1680
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1681
    iget-object v1, p1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    iget v1, v1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-gt v4, v1, :cond_13

    if-gt v1, v2, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v4, "syntax error"

    invoke-virtual {p0, v1, v4}, Lvm2/compiler/LexState;->check_condition(ZLjava/lang/String;)V

    const/16 v1, 0x2c

    .line 1683
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1684
    new-instance v1, Lvm2/compiler/LexState$LHS_assign;

    invoke-direct {v1}, Lvm2/compiler/LexState$LHS_assign;-><init>()V

    .line 1685
    iput-object p1, v1, Lvm2/compiler/LexState$LHS_assign;->prev:Lvm2/compiler/LexState$LHS_assign;

    .line 1686
    iget-object v4, v1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p0, v4}, Lvm2/compiler/LexState;->suffixedexp(Lvm2/compiler/LexState$expdesc;)V

    .line 1687
    iget-object v4, v1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    iget v5, v4, Lvm2/compiler/LexState$expdesc;->k:I

    if-eq v5, v2, :cond_36

    .line 1688
    invoke-virtual {p0, p1, v4}, Lvm2/compiler/LexState;->check_conflict(Lvm2/compiler/LexState$LHS_assign;Lvm2/compiler/LexState$expdesc;)V

    :cond_36
    add-int/2addr p2, v3

    .line 1689
    invoke-virtual {p0, v1, p2}, Lvm2/compiler/LexState;->assignment(Lvm2/compiler/LexState$LHS_assign;I)V

    goto :goto_54

    :cond_3b
    const/16 v1, 0x3d

    .line 1693
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1694
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->explist(Lvm2/compiler/LexState$expdesc;)I

    move-result v1

    if-eq v1, p2, :cond_65

    .line 1696
    invoke-virtual {p0, p2, v1, v0}, Lvm2/compiler/LexState;->adjust_assign(IILvm2/compiler/LexState$expdesc;)V

    if-le v1, p2, :cond_54

    .line 1698
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-short v4, v2, Lvm2/compiler/FuncState;->freereg:S

    sub-int/2addr v1, p2

    sub-int/2addr v4, v1

    int-to-short p2, v4

    iput-short p2, v2, Lvm2/compiler/FuncState;->freereg:S

    .line 1706
    :cond_54
    :goto_54
    iget-object p2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-short p2, p2, Lvm2/compiler/FuncState;->freereg:S

    sub-int/2addr p2, v3

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1707
    iget-object p2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object p1, p1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p2, p1, v0}, Lvm2/compiler/FuncState;->storevar(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1701
    :cond_65
    iget-object p2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {p2, v0}, Lvm2/compiler/FuncState;->setoneret(Lvm2/compiler/LexState$expdesc;)V

    .line 1702
    iget-object p2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object p1, p1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p2, p1, v0}, Lvm2/compiler/FuncState;->storevar(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public block()V
    .registers 4

    .line 1626
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1627
    new-instance v1, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v2, 0x0

    .line 1628
    invoke-virtual {v0, v1, v2}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1629
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statlist()V

    .line 1630
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    return-void
.end method

.method public block_follow(Z)Z
    .registers 4

    .line 1614
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x115

    if-eq v0, v1, :cond_12

    const/16 p1, 0x11e

    if-eq v0, p1, :cond_11

    packed-switch v0, :pswitch_data_14

    const/4 p1, 0x0

    return p1

    :cond_11
    :pswitch_11
    const/4 p1, 0x1

    :cond_12
    return p1

    nop

    :pswitch_data_14
    .packed-switch 0x104
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public body(Lvm2/compiler/LexState$expdesc;ZI)V
    .registers 7

    .line 1294
    new-instance v0, Lvm2/compiler/FuncState;

    invoke-direct {v0}, Lvm2/compiler/FuncState;-><init>()V

    .line 1295
    new-instance v1, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 1296
    invoke-virtual {p0}, Lvm2/compiler/LexState;->addprototype()Lvm2/Prototype;

    move-result-object v2

    iput-object v2, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 1297
    iput p3, v2, Lvm2/Prototype;->linedefined:I

    .line 1298
    invoke-virtual {p0, v0, v1}, Lvm2/compiler/LexState;->open_func(Lvm2/compiler/FuncState;Lvm2/compiler/FuncState$BlockCnt;)V

    const/16 v1, 0x28

    .line 1299
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->checknext(I)V

    if-eqz p2, :cond_25

    .line 1301
    const-string p2, "self"

    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1302
    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    .line 1304
    :cond_25
    invoke-virtual {p0}, Lvm2/compiler/LexState;->parlist()V

    const/16 p2, 0x29

    .line 1305
    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1306
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statlist()V

    .line 1307
    iget-object p2, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    iput v0, p2, Lvm2/Prototype;->lastlinedefined:I

    const/16 p2, 0x106

    const/16 v0, 0x109

    .line 1308
    invoke-virtual {p0, p2, v0, p3}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1309
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->codeclosure(Lvm2/compiler/LexState$expdesc;)V

    .line 1310
    invoke-virtual {p0}, Lvm2/compiler/LexState;->close_func()V

    return-void
.end method

.method public breaklabel()V
    .registers 8

    .line 1065
    const-string v0, "break"

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    .line 1066
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v0, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    iget v2, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lvm2/compiler/Constants;->grow([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;

    move-result-object v2

    iput-object v2, v0, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v3, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    add-int/lit8 v1, v3, 0x1

    iput v1, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget v6, v0, Lvm2/compiler/FuncState;->pc:I

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lvm2/compiler/LexState;->newlabelentry([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;II)I

    move-result v0

    .line 1067
    iget-object v2, v1, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v2, v2, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->findgotos(Lvm2/compiler/LexState$Labeldesc;)V

    return-void
.end method

.method public buffreplace(CC)V
    .registers 6

    .line 330
    iget v0, p0, Lvm2/compiler/LexState;->nbuff:I

    .line 331
    iget-object v1, p0, Lvm2/compiler/LexState;->buff:[C

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 333
    aget-char v2, v1, v0

    if-ne v2, p1, :cond_4

    .line 334
    aput-char p2, v1, v0

    goto :goto_4

    :cond_f
    return-void
.end method

.method public check(I)V
    .registers 3

    .line 874
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    if-eq v0, p1, :cond_9

    .line 875
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->error_expected(I)V

    :cond_9
    return-void
.end method

.method public check_condition(ZLjava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    .line 885
    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public check_conflict(Lvm2/compiler/LexState$LHS_assign;Lvm2/compiler/LexState$expdesc;)V
    .registers 13

    .line 1652
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1653
    iget-short v1, v0, Lvm2/compiler/FuncState;->freereg:S

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eqz p1, :cond_37

    .line 1656
    iget-object v6, p1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    iget v7, v6, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_34

    .line 1658
    iget-object v6, v6, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v7, v6, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    iget v8, p2, Lvm2/compiler/LexState$expdesc;->k:I

    if-ne v7, v8, :cond_27

    iget-short v7, v6, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    iget-object v9, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v9, v9, Lvm2/compiler/LexState$expdesc$U;->info:I

    if-ne v7, v9, :cond_27

    .line 1660
    iput-short v4, v6, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    .line 1661
    iput-short v1, v6, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    move v3, v5

    :cond_27
    if-ne v8, v4, :cond_34

    .line 1664
    iget-short v4, v6, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    iget-object v7, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v7, v7, Lvm2/compiler/LexState$expdesc$U;->info:I

    if-ne v4, v7, :cond_34

    .line 1666
    iput-short v1, v6, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    move v3, v5

    .line 1655
    :cond_34
    iget-object p1, p1, Lvm2/compiler/LexState$LHS_assign;->prev:Lvm2/compiler/LexState$LHS_assign;

    goto :goto_6

    :cond_37
    if-eqz v3, :cond_4a

    .line 1672
    iget p1, p2, Lvm2/compiler/LexState$expdesc;->k:I

    if-ne p1, v4, :cond_3f

    move p1, v5

    goto :goto_40

    :cond_3f
    const/4 p1, 0x5

    .line 1673
    :goto_40
    iget-object p2, p2, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p2, p2, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 1674
    invoke-virtual {v0, v5}, Lvm2/compiler/FuncState;->reserveregs(I)V

    :cond_4a
    return-void
.end method

.method public check_match(III)V
    .registers 6

    .line 890
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v0

    if-nez v0, :cond_48

    .line 891
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    if-ne p3, v0, :cond_e

    .line 892
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->error_expected(I)V

    return-void

    .line 894
    :cond_e
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->token2str(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/compiler/LexState;->LUA_QS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected (to close "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->token2str(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/compiler/LexState;->LUA_QS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method public check_next(Ljava/lang/String;)Z
    .registers 3

    .line 323
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 325
    :cond_a
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    const/4 p1, 0x1

    return p1
.end method

.method public checkname(Lvm2/compiler/LexState$expdesc;)V
    .registers 3

    .line 914
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->codestring(Lvm2/compiler/LexState$expdesc;Lvm2/LuaString;)V

    return-void
.end method

.method public checknext(I)V
    .registers 2

    .line 879
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->check(I)V

    .line 880
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    return-void
.end method

.method public close_func()V
    .registers 6

    .line 1118
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1119
    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    const/4 v2, 0x0

    .line 1120
    invoke-virtual {v0, v2, v2}, Lvm2/compiler/FuncState;->ret(II)V

    .line 1121
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    .line 1122
    iget-object v3, v1, Lvm2/Prototype;->code:[I

    iget v4, v0, Lvm2/compiler/FuncState;->pc:I

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([II)[I

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->code:[I

    .line 1123
    iget-object v3, v1, Lvm2/Prototype;->lineinfo:[I

    iget v4, v0, Lvm2/compiler/FuncState;->pc:I

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([II)[I

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->lineinfo:[I

    .line 1124
    iget-object v3, v1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    iget v4, v0, Lvm2/compiler/FuncState;->nk:I

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([Lvm2/LuaValue;I)[Lvm2/LuaValue;

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    .line 1125
    iget-object v3, v1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    iget v4, v0, Lvm2/compiler/FuncState;->np:I

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([Lvm2/Prototype;I)[Lvm2/Prototype;

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    .line 1126
    iget-object v3, v1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    iget-short v4, v0, Lvm2/compiler/FuncState;->nlocvars:S

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([Lvm2/LocVars;I)[Lvm2/LocVars;

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    .line 1127
    iget-object v3, v1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    iget-short v4, v0, Lvm2/compiler/FuncState;->nups:S

    invoke-static {v3, v4}, Lvm2/compiler/Constants;->realloc([Lvm2/Upvaldesc;I)[Lvm2/Upvaldesc;

    move-result-object v3

    iput-object v3, v1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    .line 1128
    iget-object v1, v0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    if-nez v1, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1129
    iget-object v0, v0, Lvm2/compiler/FuncState;->prev:Lvm2/compiler/FuncState;

    iput-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    return-void
.end method

.method public closegoto(ILvm2/compiler/LexState$Labeldesc;)V
    .registers 10

    .line 1000
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1001
    iget-object v1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v1, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    .line 1002
    aget-object v2, v1, p1

    .line 1003
    iget-object v3, v2, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    iget-object v4, p2, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v3, v4}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v3

    invoke-static {v3}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1004
    iget-short v3, v2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    iget-short v4, p2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    if-ge v3, v4, :cond_56

    .line 1005
    invoke-virtual {v0, v3}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v3

    iget-object v3, v3, Lvm2/LocVars;->varname:Lvm2/LuaString;

    .line 1006
    iget-object v4, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<goto "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "> at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lvm2/compiler/LexState$Labeldesc;->line:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " jumps into the scope of local \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v3}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-virtual {v4, v3}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1009
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->semerror(Ljava/lang/String;)V

    .line 1011
    :cond_56
    iget v2, v2, Lvm2/compiler/LexState$Labeldesc;->pc:I

    iget p2, p2, Lvm2/compiler/LexState$Labeldesc;->pc:I

    invoke-virtual {v0, v2, p2}, Lvm2/compiler/FuncState;->patchlist(II)V

    add-int/lit8 p2, p1, 0x1

    .line 1013
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v0, v0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    iget-object p1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget p2, p1, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    const/4 p1, 0x0

    aput-object p1, v1, p2

    return-void
.end method

.method public codeclosure(Lvm2/compiler/LexState$expdesc;)V
    .registers 6

    .line 1092
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v0, v0, Lvm2/compiler/FuncState;->prev:Lvm2/compiler/FuncState;

    .line 1093
    iget v1, v0, Lvm2/compiler/FuncState;->np:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lvm2/compiler/FuncState;->codeABx(III)I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1094
    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public codestring(Lvm2/compiler/LexState$expdesc;Lvm2/LuaString;)V
    .registers 4

    .line 910
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0, p2}, Lvm2/compiler/FuncState;->stringK(Lvm2/LuaString;)I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lvm2/compiler/LexState$expdesc;->init(II)V

    return-void
.end method

.method public cond()I
    .registers 4

    .line 1713
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1715
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    .line 1717
    iget v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x3

    .line 1718
    iput v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 1719
    :cond_10
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v1, v0}, Lvm2/compiler/FuncState;->goiftrue(Lvm2/compiler/LexState$expdesc;)V

    .line 1720
    iget-object v0, v0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    return v0
.end method

.method public constructor(Lvm2/compiler/LexState$expdesc;)V
    .registers 10

    .line 1204
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1205
    iget v1, p0, Lvm2/compiler/LexState;->linenumber:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 1206
    invoke-virtual {v0, v2, v3, v3, v3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v4

    .line 1207
    new-instance v5, Lvm2/compiler/LexState$ConsControl;

    invoke-direct {v5}, Lvm2/compiler/LexState$ConsControl;-><init>()V

    .line 1208
    iput v3, v5, Lvm2/compiler/LexState$ConsControl;->tostore:I

    iput v3, v5, Lvm2/compiler/LexState$ConsControl;->nh:I

    iput v3, v5, Lvm2/compiler/LexState$ConsControl;->na:I

    .line 1209
    iput-object p1, v5, Lvm2/compiler/LexState$ConsControl;->t:Lvm2/compiler/LexState$expdesc;

    .line 1210
    invoke-virtual {p1, v2, v4}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1211
    iget-object v2, v5, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {v2, v3, v3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1212
    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    const/16 p1, 0x7b

    .line 1213
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1215
    :cond_28
    iget-object v2, v5, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    iget v2, v2, Lvm2/compiler/LexState$expdesc;->k:I

    if-eqz v2, :cond_35

    iget v2, v5, Lvm2/compiler/LexState$ConsControl;->tostore:I

    if-lez v2, :cond_33

    goto :goto_35

    :cond_33
    move v2, v3

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v2, 0x1

    :goto_36
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1216
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v6, 0x7d

    if-ne v2, v6, :cond_42

    goto :goto_7b

    .line 1218
    :cond_42
    invoke-virtual {v0, v5}, Lvm2/compiler/FuncState;->closelistfield(Lvm2/compiler/LexState$ConsControl;)V

    .line 1219
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v7, 0x5b

    if-eq v2, v7, :cond_68

    const/16 v7, 0x120

    if-eq v2, v7, :cond_55

    .line 1233
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->listfield(Lvm2/compiler/LexState$ConsControl;)V

    goto :goto_6b

    .line 1221
    :cond_55
    invoke-virtual {p0}, Lvm2/compiler/LexState;->lookahead()V

    .line 1222
    iget-object v2, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v7, 0x3d

    if-eq v2, v7, :cond_64

    .line 1223
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->listfield(Lvm2/compiler/LexState$ConsControl;)V

    goto :goto_6b

    .line 1225
    :cond_64
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->recfield(Lvm2/compiler/LexState$ConsControl;)V

    goto :goto_6b

    .line 1229
    :cond_68
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->recfield(Lvm2/compiler/LexState$ConsControl;)V

    :goto_6b
    const/16 v2, 0x2c

    .line 1237
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v2

    if-nez v2, :cond_28

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1238
    :goto_7b
    invoke-virtual {p0, v6, p1, v1}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1239
    invoke-virtual {v0, v5}, Lvm2/compiler/FuncState;->lastlistfield(Lvm2/compiler/LexState$ConsControl;)V

    .line 1240
    new-instance p1, Lvm2/compiler/InstructionPtr;

    iget-object v0, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v0, v0, Lvm2/Prototype;->code:[I

    invoke-direct {p1, v0, v4}, Lvm2/compiler/InstructionPtr;-><init>([II)V

    .line 1241
    iget v0, v5, Lvm2/compiler/LexState$ConsControl;->na:I

    invoke-static {v0}, Lvm2/compiler/LexState;->luaO_int2fb(I)I

    move-result v0

    invoke-static {p1, v0}, Lvm2/compiler/Constants;->SETARG_B(Lvm2/compiler/InstructionPtr;I)V

    .line 1242
    iget v0, v5, Lvm2/compiler/LexState$ConsControl;->nh:I

    invoke-static {v0}, Lvm2/compiler/LexState;->luaO_int2fb(I)I

    move-result v0

    invoke-static {p1, v0}, Lvm2/compiler/Constants;->SETARG_C(Lvm2/compiler/InstructionPtr;I)V

    return-void
.end method

.method public currIsNewline()Z
    .registers 3

    .line 221
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public enterlevel()V
    .registers 3

    .line 991
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    iget v1, v0, Lvm2/compiler/LuaC$CompileState;->nCcalls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lvm2/compiler/LuaC$CompileState;->nCcalls:I

    const/16 v0, 0xc8

    if-le v1, v0, :cond_12

    .line 992
    const-string v0, "chunk has too many syntax levels"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public error_expected(I)V
    .registers 4

    .line 862
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->token2str(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/compiler/LexState;->LUA_QS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    return-void
.end method

.method public exp1()I
    .registers 4

    .line 1802
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1804
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    .line 1805
    iget v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 1806
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v0}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    return v1
.end method

.method public explist(Lvm2/compiler/LexState$expdesc;)I
    .registers 4

    .line 1316
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    const/4 v0, 0x1

    :goto_4
    const/16 v1, 0x2c

    .line 1317
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1318
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v1, p1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 1319
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    return v0
.end method

.method public expr(Lvm2/compiler/LexState$expdesc;)V
    .registers 3

    const/4 v0, 0x0

    .line 1599
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->subexpr(Lvm2/compiler/LexState$expdesc;I)I

    return-void
.end method

.method public exprstat()V
    .registers 6

    .line 2011
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 2012
    new-instance v1, Lvm2/compiler/LexState$LHS_assign;

    invoke-direct {v1}, Lvm2/compiler/LexState$LHS_assign;-><init>()V

    .line 2013
    iget-object v2, v1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->suffixedexp(Lvm2/compiler/LexState$expdesc;)V

    .line 2014
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v3, 0x3d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_34

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1a

    goto :goto_34

    .line 2019
    :cond_1a
    iget-object v2, v1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    iget v2, v2, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_24

    move v2, v4

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    const-string v3, "syntax error"

    invoke-virtual {p0, v2, v3}, Lvm2/compiler/LexState;->check_condition(ZLjava/lang/String;)V

    .line 2020
    iget-object v1, v1, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object v0

    invoke-static {v0, v4}, Lvm2/compiler/Constants;->SETARG_C(Lvm2/compiler/InstructionPtr;I)V

    return-void

    :cond_34
    :goto_34
    const/4 v0, 0x0

    .line 2015
    iput-object v0, v1, Lvm2/compiler/LexState$LHS_assign;->prev:Lvm2/compiler/LexState$LHS_assign;

    .line 2016
    invoke-virtual {p0, v1, v4}, Lvm2/compiler/LexState;->assignment(Lvm2/compiler/LexState$LHS_assign;I)V

    return-void
.end method

.method public fieldsel(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 1140
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1141
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1142
    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->exp2anyregup(Lvm2/compiler/LexState$expdesc;)V

    .line 1143
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1144
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->checkname(Lvm2/compiler/LexState$expdesc;)V

    .line 1145
    invoke-virtual {v0, p1, v1}, Lvm2/compiler/FuncState;->indexed(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public findgotos(Lvm2/compiler/LexState$Labeldesc;)V
    .registers 6

    .line 1050
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v0, v0, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    .line 1051
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, v1, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    iget-short v1, v1, Lvm2/compiler/FuncState$BlockCnt;->firstgoto:S

    .line 1052
    :goto_a
    iget-object v2, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v2, v2, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    if-ge v1, v2, :cond_23

    .line 1053
    aget-object v2, v0, v1

    iget-object v2, v2, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    iget-object v3, p1, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v2, v3}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1054
    invoke-virtual {p0, v1, p1}, Lvm2/compiler/LexState;->closegoto(ILvm2/compiler/LexState$Labeldesc;)V

    goto :goto_a

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return-void
.end method

.method public findlabel(I)Z
    .registers 9

    .line 1022
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v0, v0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 1023
    iget-object v1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    .line 1024
    iget-object v2, v1, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    aget-object v2, v2, p1

    .line 1026
    iget-short v3, v0, Lvm2/compiler/FuncState$BlockCnt;->firstlabel:S

    :goto_c
    iget v4, v1, Lvm2/compiler/LexState$Dyndata;->n_label:I

    if-ge v3, v4, :cond_3d

    .line 1027
    iget-object v4, v1, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    aget-object v4, v4, v3

    .line 1028
    iget-object v5, v4, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    iget-object v6, v2, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v5, v6}, Lvm2/LuaString;->eq_b(Lvm2/LuaValue;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1029
    iget-short v3, v2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    iget-short v5, v4, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    if-le v3, v5, :cond_35

    iget-boolean v3, v0, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    if-nez v3, :cond_2e

    iget v1, v1, Lvm2/compiler/LexState$Dyndata;->n_label:I

    iget-short v0, v0, Lvm2/compiler/FuncState$BlockCnt;->firstlabel:S

    if-le v1, v0, :cond_35

    .line 1031
    :cond_2e
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget v1, v2, Lvm2/compiler/LexState$Labeldesc;->pc:I

    invoke-virtual {v0, v1, v5}, Lvm2/compiler/FuncState;->patchclose(II)V

    .line 1032
    :cond_35
    invoke-virtual {p0, p1, v4}, Lvm2/compiler/LexState;->closegoto(ILvm2/compiler/LexState$Labeldesc;)V

    const/4 p1, 0x1

    return p1

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_3d
    const/4 p1, 0x0

    return p1
.end method

.method public forbody(IIIZ)V
    .registers 10

    .line 1813
    new-instance v0, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v0}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 1814
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    const/4 v2, 0x3

    .line 1816
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    const/16 v2, 0x103

    .line 1817
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->checknext(I)V

    const/4 v2, -0x1

    if-eqz p4, :cond_1a

    const/16 v3, 0x20

    .line 1818
    invoke-virtual {v1, v3, p1, v2}, Lvm2/compiler/FuncState;->codeAsBx(III)I

    move-result v3

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Lvm2/compiler/FuncState;->jump()I

    move-result v3

    :goto_1e
    const/4 v4, 0x0

    .line 1819
    invoke-virtual {v1, v0, v4}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1820
    invoke-virtual {p0, p3}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    .line 1821
    invoke-virtual {v1, p3}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 1822
    invoke-virtual {p0}, Lvm2/compiler/LexState;->block()V

    .line 1823
    invoke-virtual {v1}, Lvm2/compiler/FuncState;->leaveblock()V

    .line 1824
    invoke-virtual {v1, v3}, Lvm2/compiler/FuncState;->patchtohere(I)V

    if-eqz p4, :cond_3a

    const/16 p3, 0x21

    .line 1826
    invoke-virtual {v1, p3, p1, v2}, Lvm2/compiler/FuncState;->codeAsBx(III)I

    move-result p1

    goto :goto_4a

    :cond_3a
    const/16 p4, 0x22

    .line 1828
    invoke-virtual {v1, p4, p1, v4, p3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    .line 1829
    invoke-virtual {v1, p2}, Lvm2/compiler/FuncState;->fixline(I)V

    add-int/lit8 p1, p1, 0x2

    const/16 p3, 0x23

    .line 1830
    invoke-virtual {v1, p3, p1, v2}, Lvm2/compiler/FuncState;->codeAsBx(III)I

    move-result p1

    :goto_4a
    add-int/lit8 v3, v3, 0x1

    .line 1832
    invoke-virtual {v1, p1, v3}, Lvm2/compiler/FuncState;->patchlist(II)V

    .line 1833
    invoke-virtual {v1, p2}, Lvm2/compiler/FuncState;->fixline(I)V

    return-void
.end method

.method public forlist(Lvm2/LuaString;)V
    .registers 8

    .line 1861
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1862
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1865
    iget-short v2, v0, Lvm2/compiler/FuncState;->freereg:S

    .line 1867
    const-string v3, "(for generator)"

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1868
    const-string v3, "(for state)"

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1869
    const-string v3, "(for control)"

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    const/4 p1, 0x4

    :goto_1c
    const/16 v3, 0x2c

    .line 1872
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1873
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    :cond_2e
    const/16 v3, 0x10c

    .line 1876
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1877
    iget v3, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 1878
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->explist(Lvm2/compiler/LexState$expdesc;)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4, v1}, Lvm2/compiler/LexState;->adjust_assign(IILvm2/compiler/LexState$expdesc;)V

    .line 1879
    invoke-virtual {v0, v5}, Lvm2/compiler/FuncState;->checkstack(I)V

    sub-int/2addr p1, v5

    const/4 v0, 0x0

    .line 1880
    invoke-virtual {p0, v2, v3, p1, v0}, Lvm2/compiler/LexState;->forbody(IIIZ)V

    return-void
.end method

.method public fornum(Lvm2/LuaString;I)V
    .registers 7

    .line 1839
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1840
    iget-short v1, v0, Lvm2/compiler/FuncState;->freereg:S

    .line 1841
    const-string v2, "(for index)"

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1842
    const-string v2, "(for limit)"

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1843
    const-string v2, "(for step)"

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->new_localvarliteral(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    const/16 p1, 0x3d

    .line 1845
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1846
    invoke-virtual {p0}, Lvm2/compiler/LexState;->exp1()I

    const/16 p1, 0x2c

    .line 1847
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1848
    invoke-virtual {p0}, Lvm2/compiler/LexState;->exp1()I

    .line 1849
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_31

    .line 1850
    invoke-virtual {p0}, Lvm2/compiler/LexState;->exp1()I

    goto :goto_41

    .line 1852
    :cond_31
    iget-short p1, v0, Lvm2/compiler/FuncState;->freereg:S

    invoke-static {v2}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lvm2/compiler/FuncState;->numberK(Lvm2/LuaValue;)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lvm2/compiler/FuncState;->codeK(II)I

    .line 1853
    invoke-virtual {v0, v2}, Lvm2/compiler/FuncState;->reserveregs(I)V

    .line 1855
    :goto_41
    invoke-virtual {p0, v1, p2, v2, v2}, Lvm2/compiler/LexState;->forbody(IIIZ)V

    return-void
.end method

.method public forstat(I)V
    .registers 6

    .line 1886
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1888
    new-instance v1, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v2, 0x1

    .line 1889
    invoke-virtual {v0, v1, v2}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1890
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1891
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v1

    .line 1892
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x10c

    if-eq v2, v3, :cond_4f

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-static {v2}, Lvm2/compiler/LexState;->LUA_QL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "in"

    invoke-static {v2}, Lvm2/compiler/LexState;->LUA_QL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    goto :goto_52

    .line 1894
    :cond_4b
    invoke-virtual {p0, v1, p1}, Lvm2/compiler/LexState;->fornum(Lvm2/LuaString;I)V

    goto :goto_52

    .line 1898
    :cond_4f
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->forlist(Lvm2/LuaString;)V

    :goto_52
    const/16 v1, 0x106

    const/16 v2, 0x108

    .line 1903
    invoke-virtual {p0, v1, v2, p1}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1904
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    return-void
.end method

.method public funcargs(Lvm2/compiler/LexState$expdesc;I)V
    .registers 9

    .line 1327
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1328
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1330
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v3, v2, Lvm2/compiler/LexState$Token;->token:I

    const/4 v4, 0x0

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2d

    const/16 v5, 0x7b

    if-eq v3, v5, :cond_29

    const/16 v5, 0x121

    if-eq v3, v5, :cond_1e

    .line 1352
    const-string p1, "function arguments expected"

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    return-void

    .line 1347
    :cond_1e
    iget-object v2, v2, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v2, v2, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    invoke-virtual {p0, v1, v2}, Lvm2/compiler/LexState;->codestring(Lvm2/compiler/LexState$expdesc;Lvm2/LuaString;)V

    .line 1348
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    goto :goto_44

    .line 1343
    :cond_29
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->constructor(Lvm2/compiler/LexState$expdesc;)V

    goto :goto_44

    .line 1332
    :cond_2d
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1333
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3b

    .line 1334
    iput v4, v1, Lvm2/compiler/LexState$expdesc;->k:I

    goto :goto_41

    .line 1336
    :cond_3b
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->explist(Lvm2/compiler/LexState$expdesc;)I

    .line 1337
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->setmultret(Lvm2/compiler/LexState$expdesc;)V

    .line 1339
    :goto_41
    invoke-virtual {p0, v3, v5, p2}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1356
    :goto_44
    iget v2, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v3, 0x6

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4b

    move v4, v5

    :cond_4b
    invoke-static {v4}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 1357
    iget-object v2, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget v2, v2, Lvm2/compiler/LexState$expdesc$U;->info:I

    .line 1358
    iget v3, v1, Lvm2/compiler/LexState$expdesc;->k:I

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->hasmultret(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v1, -0x1

    goto :goto_68

    .line 1361
    :cond_5c
    iget v3, v1, Lvm2/compiler/LexState$expdesc;->k:I

    if-eqz v3, :cond_63

    .line 1362
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 1363
    :cond_63
    iget-short v1, v0, Lvm2/compiler/FuncState;->freereg:S

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v3

    :goto_68
    add-int/2addr v1, v5

    const/4 v3, 0x2

    const/16 v4, 0x1e

    .line 1365
    invoke-virtual {v0, v4, v2, v1, v3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v1

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v1}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1366
    invoke-virtual {v0, p2}, Lvm2/compiler/FuncState;->fixline(I)V

    add-int/2addr v2, v5

    int-to-short p1, v2

    .line 1367
    iput-short p1, v0, Lvm2/compiler/FuncState;->freereg:S

    return-void
.end method

.method public funcname(Lvm2/compiler/LexState$expdesc;)Z
    .registers 4

    .line 1985
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->singlevar(Lvm2/compiler/LexState$expdesc;)V

    .line 1986
    :goto_3
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_f

    .line 1987
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->fieldsel(Lvm2/compiler/LexState$expdesc;)V

    goto :goto_3

    :cond_f
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_18

    .line 1990
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->fieldsel(Lvm2/compiler/LexState$expdesc;)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public funcstat(I)V
    .registers 5

    .line 1999
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 2000
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 2001
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2002
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->funcname(Lvm2/compiler/LexState$expdesc;)Z

    move-result v2

    .line 2003
    invoke-virtual {p0, v1, v2, p1}, Lvm2/compiler/LexState;->body(Lvm2/compiler/LexState$expdesc;ZI)V

    .line 2004
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v0, v1}, Lvm2/compiler/FuncState;->storevar(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    .line 2005
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->fixline(I)V

    return-void
.end method

.method public getbinopr(I)I
    .registers 3

    .line 0
    const/16 v0, 0x25

    if-eq p1, v0, :cond_55

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_53

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_51

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_49

    const/16 v0, 0x101

    if-eq p1, v0, :cond_46

    const/16 v0, 0x110

    if-eq p1, v0, :cond_43

    const/16 v0, 0x117

    if-eq p1, v0, :cond_41

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_3d

    packed-switch p1, :pswitch_data_58

    const/16 p1, 0xf

    return p1

    :pswitch_32
    const/4 p1, 0x7

    return p1

    :pswitch_34
    const/16 p1, 0xa

    return p1

    :pswitch_37
    const/16 p1, 0xc

    return p1

    :pswitch_3a
    const/16 p1, 0x8

    return p1

    :cond_3d
    const/4 p1, 0x0

    return p1

    :cond_3f
    const/4 p1, 0x2

    return p1

    :cond_41
    const/4 p1, 0x6

    return p1

    :cond_43
    const/16 p1, 0xe

    return p1

    :cond_46
    const/16 p1, 0xd

    return p1

    :cond_49
    const/4 p1, 0x5

    return p1

    :cond_4b
    const/16 p1, 0xb

    return p1

    :cond_4e
    const/16 p1, 0x9

    return p1

    :cond_51
    const/4 p1, 0x3

    return p1

    :cond_53
    const/4 p1, 0x1

    return p1

    :cond_55
    const/4 p1, 0x4

    return p1

    nop

    :pswitch_data_58
    .packed-switch 0x119
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_32
    .end packed-switch
.end method

.method public getunopr(I)I
    .registers 3

    .line 0
    const/16 v0, 0x23

    if-eq p1, v0, :cond_12

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_e

    const/4 p1, 0x3

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1

    :cond_12
    const/4 p1, 0x2

    return p1
.end method

.method public gotostat(I)V
    .registers 8

    .line 1724
    iget v4, p0, Lvm2/compiler/LexState;->linenumber:I

    const/16 v0, 0x10a

    .line 1727
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1728
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v0

    :goto_e
    move-object v3, v0

    goto :goto_1a

    .line 1730
    :cond_10
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1731
    const-string v0, "break"

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    goto :goto_e

    .line 1733
    :goto_1a
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v0, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    iget v2, v0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lvm2/compiler/Constants;->grow([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;

    move-result-object v1

    iput-object v1, v0, Lvm2/compiler/LexState$Dyndata;->gt:[Lvm2/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v2, v0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lvm2/compiler/LexState;->newlabelentry([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;II)I

    move-result p1

    .line 1734
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->findlabel(I)Z

    return-void
.end method

.method public hasmultret(I)Z
    .registers 3

    .line 0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_b

    const/16 v0, 0xd

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public hexvalue(I)I
    .registers 3

    .line 0
    const/16 v0, 0x39

    if-gt p1, v0, :cond_7

    add-int/lit8 p1, p1, -0x30

    return p1

    :cond_7
    const/16 v0, 0x46

    if-gt p1, v0, :cond_e

    add-int/lit8 p1, p1, -0x37

    return p1

    :cond_e
    add-int/lit8 p1, p1, -0x57

    return p1
.end method

.method public ifstat(I)V
    .registers 5

    .line 1941
    new-instance v0, Lvm2/compiler/IntPtr;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lvm2/compiler/IntPtr;-><init>(I)V

    .line 1942
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->test_then_block(Lvm2/compiler/IntPtr;)V

    .line 1943
    :goto_9
    iget-object v1, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v1, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x105

    if-ne v1, v2, :cond_15

    .line 1944
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->test_then_block(Lvm2/compiler/IntPtr;)V

    goto :goto_9

    :cond_15
    const/16 v1, 0x104

    .line 1945
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1946
    invoke-virtual {p0}, Lvm2/compiler/LexState;->block()V

    :cond_20
    const/16 v1, 0x106

    const/16 v2, 0x10b

    .line 1947
    invoke-virtual {p0, v1, v2, p1}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1948
    iget-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p1, v0}, Lvm2/compiler/FuncState;->patchtohere(I)V

    return-void
.end method

.method public inclinenumber()V
    .registers 3

    .line 283
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    .line 284
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v1

    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 285
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 286
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, p0, Lvm2/compiler/LexState;->current:I

    if-eq v1, v0, :cond_19

    .line 287
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 288
    :cond_19
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvm2/compiler/LexState;->linenumber:I

    const v1, 0x7ffffffd

    if-lt v0, v1, :cond_29

    .line 289
    const-string v0, "chunk has too many lines"

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public labelstat(Lvm2/LuaString;I)V
    .registers 12

    .line 1748
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v2, v1, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    iget v1, v1, Lvm2/compiler/LexState$Dyndata;->n_label:I

    invoke-virtual {v0, v2, v1, p1}, Lvm2/compiler/FuncState;->checkrepeated([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;)V

    const/16 v0, 0x11d

    .line 1749
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1751
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v0, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    iget v2, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lvm2/compiler/Constants;->grow([Lvm2/compiler/LexState$Labeldesc;I)[Lvm2/compiler/LexState$Labeldesc;

    move-result-object v4

    iput-object v4, v0, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v5, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    add-int/lit8 v1, v5, 0x1

    iput v1, v0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0}, Lvm2/compiler/FuncState;->getlabel()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lvm2/compiler/LexState;->newlabelentry([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;II)I

    move-result p1

    .line 1752
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skipnoopstat()V

    const/4 p2, 0x0

    .line 1753
    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->block_follow(Z)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 1755
    iget-object p2, v3, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object p2, p2, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    aget-object p2, p2, p1

    iget-object v0, v3, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v0, v0, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    iget-short v0, v0, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    iput-short v0, p2, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    .line 1757
    :cond_4b
    iget-object p2, v3, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object p2, p2, Lvm2/compiler/LexState$Dyndata;->label:[Lvm2/compiler/LexState$Labeldesc;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->findgotos(Lvm2/compiler/LexState$Labeldesc;)V

    return-void
.end method

.method public leavelevel()V
    .registers 3

    .line 996
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    iget v1, v0, Lvm2/compiler/LuaC$CompileState;->nCcalls:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lvm2/compiler/LuaC$CompileState;->nCcalls:I

    return-void
.end method

.method public lexerror(Ljava/lang/String;I)V
    .registers 9

    .line 262
    iget-object v0, p0, Lvm2/compiler/LexState;->source:Lvm2/LuaString;

    invoke-virtual {v0}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/Lua;->chunkid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lvm2/compiler/LexState;->linenumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_51

    .line 265
    iget-object v1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " near "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lvm2/compiler/LexState;->txtToken(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_51
    new-instance p2, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public listfield(Lvm2/compiler/LexState$ConsControl;)V
    .registers 6

    .line 1195
    iget-object v0, p1, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    .line 1196
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget v1, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    const v2, 0x7ffffffd

    const-string v3, "items in a constructor"

    invoke-virtual {v0, v1, v2, v3}, Lvm2/compiler/FuncState;->checklimit(IILjava/lang/String;)V

    .line 1197
    iget v0, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lvm2/compiler/LexState$ConsControl;->na:I

    .line 1198
    iget v0, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lvm2/compiler/LexState$ConsControl;->tostore:I

    return-void
.end method

.method public llex(Lvm2/compiler/LexState$SemInfo;)I
    .registers 8

    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lvm2/compiler/LexState;->nbuff:I

    .line 586
    :cond_3
    :goto_3
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_130

    const/16 v3, 0x20

    if-eq v1, v3, :cond_12b

    const/16 v3, 0x22

    const/16 v4, 0x121

    if-eq v1, v3, :cond_127

    const/16 v3, 0x27

    if-eq v1, v3, :cond_127

    const/16 v3, 0x5b

    const/16 v5, 0x3d

    if-eq v1, v3, :cond_107

    const/16 v4, 0x7e

    if-eq v1, v4, :cond_f9

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_cc

    const/16 v2, 0x11f

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_a8

    packed-switch v1, :pswitch_data_134

    packed-switch v1, :pswitch_data_142

    packed-switch v1, :pswitch_data_15c

    .line 702
    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isalpha(I)Z

    move-result v1

    if-nez v1, :cond_44

    iget v1, p0, Lvm2/compiler/LexState;->current:I

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_40

    goto :goto_44

    .line 717
    :cond_40
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    return v1

    .line 706
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 707
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isalnum(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 708
    iget-object v1, p0, Lvm2/compiler/LexState;->buff:[C

    iget v2, p0, Lvm2/compiler/LexState;->nbuff:I

    invoke-virtual {p0, v1, v0, v2}, Lvm2/compiler/LexState;->newstring([CII)Lvm2/LuaString;

    move-result-object v0

    .line 709
    sget-object v1, Lvm2/compiler/LexState;->RESERVED:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 710
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 712
    :cond_6a
    iput-object v0, p1, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    const/16 p1, 0x120

    return p1

    .line 648
    :pswitch_6f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 649
    iget p1, p0, Lvm2/compiler/LexState;->current:I

    if-eq p1, v5, :cond_79

    const/16 p1, 0x3e

    return p1

    .line 652
    :cond_79
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    const/16 p1, 0x11a

    return p1

    .line 639
    :pswitch_7f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 640
    iget p1, p0, Lvm2/compiler/LexState;->current:I

    if-eq p1, v5, :cond_89

    const/16 p1, 0x3c

    return p1

    .line 643
    :cond_89
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    const/16 p1, 0x11b

    return p1

    .line 666
    :pswitch_8f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 667
    iget p1, p0, Lvm2/compiler/LexState;->current:I

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_99

    return v0

    .line 670
    :cond_99
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    const/16 p1, 0x11d

    return p1

    .line 695
    :pswitch_9f
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->read_numeral(Lvm2/compiler/LexState$SemInfo;)V

    return v2

    .line 589
    :pswitch_a3
    invoke-virtual {p0}, Lvm2/compiler/LexState;->inclinenumber()V

    goto/16 :goto_3

    .line 680
    :cond_a8
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 681
    const-string v0, "."

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->check_next(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 682
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->check_next(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bc

    const/16 p1, 0x118

    return p1

    :cond_bc
    const/16 p1, 0x117

    return p1

    .line 686
    :cond_bf
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    invoke-direct {p0, v0}, Lvm2/compiler/LexState;->isdigit(I)Z

    move-result v0

    if-nez v0, :cond_c8

    return v3

    .line 689
    :cond_c8
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->read_numeral(Lvm2/compiler/LexState$SemInfo;)V

    return v2

    .line 600
    :cond_cc
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 601
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    if-eq v1, v4, :cond_d4

    return v4

    .line 604
    :cond_d4
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 605
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    if-ne v1, v3, :cond_eb

    .line 606
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skip_sep()I

    move-result v1

    .line 607
    iput v0, p0, Lvm2/compiler/LexState;->nbuff:I

    if-ltz v1, :cond_eb

    const/4 v2, 0x0

    .line 609
    invoke-virtual {p0, v2, v1}, Lvm2/compiler/LexState;->read_long_string(Lvm2/compiler/LexState$SemInfo;I)V

    .line 610
    iput v0, p0, Lvm2/compiler/LexState;->nbuff:I

    goto/16 :goto_3

    .line 615
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lvm2/compiler/LexState;->current:I

    if-eq v1, v2, :cond_3

    .line 616
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto :goto_eb

    .line 657
    :cond_f9
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 658
    iget p1, p0, Lvm2/compiler/LexState;->current:I

    if-eq p1, v5, :cond_101

    return v4

    .line 661
    :cond_101
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    const/16 p1, 0x11c

    return p1

    .line 620
    :cond_107
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skip_sep()I

    move-result v0

    if-ltz v0, :cond_111

    .line 622
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->read_long_string(Lvm2/compiler/LexState$SemInfo;I)V

    return v4

    :cond_111
    if-ne v0, v2, :cond_114

    return v3

    .line 627
    :cond_114
    const-string p1, "invalid long string delimiter"

    invoke-virtual {p0, p1, v4}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    .line 630
    :pswitch_119
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 631
    iget p1, p0, Lvm2/compiler/LexState;->current:I

    if-eq p1, v5, :cond_121

    return v5

    .line 634
    :cond_121
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    const/16 p1, 0x119

    return p1

    .line 676
    :cond_127
    invoke-virtual {p0, v1, p1}, Lvm2/compiler/LexState;->read_string(ILvm2/compiler/LexState$SemInfo;)V

    return v4

    .line 596
    :cond_12b
    :pswitch_12b
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto/16 :goto_3

    :cond_130
    const/16 p1, 0x11e

    return p1

    nop

    :pswitch_data_134
    .packed-switch 0x9
        :pswitch_12b
        :pswitch_a3
        :pswitch_12b
        :pswitch_12b
        :pswitch_a3
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x30
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_9f
        :pswitch_8f
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x3c
        :pswitch_7f
        :pswitch_119
        :pswitch_6f
    .end packed-switch
.end method

.method public localfunc()V
    .registers 6

    .line 1952
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1953
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1954
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    const/4 v2, 0x1

    .line 1955
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    const/4 v3, 0x0

    .line 1956
    iget v4, p0, Lvm2/compiler/LexState;->linenumber:I

    invoke-virtual {p0, v0, v3, v4}, Lvm2/compiler/LexState;->body(Lvm2/compiler/LexState$expdesc;ZI)V

    .line 1958
    iget-short v0, v1, Lvm2/compiler/FuncState;->nactvar:S

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v0

    iget v1, v1, Lvm2/compiler/FuncState;->pc:I

    iput v1, v0, Lvm2/LocVars;->startpc:I

    return-void
.end method

.method public localstat()V
    .registers 5

    .line 1966
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1968
    :cond_7
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x2c

    .line 1970
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x3d

    .line 1971
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1972
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->explist(Lvm2/compiler/LexState$expdesc;)I

    move-result v1

    goto :goto_27

    .line 1974
    :cond_25
    iput v1, v0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 1977
    :goto_27
    invoke-virtual {p0, v2, v1, v0}, Lvm2/compiler/LexState;->adjust_assign(IILvm2/compiler/LexState$expdesc;)V

    .line 1978
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    return-void
.end method

.method public lookahead()V
    .registers 3

    .line 735
    iget-object v0, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x11e

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 736
    iget-object v0, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    iget-object v1, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->llex(Lvm2/compiler/LexState$SemInfo;)I

    move-result v1

    iput v1, v0, Lvm2/compiler/LexState$Token;->token:I

    return-void
.end method

.method public mainfunc(Lvm2/compiler/FuncState;)V
    .registers 4

    .line 2139
    new-instance v0, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v0}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 2140
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->open_func(Lvm2/compiler/FuncState;Lvm2/compiler/FuncState$BlockCnt;)V

    .line 2141
    iget-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object p1, p1, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    const/4 v0, 0x1

    iput v0, p1, Lvm2/Prototype;->is_vararg:I

    .line 2142
    new-instance p1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {p1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 2143
    invoke-virtual {p1, v0, v1}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 2144
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, p0, Lvm2/compiler/LexState;->envn:Lvm2/LuaString;

    invoke-virtual {v0, v1, p1}, Lvm2/compiler/FuncState;->newupvalue(Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;)I

    .line 2145
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2146
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statlist()V

    const/16 p1, 0x11e

    .line 2147
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->check(I)V

    .line 2148
    invoke-virtual {p0}, Lvm2/compiler/LexState;->close_func()V

    return-void
.end method

.method public new_localvar(Lvm2/LuaString;)V
    .registers 7

    .line 928
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->registerlocalvar(Lvm2/LuaString;)I

    move-result p1

    .line 929
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v1, v1, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0xc8

    const-string v4, "local variables"

    invoke-virtual {v0, v1, v3, v4}, Lvm2/compiler/FuncState;->checklimit(IILjava/lang/String;)V

    .line 930
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v0, Lvm2/compiler/LexState$Dyndata;->actvar:[Lvm2/compiler/LexState$Vardesc;

    if-eqz v1, :cond_1f

    iget v3, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    add-int/2addr v3, v2

    array-length v4, v1

    if-le v3, v4, :cond_2d

    .line 931
    :cond_1f
    iget v3, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lvm2/compiler/Constants;->realloc([Lvm2/compiler/LexState$Vardesc;I)[Lvm2/compiler/LexState$Vardesc;

    move-result-object v1

    iput-object v1, v0, Lvm2/compiler/LexState$Dyndata;->actvar:[Lvm2/compiler/LexState$Vardesc;

    .line 932
    :cond_2d
    iget-object v0, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget-object v1, v0, Lvm2/compiler/LexState$Dyndata;->actvar:[Lvm2/compiler/LexState$Vardesc;

    iget v2, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    new-instance v0, Lvm2/compiler/LexState$Vardesc;

    invoke-direct {v0, p1}, Lvm2/compiler/LexState$Vardesc;-><init>(I)V

    aput-object v0, v1, v2

    return-void
.end method

.method public new_localvarliteral(Ljava/lang/String;)V
    .registers 2

    .line 936
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->newstring(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    .line 937
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    return-void
.end method

.method public newlabelentry([Lvm2/compiler/LexState$Labeldesc;ILvm2/LuaString;II)I
    .registers 8

    .line 1041
    new-instance v0, Lvm2/compiler/LexState$Labeldesc;

    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-short v1, v1, Lvm2/compiler/FuncState;->nactvar:S

    invoke-direct {v0, p3, p5, p4, v1}, Lvm2/compiler/LexState$Labeldesc;-><init>(Lvm2/LuaString;IIS)V

    aput-object v0, p1, p2

    return p2
.end method

.method public newstring(Ljava/lang/String;)Lvm2/LuaString;
    .registers 3

    .line 275
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->newTString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public newstring([CII)Lvm2/LuaString;
    .registers 6

    .line 279
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lvm2/compiler/LuaC$CompileState;->newTString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public next()V
    .registers 4

    .line 726
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    iput v0, p0, Lvm2/compiler/LexState;->lastline:I

    .line 727
    iget-object v0, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    iget v1, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x11e

    if-eq v1, v2, :cond_16

    .line 728
    iget-object v1, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    invoke-virtual {v1, v0}, Lvm2/compiler/LexState$Token;->set(Lvm2/compiler/LexState$Token;)V

    .line 729
    iget-object v0, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    iput v2, v0, Lvm2/compiler/LexState$Token;->token:I

    return-void

    .line 731
    :cond_16
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget-object v1, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->llex(Lvm2/compiler/LexState$SemInfo;)I

    move-result v1

    iput v1, v0, Lvm2/compiler/LexState$Token;->token:I

    return-void
.end method

.method public nextChar()V
    .registers 2

    .line 213
    :try_start_0
    iget-object v0, p0, Lvm2/compiler/LexState;->z:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lvm2/compiler/LexState;->current:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Lvm2/compiler/LexState;->current:I

    return-void
.end method

.method public open_func(Lvm2/compiler/FuncState;Lvm2/compiler/FuncState$BlockCnt;)V
    .registers 6

    .line 1098
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iput-object v0, p1, Lvm2/compiler/FuncState;->prev:Lvm2/compiler/FuncState;

    .line 1099
    iput-object p0, p1, Lvm2/compiler/FuncState;->ls:Lvm2/compiler/LexState;

    .line 1100
    iput-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    const/4 v0, 0x0

    .line 1101
    iput v0, p1, Lvm2/compiler/FuncState;->pc:I

    const/4 v1, -0x1

    .line 1102
    iput v1, p1, Lvm2/compiler/FuncState;->lasttarget:I

    .line 1103
    new-instance v2, Lvm2/compiler/IntPtr;

    invoke-direct {v2, v1}, Lvm2/compiler/IntPtr;-><init>(I)V

    iput-object v2, p1, Lvm2/compiler/FuncState;->jpc:Lvm2/compiler/IntPtr;

    .line 1104
    iput-short v0, p1, Lvm2/compiler/FuncState;->freereg:S

    .line 1105
    iput v0, p1, Lvm2/compiler/FuncState;->nk:I

    .line 1106
    iput v0, p1, Lvm2/compiler/FuncState;->np:I

    .line 1107
    iput-short v0, p1, Lvm2/compiler/FuncState;->nups:S

    .line 1108
    iput-short v0, p1, Lvm2/compiler/FuncState;->nlocvars:S

    .line 1109
    iput-short v0, p1, Lvm2/compiler/FuncState;->nactvar:S

    .line 1110
    iget-object v1, p0, Lvm2/compiler/LexState;->dyd:Lvm2/compiler/LexState$Dyndata;

    iget v1, v1, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    iput v1, p1, Lvm2/compiler/FuncState;->firstlocal:I

    const/4 v1, 0x0

    .line 1111
    iput-object v1, p1, Lvm2/compiler/FuncState;->bl:Lvm2/compiler/FuncState$BlockCnt;

    .line 1112
    iget-object v1, p1, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget-object v2, p0, Lvm2/compiler/LexState;->source:Lvm2/LuaString;

    iput-object v2, v1, Lvm2/Prototype;->source:Lvm2/LuaString;

    const/4 v2, 0x2

    .line 1113
    iput v2, v1, Lvm2/Prototype;->maxstacksize:I

    .line 1114
    invoke-virtual {p1, p2, v0}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    return-void
.end method

.method public parlist()V
    .registers 6

    .line 1265
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1266
    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    const/4 v2, 0x0

    .line 1268
    iput v2, v1, Lvm2/Prototype;->is_vararg:I

    .line 1269
    iget-object v3, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v3, v3, Lvm2/compiler/LexState$Token;->token:I

    const/16 v4, 0x29

    if-eq v3, v4, :cond_57

    .line 1271
    :cond_f
    iget-object v3, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v3, v3, Lvm2/compiler/LexState$Token;->token:I

    const/16 v4, 0x118

    if-eq v3, v4, :cond_45

    const/16 v4, 0x120

    if-eq v3, v4, :cond_3b

    .line 1282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<name> or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-static {v4}, Lvm2/compiler/LexState;->LUA_QL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    goto :goto_4b

    .line 1273
    :cond_3b
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->new_localvar(Lvm2/LuaString;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1278
    :cond_45
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    const/4 v3, 0x1

    .line 1279
    iput v3, v1, Lvm2/Prototype;->is_vararg:I

    .line 1284
    :goto_4b
    iget v3, v1, Lvm2/Prototype;->is_vararg:I

    if-nez v3, :cond_57

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1286
    :cond_57
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->adjustlocalvars(I)V

    .line 1287
    iget-short v2, v0, Lvm2/compiler/FuncState;->nactvar:S

    iput v2, v1, Lvm2/Prototype;->numparams:I

    .line 1288
    invoke-virtual {v0, v2}, Lvm2/compiler/FuncState;->reserveregs(I)V

    return-void
.end method

.method public primaryexp(Lvm2/compiler/LexState$expdesc;)V
    .registers 5

    .line 1380
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x120

    if-eq v0, v1, :cond_37

    .line 1394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected symbol "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    return-void

    .line 1390
    :cond_37
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->singlevar(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1382
    :cond_3b
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 1383
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1384
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    const/16 v2, 0x29

    .line 1385
    invoke-virtual {p0, v2, v1, v0}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1386
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->dischargevars(Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public read_long_string(Lvm2/compiler/LexState$SemInfo;I)V
    .registers 8

    .line 434
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 435
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 436
    invoke-virtual {p0}, Lvm2/compiler/LexState;->inclinenumber()V

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    :cond_e
    :goto_e
    if-nez v1, :cond_63

    .line 438
    iget v2, p0, Lvm2/compiler/LexState;->current:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4b

    const/16 v4, 0xd

    if-eq v2, v4, :cond_4b

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_2f

    if-eqz p1, :cond_2b

    .line 476
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    goto :goto_e

    .line 478
    :cond_2b
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto :goto_e

    .line 455
    :cond_2f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skip_sep()I

    move-result v2

    if-ne v2, p2, :cond_e

    .line 456
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    const/4 v1, 0x1

    goto :goto_e

    .line 444
    :cond_3a
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skip_sep()I

    move-result v2

    if-ne v2, p2, :cond_e

    .line 445
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    if-nez p2, :cond_e

    .line 449
    const-string v2, "nesting of [[...]] is deprecated"

    invoke-virtual {p0, v2, v3}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    goto :goto_e

    .line 468
    :cond_4b
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->save(I)V

    .line 469
    invoke-virtual {p0}, Lvm2/compiler/LexState;->inclinenumber()V

    if-nez p1, :cond_e

    .line 471
    iput v0, p0, Lvm2/compiler/LexState;->nbuff:I

    goto :goto_e

    :cond_56
    if-eqz p1, :cond_5b

    .line 440
    const-string v2, "unfinished long string"

    goto :goto_5d

    .line 441
    :cond_5b
    const-string v2, "unfinished long comment"

    :goto_5d
    const/16 v3, 0x11e

    .line 440
    invoke-virtual {p0, v2, v3}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    goto :goto_e

    :cond_63
    if-eqz p1, :cond_7a

    .line 483
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    iget-object v1, p0, Lvm2/compiler/LexState;->buff:[C

    add-int/lit8 p2, p2, 0x2

    iget v2, p0, Lvm2/compiler/LexState;->nbuff:I

    mul-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, p2, v2}, Lvm2/LuaString;->valueOf([CII)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {v0, p2}, Lvm2/compiler/LuaC$CompileState;->newTString(Lvm2/LuaString;)Lvm2/LuaString;

    move-result-object p2

    iput-object p2, p1, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    :cond_7a
    return-void
.end method

.method public read_numeral(Lvm2/compiler/LexState$SemInfo;)V
    .registers 6

    .line 403
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    .line 404
    invoke-direct {p0, v0}, Lvm2/compiler/LexState;->isdigit(I)Z

    move-result v1

    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 405
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1b

    .line 406
    const-string v0, "Xx"

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->check_next(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 407
    const-string v0, "Pp"

    goto :goto_1d

    .line 409
    :cond_1b
    const-string v0, "Ee"

    :goto_1d
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->check_next(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 410
    const-string v1, "+-"

    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->check_next(Ljava/lang/String;)Z

    .line 411
    :cond_28
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isxdigit(I)Z

    move-result v1

    if-nez v1, :cond_45

    iget v1, p0, Lvm2/compiler/LexState;->current:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_37

    goto :goto_45

    .line 416
    :cond_37
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lvm2/compiler/LexState;->buff:[C

    const/4 v2, 0x0

    iget v3, p0, Lvm2/compiler/LexState;->nbuff:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 417
    invoke-virtual {p0, v0, p1}, Lvm2/compiler/LexState;->str2d(Ljava/lang/String;Lvm2/compiler/LexState$SemInfo;)Z

    return-void

    .line 412
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    goto :goto_1d
.end method

.method public read_string(ILvm2/compiler/LexState$SemInfo;)V
    .registers 10

    .line 501
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 502
    :cond_3
    :goto_3
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_c5

    .line 503
    const-string v2, "unfinished string"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_be

    const/16 v4, 0x121

    const/16 v5, 0xa

    if-eq v0, v5, :cond_b9

    const/16 v6, 0xd

    if-eq v0, v6, :cond_b9

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_1f

    .line 576
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    goto :goto_3

    .line 513
    :cond_1f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 514
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_b1

    if-eq v0, v6, :cond_b1

    const/16 v2, 0x66

    if-eq v0, v2, :cond_a7

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_a9

    const/16 v2, 0x72

    if-eq v0, v2, :cond_a5

    const/16 v2, 0x74

    if-eq v0, v2, :cond_a2

    const/16 v2, 0x76

    if-eq v0, v2, :cond_9f

    const/16 v2, 0x78

    if-eq v0, v2, :cond_9a

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_81

    const/16 v2, 0x61

    if-eq v0, v2, :cond_7f

    const/16 v2, 0x62

    if-eq v0, v2, :cond_7c

    .line 555
    invoke-direct {p0, v0}, Lvm2/compiler/LexState;->isdigit(I)Z

    move-result v0

    if-nez v0, :cond_58

    .line 556
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    goto :goto_3

    :cond_58
    const/4 v0, 0x0

    move v2, v0

    :cond_5a
    mul-int/2addr v0, v5

    .line 561
    iget v3, p0, Lvm2/compiler/LexState;->current:I

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 562
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    add-int/2addr v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6f

    .line 563
    iget v3, p0, Lvm2/compiler/LexState;->current:I

    invoke-direct {p0, v3}, Lvm2/compiler/LexState;->isdigit(I)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_6f
    const/16 v1, 0xff

    if-le v0, v1, :cond_78

    .line 565
    const-string v1, "escape sequence too large"

    invoke-virtual {p0, v1, v4}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    .line 566
    :cond_78
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->save(I)V

    goto :goto_3

    :cond_7c
    const/16 v5, 0x8

    goto :goto_a9

    :cond_7f
    const/4 v5, 0x7

    goto :goto_a9

    .line 547
    :cond_81
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 548
    :goto_84
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    invoke-direct {p0, v0}, Lvm2/compiler/LexState;->isspace(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    invoke-virtual {p0}, Lvm2/compiler/LexState;->currIsNewline()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Lvm2/compiler/LexState;->inclinenumber()V

    goto :goto_84

    .line 550
    :cond_96
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto :goto_84

    .line 537
    :cond_9a
    invoke-virtual {p0}, Lvm2/compiler/LexState;->readhexaesc()I

    move-result v5

    goto :goto_a9

    :cond_9f
    const/16 v5, 0xb

    goto :goto_a9

    :cond_a2
    const/16 v5, 0x9

    goto :goto_a9

    :cond_a5
    move v5, v6

    goto :goto_a9

    :cond_a7
    const/16 v5, 0xc

    .line 571
    :cond_a9
    :goto_a9
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->save(I)V

    .line 572
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    goto/16 :goto_3

    .line 541
    :cond_b1
    invoke-virtual {p0, v5}, Lvm2/compiler/LexState;->save(I)V

    .line 542
    invoke-virtual {p0}, Lvm2/compiler/LexState;->inclinenumber()V

    goto/16 :goto_3

    .line 509
    :cond_b9
    invoke-virtual {p0, v2, v4}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_be
    const/16 v0, 0x11e

    .line 505
    invoke-virtual {p0, v2, v0}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 579
    :cond_c5
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 580
    iget-object p1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    iget-object v0, p0, Lvm2/compiler/LexState;->buff:[C

    iget v2, p0, Lvm2/compiler/LexState;->nbuff:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v1, v2}, Lvm2/LuaString;->valueOf([CII)Lvm2/LuaString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/compiler/LuaC$CompileState;->newTString(Lvm2/LuaString;)Lvm2/LuaString;

    move-result-object p1

    iput-object p1, p2, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    return-void
.end method

.method public readhexaesc()I
    .registers 5

    .line 491
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 492
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    .line 493
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    .line 494
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    .line 495
    invoke-direct {p0, v0}, Lvm2/compiler/LexState;->isxdigit(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isxdigit(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 496
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hexadecimal digit expected \'x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x121

    invoke-virtual {p0, v2, v3}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    .line 497
    :cond_31
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->hexvalue(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->hexvalue(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public recfield(Lvm2/compiler/LexState$ConsControl;)V
    .registers 9

    .line 1175
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1176
    iget-short v1, v0, Lvm2/compiler/FuncState;->freereg:S

    .line 1177
    new-instance v2, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v2}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1178
    new-instance v3, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v3}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1180
    iget-object v4, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v4, v4, Lvm2/compiler/LexState$Token;->token:I

    const/16 v5, 0x120

    if-ne v4, v5, :cond_24

    .line 1181
    iget v4, p1, Lvm2/compiler/LexState$ConsControl;->nh:I

    const v5, 0x7ffffffd

    const-string v6, "items in a constructor"

    invoke-virtual {v0, v4, v5, v6}, Lvm2/compiler/FuncState;->checklimit(IILjava/lang/String;)V

    .line 1182
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->checkname(Lvm2/compiler/LexState$expdesc;)V

    goto :goto_27

    .line 1185
    :cond_24
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->yindex(Lvm2/compiler/LexState$expdesc;)V

    .line 1186
    :goto_27
    iget v4, p1, Lvm2/compiler/LexState$ConsControl;->nh:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lvm2/compiler/LexState$ConsControl;->nh:I

    const/16 v4, 0x3d

    .line 1187
    invoke-virtual {p0, v4}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1188
    invoke-virtual {v0, v2}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v2

    .line 1189
    invoke-virtual {p0, v3}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    .line 1190
    iget-object p1, p1, Lvm2/compiler/LexState$ConsControl;->t:Lvm2/compiler/LexState$expdesc;

    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-virtual {v0, v3}, Lvm2/compiler/FuncState;->exp2RK(Lvm2/compiler/LexState$expdesc;)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4, p1, v2, v3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    int-to-short p1, v1

    .line 1191
    iput-short p1, v0, Lvm2/compiler/FuncState;->freereg:S

    return-void
.end method

.method public registerlocalvar(Lvm2/LuaString;)I
    .registers 7

    .line 919
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 920
    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    .line 921
    iget-object v2, v1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    if-eqz v2, :cond_f

    iget-short v3, v0, Lvm2/compiler/FuncState;->nlocvars:S

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    if-le v3, v4, :cond_1b

    .line 922
    :cond_f
    iget-short v3, v0, Lvm2/compiler/FuncState;->nlocvars:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lvm2/compiler/Constants;->realloc([Lvm2/LocVars;I)[Lvm2/LocVars;

    move-result-object v2

    iput-object v2, v1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    .line 923
    :cond_1b
    iget-object v1, v1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    iget-short v2, v0, Lvm2/compiler/FuncState;->nlocvars:S

    new-instance v3, Lvm2/LocVars;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v4}, Lvm2/LocVars;-><init>(Lvm2/LuaString;II)V

    aput-object v3, v1, v2

    .line 924
    iget-short p1, v0, Lvm2/compiler/FuncState;->nlocvars:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lvm2/compiler/FuncState;->nlocvars:S

    return p1
.end method

.method public removevars(I)V
    .registers 5

    .line 949
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 950
    :goto_2
    iget-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    if-le v1, p1, :cond_14

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    .line 951
    iput-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->getlocvar(I)Lvm2/LocVars;

    move-result-object v1

    iget v2, v0, Lvm2/compiler/FuncState;->pc:I

    iput v2, v1, Lvm2/LocVars;->endpc:I

    goto :goto_2

    :cond_14
    return-void
.end method

.method public repeatstat(I)V
    .registers 7

    .line 1782
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1783
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->getlabel()I

    move-result v1

    .line 1784
    new-instance v2, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v2}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 1785
    new-instance v3, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v3}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    const/4 v4, 0x1

    .line 1786
    invoke-virtual {v0, v2, v4}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    const/4 v2, 0x0

    .line 1787
    invoke-virtual {v0, v3, v2}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1788
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1789
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statlist()V

    const/16 v2, 0x115

    const/16 v4, 0x111

    .line 1790
    invoke-virtual {p0, v2, v4, p1}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1791
    invoke-virtual {p0}, Lvm2/compiler/LexState;->cond()I

    move-result p1

    .line 1792
    iget-boolean v2, v3, Lvm2/compiler/FuncState$BlockCnt;->upval:Z

    if-eqz v2, :cond_32

    .line 1793
    iget-short v2, v3, Lvm2/compiler/FuncState$BlockCnt;->nactvar:S

    invoke-virtual {v0, p1, v2}, Lvm2/compiler/FuncState;->patchclose(II)V

    .line 1795
    :cond_32
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    .line 1796
    invoke-virtual {v0, p1, v1}, Lvm2/compiler/FuncState;->patchlist(II)V

    .line 1797
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    return-void
.end method

.method public retstat()V
    .registers 9

    .line 2026
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 2027
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    const/4 v2, 0x1

    .line 2029
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->block_follow(Z)Z

    move-result v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    if-nez v3, :cond_66

    iget-object v3, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v3, v3, Lvm2/compiler/LexState$Token;->token:I

    if-ne v3, v4, :cond_18

    goto :goto_66

    .line 2032
    :cond_18
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->explist(Lvm2/compiler/LexState$expdesc;)I

    move-result v3

    .line 2033
    iget v6, v1, Lvm2/compiler/LexState$expdesc;->k:I

    invoke-virtual {p0, v6}, Lvm2/compiler/LexState;->hasmultret(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 2034
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->setmultret(Lvm2/compiler/LexState$expdesc;)V

    .line 2035
    iget v6, v1, Lvm2/compiler/LexState$expdesc;->k:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_49

    if-ne v3, v2, :cond_49

    .line 2036
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->getcodePtr(Lvm2/compiler/LexState$expdesc;)Lvm2/compiler/InstructionPtr;

    move-result-object v3

    const/16 v6, 0x1d

    invoke-static {v3, v6}, Lvm2/compiler/Constants;->SET_OPCODE(Lvm2/compiler/InstructionPtr;I)V

    .line 2037
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->getcode(Lvm2/compiler/LexState$expdesc;)I

    move-result v1

    invoke-static {v1}, Lvm2/Lua;->GETARG_A(I)I

    move-result v1

    iget-short v3, v0, Lvm2/compiler/FuncState;->nactvar:S

    if-ne v1, v3, :cond_45

    goto :goto_46

    :cond_45
    move v2, v5

    :goto_46
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 2039
    :cond_49
    iget-short v5, v0, Lvm2/compiler/FuncState;->nactvar:S

    const/4 v1, -0x1

    move v3, v1

    goto :goto_67

    :cond_4e
    if-ne v3, v2, :cond_55

    .line 2043
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->exp2anyreg(Lvm2/compiler/LexState$expdesc;)I

    move-result v5

    goto :goto_67

    .line 2045
    :cond_55
    invoke-virtual {v0, v1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 2046
    iget-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    .line 2047
    iget-short v6, v0, Lvm2/compiler/FuncState;->freereg:S

    sub-int/2addr v6, v1

    if-ne v3, v6, :cond_60

    goto :goto_61

    :cond_60
    move v2, v5

    :goto_61
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    move v5, v1

    goto :goto_67

    :cond_66
    :goto_66
    move v3, v5

    .line 2051
    :goto_67
    invoke-virtual {v0, v5, v3}, Lvm2/compiler/FuncState;->ret(II)V

    .line 2052
    invoke-virtual {p0, v4}, Lvm2/compiler/LexState;->testnext(I)Z

    return-void
.end method

.method public save(I)V
    .registers 5

    .line 230
    iget-object v0, p0, Lvm2/compiler/LexState;->buff:[C

    if-eqz v0, :cond_b

    iget v1, p0, Lvm2/compiler/LexState;->nbuff:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-le v1, v2, :cond_17

    .line 231
    :cond_b
    iget v1, p0, Lvm2/compiler/LexState;->nbuff:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lvm2/compiler/Constants;->realloc([CI)[C

    move-result-object v0

    iput-object v0, p0, Lvm2/compiler/LexState;->buff:[C

    .line 232
    :cond_17
    iget-object v0, p0, Lvm2/compiler/LexState;->buff:[C

    iget v1, p0, Lvm2/compiler/LexState;->nbuff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lvm2/compiler/LexState;->nbuff:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method public save_and_next()V
    .registers 2

    .line 225
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->save(I)V

    .line 226
    invoke-virtual {p0}, Lvm2/compiler/LexState;->nextChar()V

    return-void
.end method

.method public semerror(Ljava/lang/String;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    const/4 v1, 0x0

    iput v1, v0, Lvm2/compiler/LexState$Token;->token:I

    .line 858
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->syntaxerror(Ljava/lang/String;)V

    return-void
.end method

.method public setinput(Lvm2/compiler/LuaC$CompileState;ILjava/io/InputStream;Lvm2/LuaString;)V
    .registers 6

    const/16 v0, 0x2e

    .line 293
    iput-byte v0, p0, Lvm2/compiler/LexState;->decpoint:B

    .line 294
    iput-object p1, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    .line 295
    iget-object p1, p0, Lvm2/compiler/LexState;->lookahead:Lvm2/compiler/LexState$Token;

    const/16 v0, 0x11e

    iput v0, p1, Lvm2/compiler/LexState$Token;->token:I

    .line 296
    iput-object p3, p0, Lvm2/compiler/LexState;->z:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    const/4 p1, 0x1

    .line 298
    iput p1, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 299
    iput p1, p0, Lvm2/compiler/LexState;->lastline:I

    .line 300
    iput-object p4, p0, Lvm2/compiler/LexState;->source:Lvm2/LuaString;

    .line 301
    sget-object p1, Lvm2/LuaValue;->ENV:Lvm2/LuaString;

    iput-object p1, p0, Lvm2/compiler/LexState;->envn:Lvm2/LuaString;

    const/4 p1, 0x0

    .line 302
    iput p1, p0, Lvm2/compiler/LexState;->nbuff:I

    .line 303
    iput p2, p0, Lvm2/compiler/LexState;->current:I

    .line 304
    invoke-direct {p0}, Lvm2/compiler/LexState;->skipShebang()V

    return-void
.end method

.method public simpleexp(Lvm2/compiler/LexState$expdesc;)V
    .registers 8

    .line 1446
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_92

    const/16 v2, 0x107

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8a

    const/16 v2, 0x109

    if-eq v1, v2, :cond_81

    const/16 v2, 0x10e

    const/4 v4, 0x1

    if-eq v1, v2, :cond_7d

    const/16 v2, 0x114

    if-eq v1, v2, :cond_78

    const/16 v2, 0x118

    if-eq v1, v2, :cond_42

    const/16 v2, 0x11f

    if-eq v1, v2, :cond_32

    const/16 v2, 0x121

    if-eq v1, v2, :cond_2a

    .line 1485
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->suffixedexp(Lvm2/compiler/LexState$expdesc;)V

    return-void

    .line 1453
    :cond_2a
    iget-object v0, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v0, v0, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->codestring(Lvm2/compiler/LexState$expdesc;Lvm2/LuaString;)V

    goto :goto_8e

    :cond_32
    const/4 v0, 0x5

    .line 1448
    invoke-virtual {p1, v0, v3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1449
    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget-object v0, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v0, v0, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/compiler/LexState$expdesc$U;->setNval(Lvm2/LuaValue;)V

    goto :goto_8e

    .line 1469
    :cond_42
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1470
    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget v1, v1, Lvm2/Prototype;->is_vararg:I

    if-eqz v1, :cond_4c

    move v1, v4

    goto :goto_4d

    :cond_4c
    move v1, v3

    :goto_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot use "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-static {v5}, Lvm2/compiler/LexState;->LUA_QL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " outside a vararg function"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lvm2/compiler/LexState;->check_condition(ZLjava/lang/String;)V

    const/16 v1, 0x26

    .line 1472
    invoke-virtual {v0, v1, v3, v4, v3}, Lvm2/compiler/FuncState;->codeABC(IIII)I

    move-result v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lvm2/compiler/LexState$expdesc;->init(II)V

    goto :goto_8e

    :cond_78
    const/4 v0, 0x2

    .line 1461
    invoke-virtual {p1, v0, v3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    goto :goto_8e

    .line 1457
    :cond_7d
    invoke-virtual {p1, v4, v3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    goto :goto_8e

    .line 1480
    :cond_81
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1481
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    invoke-virtual {p0, p1, v3, v0}, Lvm2/compiler/LexState;->body(Lvm2/compiler/LexState$expdesc;ZI)V

    return-void

    :cond_8a
    const/4 v0, 0x3

    .line 1465
    invoke-virtual {p1, v0, v3}, Lvm2/compiler/LexState$expdesc;->init(II)V

    .line 1489
    :goto_8e
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    return-void

    .line 1476
    :cond_92
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->constructor(Lvm2/compiler/LexState$expdesc;)V

    return-void
.end method

.method public singlevar(Lvm2/compiler/LexState$expdesc;)V
    .registers 8

    .line 955
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    const/4 v2, 0x1

    .line 957
    invoke-static {v1, v0, p1, v2}, Lvm2/compiler/FuncState;->singlevaraux(Lvm2/compiler/FuncState;Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;I)I

    move-result v3

    if-nez v3, :cond_2b

    .line 958
    new-instance v3, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v3}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 959
    iget-object v4, p0, Lvm2/compiler/LexState;->envn:Lvm2/LuaString;

    invoke-static {v1, v4, p1, v2}, Lvm2/compiler/FuncState;->singlevaraux(Lvm2/compiler/FuncState;Lvm2/LuaString;Lvm2/compiler/LexState$expdesc;I)I

    .line 960
    iget v4, p1, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_22

    const/16 v5, 0x8

    if-ne v4, v5, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :cond_22
    :goto_22
    invoke-static {v2}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 961
    invoke-virtual {p0, v3, v0}, Lvm2/compiler/LexState;->codestring(Lvm2/compiler/LexState$expdesc;Lvm2/LuaString;)V

    .line 962
    invoke-virtual {v1, p1, v3}, Lvm2/compiler/FuncState;->indexed(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    :cond_2b
    return-void
.end method

.method public skip_sep()I
    .registers 6

    .line 422
    iget v0, p0, Lvm2/compiler/LexState;->current:I

    const/16 v1, 0x5b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_f

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    move v1, v3

    goto :goto_10

    :cond_f
    :goto_f
    move v1, v2

    .line 423
    :goto_10
    invoke-static {v1}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 424
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    .line 425
    :goto_16
    iget v1, p0, Lvm2/compiler/LexState;->current:I

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_22

    .line 426
    invoke-virtual {p0}, Lvm2/compiler/LexState;->save_and_next()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_22
    if-ne v1, v0, :cond_25

    return v3

    :cond_25
    neg-int v0, v3

    sub-int/2addr v0, v2

    return v0
.end method

.method public skipnoopstat()V
    .registers 3

    .line 1740
    :goto_0
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_e

    const/16 v1, 0x11d

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 1741
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statement()V

    goto :goto_0
.end method

.method public statement()V
    .registers 4

    .line 2056
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 2057
    invoke-virtual {p0}, Lvm2/compiler/LexState;->enterlevel()V

    .line 2058
    iget-object v1, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v1, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_7f

    const/16 v2, 0x10d

    if-eq v1, v2, :cond_6c

    const/16 v2, 0x116

    if-eq v1, v2, :cond_68

    const/16 v2, 0x11d

    if-eq v1, v2, :cond_5d

    const/16 v2, 0x102

    if-eq v1, v2, :cond_53

    const/16 v2, 0x103

    if-eq v1, v2, :cond_47

    const/16 v2, 0x111

    if-eq v1, v2, :cond_43

    const/16 v2, 0x112

    if-eq v1, v2, :cond_3c

    packed-switch v1, :pswitch_data_a0

    .line 2113
    invoke-virtual {p0}, Lvm2/compiler/LexState;->exprstat()V

    goto :goto_82

    .line 2064
    :pswitch_30
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->ifstat(I)V

    goto :goto_82

    .line 2086
    :pswitch_34
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->funcstat(I)V

    goto :goto_82

    .line 2078
    :pswitch_38
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->forstat(I)V

    goto :goto_82

    .line 2103
    :cond_3c
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2104
    invoke-virtual {p0}, Lvm2/compiler/LexState;->retstat()V

    goto :goto_82

    .line 2082
    :cond_43
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->repeatstat(I)V

    goto :goto_82

    .line 2072
    :cond_47
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2073
    invoke-virtual {p0}, Lvm2/compiler/LexState;->block()V

    const/16 v1, 0x106

    .line 2074
    invoke-virtual {p0, v1, v2, v0}, Lvm2/compiler/LexState;->check_match(III)V

    goto :goto_82

    .line 2109
    :cond_53
    :pswitch_53
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0}, Lvm2/compiler/FuncState;->jump()I

    move-result v0

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->gotostat(I)V

    goto :goto_82

    .line 2098
    :cond_5d
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2099
    invoke-virtual {p0}, Lvm2/compiler/LexState;->str_checkname()Lvm2/LuaString;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lvm2/compiler/LexState;->labelstat(Lvm2/LuaString;I)V

    goto :goto_82

    .line 2068
    :cond_68
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->whilestat(I)V

    goto :goto_82

    .line 2090
    :cond_6c
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    const/16 v0, 0x109

    .line 2091
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->testnext(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2092
    invoke-virtual {p0}, Lvm2/compiler/LexState;->localfunc()V

    goto :goto_82

    .line 2094
    :cond_7b
    invoke-virtual {p0}, Lvm2/compiler/LexState;->localstat()V

    goto :goto_82

    .line 2060
    :cond_7f
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 2117
    :goto_82
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-object v1, v0, Lvm2/compiler/FuncState;->f:Lvm2/Prototype;

    iget v1, v1, Lvm2/Prototype;->maxstacksize:I

    iget-short v2, v0, Lvm2/compiler/FuncState;->freereg:S

    if-lt v1, v2, :cond_92

    iget-short v0, v0, Lvm2/compiler/FuncState;->nactvar:S

    if-lt v2, v0, :cond_92

    const/4 v0, 0x1

    goto :goto_93

    :cond_92
    const/4 v0, 0x0

    :goto_93
    invoke-static {v0}, Lvm2/compiler/Constants;->_assert(Z)V

    .line 2119
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    iget-short v1, v0, Lvm2/compiler/FuncState;->nactvar:S

    iput-short v1, v0, Lvm2/compiler/FuncState;->freereg:S

    .line 2120
    invoke-virtual {p0}, Lvm2/compiler/LexState;->leavelevel()V

    return-void

    :pswitch_data_a0
    .packed-switch 0x108
        :pswitch_38
        :pswitch_34
        :pswitch_53
        :pswitch_30
    .end packed-switch
.end method

.method public statlist()V
    .registers 3

    :goto_0
    const/4 v0, 0x1

    .line 2125
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->block_follow(Z)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2126
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    const/16 v1, 0x112

    if-ne v0, v1, :cond_13

    .line 2127
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statement()V

    return-void

    .line 2130
    :cond_13
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statement()V

    goto :goto_0

    :cond_17
    return-void
.end method

.method public str2d(Ljava/lang/String;Lvm2/compiler/LexState$SemInfo;)Z
    .registers 5

    const/16 v0, 0x6e

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_59

    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_11

    goto :goto_59

    :cond_11
    const/16 v0, 0x78

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_52

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_22

    goto :goto_52

    .line 393
    :cond_22
    :try_start_22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    iput-object p1, p2, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_30} :catch_31

    goto :goto_5d

    :catch_31
    move-exception p1

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "malformed number ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x11f

    invoke-virtual {p0, p1, p2}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    goto :goto_5d

    .line 390
    :cond_52
    :goto_52
    invoke-virtual {p0, p1, p2}, Lvm2/compiler/LexState;->strx2number(Ljava/lang/String;Lvm2/compiler/LexState$SemInfo;)Lvm2/LuaValue;

    move-result-object p1

    iput-object p1, p2, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;

    goto :goto_5d

    .line 388
    :cond_59
    :goto_59
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    iput-object p1, p2, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;

    :goto_5d
    const/4 p1, 0x1

    return p1
.end method

.method public str_checkname()Lvm2/LuaString;
    .registers 2

    const/16 v0, 0x120

    .line 903
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->check(I)V

    .line 904
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget-object v0, v0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v0, v0, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    .line 905
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    return-object v0
.end method

.method public strx2number(Ljava/lang/String;Lvm2/compiler/LexState$SemInfo;)Lvm2/LuaValue;
    .registers 16

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 340
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_14

    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isspace(I)Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 344
    :cond_14
    array-length v1, p1

    const/16 v2, 0x2d

    if-ge v0, v1, :cond_22

    aget-char v1, p1, v0

    if-ne v1, v2, :cond_22

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    goto :goto_24

    :cond_22
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_24
    add-int/lit8 v1, v0, 0x2

    .line 349
    array-length v5, p1

    if-lt v1, v5, :cond_2c

    .line 350
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1

    :cond_2c
    add-int/lit8 v1, v0, 0x1

    .line 351
    aget-char v5, p1, v0

    const/16 v6, 0x30

    if-eq v5, v6, :cond_37

    .line 352
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1

    .line 353
    :cond_37
    aget-char v1, p1, v1

    const/16 v5, 0x78

    if-eq v1, v5, :cond_44

    const/16 v5, 0x58

    if-eq v1, v5, :cond_44

    .line 354
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1

    :cond_44
    add-int/lit8 v0, v0, 0x2

    const-wide/16 v7, 0x0

    .line 360
    :goto_48
    array-length v1, p1

    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    if-ge v0, v1, :cond_62

    aget-char v1, p1, v0

    invoke-direct {p0, v1}, Lvm2/compiler/LexState;->isxdigit(I)Z

    move-result v1

    if-eqz v1, :cond_62

    mul-double/2addr v7, v9

    add-int/lit8 v1, v0, 0x1

    .line 361
    aget-char v0, p1, v0

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->hexvalue(I)I

    move-result v0

    int-to-double v9, v0

    add-double/2addr v7, v9

    move v0, v1

    goto :goto_48

    .line 362
    :cond_62
    array-length v1, p1

    if-ge v0, v1, :cond_88

    aget-char v1, p1, v0

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_88

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .line 364
    :goto_6e
    array-length v5, p1

    if-ge v0, v5, :cond_89

    aget-char v5, p1, v0

    invoke-direct {p0, v5}, Lvm2/compiler/LexState;->isxdigit(I)Z

    move-result v5

    if-eqz v5, :cond_89

    mul-double/2addr v7, v9

    add-int/lit8 v5, v0, 0x1

    .line 365
    aget-char v0, p1, v0

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->hexvalue(I)I

    move-result v0

    int-to-double v11, v0

    add-double/2addr v7, v11

    add-int/lit8 v1, v1, -0x4

    move v0, v5

    goto :goto_6e

    :cond_88
    move v1, p2

    .line 369
    :cond_89
    array-length v5, p1

    if-ge v0, v5, :cond_bd

    aget-char v5, p1, v0

    const/16 v9, 0x70

    if-eq v5, v9, :cond_96

    const/16 v9, 0x50

    if-ne v5, v9, :cond_bd

    :cond_96
    add-int/lit8 v5, v0, 0x1

    .line 373
    array-length v9, p1

    if-ge v5, v9, :cond_a3

    aget-char v9, p1, v5

    if-ne v9, v2, :cond_a3

    add-int/lit8 v5, v0, 0x2

    const/4 v0, 0x1

    goto :goto_a4

    :cond_a3
    move v0, p2

    .line 377
    :goto_a4
    array-length v2, p1

    if-ge v5, v2, :cond_b9

    aget-char v2, p1, v5

    invoke-direct {p0, v2}, Lvm2/compiler/LexState;->isdigit(I)Z

    move-result v2

    if-eqz v2, :cond_b9

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 v2, v5, 0x1

    .line 378
    aget-char v5, p1, v5

    add-int/2addr p2, v5

    sub-int/2addr p2, v6

    move v5, v2

    goto :goto_a4

    :cond_b9
    if-eqz v0, :cond_bc

    neg-int p2, p2

    :cond_bc
    add-int/2addr v1, p2

    :cond_bd
    mul-double/2addr v3, v7

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    int-to-double v0, v1

    .line 383
    invoke-static {p1, p2, v0, v1}, Lvm2/lib/MathLib;->dpow_d(DD)D

    move-result-wide p1

    mul-double/2addr v3, p1

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public subexpr(Lvm2/compiler/LexState$expdesc;I)I
    .registers 8

    .line 1573
    invoke-virtual {p0}, Lvm2/compiler/LexState;->enterlevel()V

    .line 1574
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->getunopr(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1e

    .line 1576
    iget v1, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 1577
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    const/16 v2, 0x8

    .line 1578
    invoke-virtual {p0, p1, v2}, Lvm2/compiler/LexState;->subexpr(Lvm2/compiler/LexState$expdesc;I)I

    .line 1579
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v0, p1, v1}, Lvm2/compiler/FuncState;->prefix(ILvm2/compiler/LexState$expdesc;I)V

    goto :goto_21

    .line 1581
    :cond_1e
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->simpleexp(Lvm2/compiler/LexState$expdesc;)V

    .line 1583
    :goto_21
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->getbinopr(I)I

    move-result v0

    :goto_29
    const/16 v1, 0xf

    if-eq v0, v1, :cond_55

    .line 1584
    sget-object v1, Lvm2/compiler/LexState;->priority:[Lvm2/compiler/LexState$Priority;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lvm2/compiler/LexState$Priority;->left:B

    if-le v1, p2, :cond_55

    .line 1585
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1586
    iget v2, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 1587
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1588
    iget-object v3, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v3, v0, p1}, Lvm2/compiler/FuncState;->infix(ILvm2/compiler/LexState$expdesc;)V

    .line 1590
    sget-object v3, Lvm2/compiler/LexState;->priority:[Lvm2/compiler/LexState$Priority;

    aget-object v3, v3, v0

    iget-byte v3, v3, Lvm2/compiler/LexState$Priority;->right:B

    invoke-virtual {p0, v1, v3}, Lvm2/compiler/LexState;->subexpr(Lvm2/compiler/LexState$expdesc;I)I

    move-result v3

    .line 1591
    iget-object v4, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v4, v0, p1, v1, v2}, Lvm2/compiler/FuncState;->posfix(ILvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;I)V

    move v0, v3

    goto :goto_29

    .line 1594
    :cond_55
    invoke-virtual {p0}, Lvm2/compiler/LexState;->leavelevel()V

    return v0
.end method

.method public suffixedexp(Lvm2/compiler/LexState$expdesc;)V
    .registers 5

    .line 1404
    iget v0, p0, Lvm2/compiler/LexState;->linenumber:I

    .line 1405
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->primaryexp(Lvm2/compiler/LexState$expdesc;)V

    .line 1407
    :goto_5
    iget-object v1, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v1, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_49

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_35

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_22

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x121

    if-eq v1, v2, :cond_4d

    return-void

    .line 1413
    :cond_22
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1414
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, p1}, Lvm2/compiler/FuncState;->exp2anyregup(Lvm2/compiler/LexState$expdesc;)V

    .line 1415
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->yindex(Lvm2/compiler/LexState$expdesc;)V

    .line 1416
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, p1, v1}, Lvm2/compiler/FuncState;->indexed(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    goto :goto_5

    .line 1420
    :cond_35
    new-instance v1, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v1}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1421
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1422
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->checkname(Lvm2/compiler/LexState$expdesc;)V

    .line 1423
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, p1, v1}, Lvm2/compiler/FuncState;->self(Lvm2/compiler/LexState$expdesc;Lvm2/compiler/LexState$expdesc;)V

    .line 1424
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->funcargs(Lvm2/compiler/LexState$expdesc;I)V

    goto :goto_5

    .line 1409
    :cond_49
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->fieldsel(Lvm2/compiler/LexState$expdesc;)V

    goto :goto_5

    .line 1430
    :cond_4d
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v1, p1}, Lvm2/compiler/FuncState;->exp2nextreg(Lvm2/compiler/LexState$expdesc;)V

    .line 1431
    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->funcargs(Lvm2/compiler/LexState$expdesc;I)V

    goto :goto_5
.end method

.method public syntaxerror(Ljava/lang/String;)V
    .registers 3

    .line 270
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    invoke-virtual {p0, p1, v0}, Lvm2/compiler/LexState;->lexerror(Ljava/lang/String;I)V

    return-void
.end method

.method public test_then_block(Lvm2/compiler/IntPtr;)V
    .registers 7

    .line 1910
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    .line 1911
    new-instance v1, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 1913
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1914
    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    const/16 v2, 0x113

    .line 1915
    invoke-virtual {p0, v2}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1916
    iget-object v2, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v2, v2, Lvm2/compiler/LexState$Token;->token:I

    const/16 v3, 0x10a

    const/4 v4, 0x0

    if-eq v2, v3, :cond_32

    const/16 v3, 0x102

    if-ne v2, v3, :cond_23

    goto :goto_32

    .line 1928
    :cond_23
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v0}, Lvm2/compiler/FuncState;->goiftrue(Lvm2/compiler/LexState$expdesc;)V

    .line 1929
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v1, v4}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1930
    iget-object v0, v0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    goto :goto_58

    .line 1917
    :cond_32
    :goto_32
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v0}, Lvm2/compiler/FuncState;->goiffalse(Lvm2/compiler/LexState$expdesc;)V

    .line 1918
    iget-object v2, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v2, v1, v4}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    .line 1919
    iget-object v0, v0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    invoke-virtual {p0, v0}, Lvm2/compiler/LexState;->gotostat(I)V

    .line 1920
    invoke-virtual {p0}, Lvm2/compiler/LexState;->skipnoopstat()V

    .line 1921
    invoke-virtual {p0, v4}, Lvm2/compiler/LexState;->block_follow(Z)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1922
    iget-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {p1}, Lvm2/compiler/FuncState;->leaveblock()V

    return-void

    .line 1926
    :cond_52
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0}, Lvm2/compiler/FuncState;->jump()I

    move-result v0

    .line 1932
    :goto_58
    invoke-virtual {p0}, Lvm2/compiler/LexState;->statlist()V

    .line 1933
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v1}, Lvm2/compiler/FuncState;->leaveblock()V

    .line 1934
    iget-object v1, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v1, v1, Lvm2/compiler/LexState$Token;->token:I

    const/16 v2, 0x104

    if-eq v1, v2, :cond_6c

    const/16 v2, 0x105

    if-ne v1, v2, :cond_75

    .line 1935
    :cond_6c
    iget-object v1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v1}, Lvm2/compiler/FuncState;->jump()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lvm2/compiler/FuncState;->concat(Lvm2/compiler/IntPtr;I)V

    .line 1936
    :cond_75
    iget-object p1, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {p1, v0}, Lvm2/compiler/FuncState;->patchtohere(I)V

    return-void
.end method

.method public testnext(I)Z
    .registers 3

    .line 866
    iget-object v0, p0, Lvm2/compiler/LexState;->t:Lvm2/compiler/LexState$Token;

    iget v0, v0, Lvm2/compiler/LexState$Token;->token:I

    if-ne v0, p1, :cond_b

    .line 867
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public token2str(I)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x101

    if-ge p1, v0, :cond_33

    .line 238
    invoke-static {p1}, Lvm2/compiler/LexState;->iscntrl(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 239
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 240
    :cond_27
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 242
    :cond_33
    sget-object v1, Lvm2/compiler/LexState;->luaX_tokens:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public txtToken(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_14

    .line 257
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->token2str(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 255
    :pswitch_8
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lvm2/compiler/LexState;->buff:[C

    const/4 v1, 0x0

    iget v2, p0, Lvm2/compiler/LexState;->nbuff:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    nop

    :pswitch_data_14
    .packed-switch 0x11f
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public undefgoto(Lvm2/compiler/LexState$Labeldesc;)V
    .registers 5

    .line 1075
    iget-object v0, p0, Lvm2/compiler/LexState;->L:Lvm2/compiler/LuaC$CompileState;

    iget-object v1, p1, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v1}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvm2/compiler/LexState;->isReservedKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvm2/compiler/LexState$Labeldesc;->line:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not inside a loop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    .line 1077
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no visible label \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' for <goto> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvm2/compiler/LexState$Labeldesc;->line:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1075
    :goto_4e
    invoke-virtual {v0, p1}, Lvm2/compiler/LuaC$CompileState;->pushfstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->semerror(Ljava/lang/String;)V

    return-void
.end method

.method public whilestat(I)V
    .registers 7

    .line 1763
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    .line 1766
    new-instance v1, Lvm2/compiler/FuncState$BlockCnt;

    invoke-direct {v1}, Lvm2/compiler/FuncState$BlockCnt;-><init>()V

    .line 1767
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1768
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->getlabel()I

    move-result v2

    .line 1769
    invoke-virtual {p0}, Lvm2/compiler/LexState;->cond()I

    move-result v3

    const/4 v4, 0x1

    .line 1770
    invoke-virtual {v0, v1, v4}, Lvm2/compiler/FuncState;->enterblock(Lvm2/compiler/FuncState$BlockCnt;Z)V

    const/16 v1, 0x103

    .line 1771
    invoke-virtual {p0, v1}, Lvm2/compiler/LexState;->checknext(I)V

    .line 1772
    invoke-virtual {p0}, Lvm2/compiler/LexState;->block()V

    .line 1773
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->jump()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lvm2/compiler/FuncState;->patchlist(II)V

    const/16 v1, 0x106

    const/16 v2, 0x116

    .line 1774
    invoke-virtual {p0, v1, v2, p1}, Lvm2/compiler/LexState;->check_match(III)V

    .line 1775
    invoke-virtual {v0}, Lvm2/compiler/FuncState;->leaveblock()V

    .line 1776
    invoke-virtual {v0, v3}, Lvm2/compiler/FuncState;->patchtohere(I)V

    return-void
.end method

.method public yindex(Lvm2/compiler/LexState$expdesc;)V
    .registers 3

    .line 1150
    invoke-virtual {p0}, Lvm2/compiler/LexState;->next()V

    .line 1151
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->expr(Lvm2/compiler/LexState$expdesc;)V

    .line 1152
    iget-object v0, p0, Lvm2/compiler/LexState;->fs:Lvm2/compiler/FuncState;

    invoke-virtual {v0, p1}, Lvm2/compiler/FuncState;->exp2val(Lvm2/compiler/LexState$expdesc;)V

    const/16 p1, 0x5d

    .line 1153
    invoke-virtual {p0, p1}, Lvm2/compiler/LexState;->checknext(I)V

    return-void
.end method

###### Class vm2.compiler.LexState.AnonymousClass1 (vm2.compiler.LexState$1)
.class synthetic Lvm2/compiler/LexState$1;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.compiler.LexState.ConsControl (vm2.compiler.LexState$ConsControl)
.class Lvm2/compiler/LexState$ConsControl;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsControl"
.end annotation


# instance fields
.field na:I

.field nh:I

.field t:Lvm2/compiler/LexState$expdesc;

.field tostore:I

.field v:Lvm2/compiler/LexState$expdesc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState$ConsControl;->v:Lvm2/compiler/LexState$expdesc;

    return-void
.end method

###### Class vm2.compiler.LexState.Dyndata (vm2.compiler.LexState$Dyndata)
.class Lvm2/compiler/LexState$Dyndata;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dyndata"
.end annotation


# instance fields
.field actvar:[Lvm2/compiler/LexState$Vardesc;

.field gt:[Lvm2/compiler/LexState$Labeldesc;

.field label:[Lvm2/compiler/LexState$Labeldesc;

.field n_actvar:I

.field n_gt:I

.field n_label:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 829
    iput v0, p0, Lvm2/compiler/LexState$Dyndata;->n_actvar:I

    .line 831
    iput v0, p0, Lvm2/compiler/LexState$Dyndata;->n_gt:I

    .line 833
    iput v0, p0, Lvm2/compiler/LexState$Dyndata;->n_label:I

    return-void
.end method

###### Class vm2.compiler.LexState.LHS_assign (vm2.compiler.LexState$LHS_assign)
.class Lvm2/compiler/LexState$LHS_assign;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LHS_assign"
.end annotation


# instance fields
.field prev:Lvm2/compiler/LexState$LHS_assign;

.field v:Lvm2/compiler/LexState$expdesc;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1641
    new-instance v0, Lvm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState$LHS_assign;->v:Lvm2/compiler/LexState$expdesc;

    return-void
.end method

###### Class vm2.compiler.LexState.Labeldesc (vm2.compiler.LexState$Labeldesc)
.class Lvm2/compiler/LexState$Labeldesc;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Labeldesc"
.end annotation


# instance fields
.field line:I

.field nactvar:S

.field name:Lvm2/LuaString;

.field pc:I


# direct methods
.method public constructor <init>(Lvm2/LuaString;IIS)V
    .registers 5

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lvm2/compiler/LexState$Labeldesc;->name:Lvm2/LuaString;

    .line 819
    iput p2, p0, Lvm2/compiler/LexState$Labeldesc;->pc:I

    .line 820
    iput p3, p0, Lvm2/compiler/LexState$Labeldesc;->line:I

    .line 821
    iput-short p4, p0, Lvm2/compiler/LexState$Labeldesc;->nactvar:S

    return-void
.end method

###### Class vm2.compiler.LexState.Priority (vm2.compiler.LexState$Priority)
.class Lvm2/compiler/LexState$Priority;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Priority"
.end annotation


# instance fields
.field final left:B

.field final right:B


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    .line 1550
    iput-byte p1, p0, Lvm2/compiler/LexState$Priority;->left:B

    int-to-byte p1, p2

    .line 1551
    iput-byte p1, p0, Lvm2/compiler/LexState$Priority;->right:B

    return-void
.end method

###### Class vm2.compiler.LexState.SemInfo (vm2.compiler.LexState$SemInfo)
.class Lvm2/compiler/LexState$SemInfo;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemInfo"
.end annotation


# instance fields
.field r:Lvm2/LuaValue;

.field ts:Lvm2/LuaString;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/compiler/LexState$1;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Lvm2/compiler/LexState$SemInfo;-><init>()V

    return-void
.end method

###### Class vm2.compiler.LexState.Token (vm2.compiler.LexState$Token)
.class Lvm2/compiler/LexState$Token;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field final seminfo:Lvm2/compiler/LexState$SemInfo;

.field token:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lvm2/compiler/LexState$SemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvm2/compiler/LexState$SemInfo;-><init>(Lvm2/compiler/LexState$1;)V

    iput-object v0, p0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/compiler/LexState$1;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Lvm2/compiler/LexState$Token;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lvm2/compiler/LexState$Token;)V
    .registers 4

    .line 125
    iget v0, p1, Lvm2/compiler/LexState$Token;->token:I

    iput v0, p0, Lvm2/compiler/LexState$Token;->token:I

    .line 126
    iget-object v0, p0, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object p1, p1, Lvm2/compiler/LexState$Token;->seminfo:Lvm2/compiler/LexState$SemInfo;

    iget-object v1, p1, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;

    iput-object v1, v0, Lvm2/compiler/LexState$SemInfo;->r:Lvm2/LuaValue;

    .line 127
    iget-object p1, p1, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    iput-object p1, v0, Lvm2/compiler/LexState$SemInfo;->ts:Lvm2/LuaString;

    return-void
.end method

###### Class vm2.compiler.LexState.Vardesc (vm2.compiler.LexState$Vardesc)
.class Lvm2/compiler/LexState$Vardesc;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vardesc"
.end annotation


# instance fields
.field final idx:S


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short p1, p1

    .line 806
    iput-short p1, p0, Lvm2/compiler/LexState$Vardesc;->idx:S

    return-void
.end method

###### Class vm2.compiler.LexState.expdesc (vm2.compiler.LexState$expdesc)
.class Lvm2/compiler/LexState$expdesc;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "expdesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/compiler/LexState$expdesc$U;
    }
.end annotation


# instance fields
.field final f:Lvm2/compiler/IntPtr;

.field k:I

.field final t:Lvm2/compiler/IntPtr;

.field final u:Lvm2/compiler/LexState$expdesc$U;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    new-instance v0, Lvm2/compiler/LexState$expdesc$U;

    invoke-direct {v0}, Lvm2/compiler/LexState$expdesc$U;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    .line 772
    new-instance v0, Lvm2/compiler/IntPtr;

    invoke-direct {v0}, Lvm2/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    .line 773
    new-instance v0, Lvm2/compiler/IntPtr;

    invoke-direct {v0}, Lvm2/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    return-void
.end method


# virtual methods
.method public hasjumps()Z
    .registers 3

    .line 782
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    iget-object v1, p0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v1, v1, Lvm2/compiler/IntPtr;->i:I

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public init(II)V
    .registers 5

    .line 775
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    const/4 v1, -0x1

    iput v1, v0, Lvm2/compiler/IntPtr;->i:I

    .line 776
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iput v1, v0, Lvm2/compiler/IntPtr;->i:I

    .line 777
    iput p1, p0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 778
    iget-object p1, p0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iput p2, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    return-void
.end method

.method public isnumeral()Z
    .registers 3

    .line 786
    iget v0, p0, Lvm2/compiler/LexState$expdesc;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v0, v0, Lvm2/compiler/IntPtr;->i:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public setvalue(Lvm2/compiler/LexState$expdesc;)V
    .registers 4

    .line 790
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->f:Lvm2/compiler/IntPtr;

    iget v1, v1, Lvm2/compiler/IntPtr;->i:I

    iput v1, v0, Lvm2/compiler/IntPtr;->i:I

    .line 791
    iget v0, p1, Lvm2/compiler/LexState$expdesc;->k:I

    iput v0, p0, Lvm2/compiler/LexState$expdesc;->k:I

    .line 792
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->t:Lvm2/compiler/IntPtr;

    iget v1, v1, Lvm2/compiler/IntPtr;->i:I

    iput v1, v0, Lvm2/compiler/IntPtr;->i:I

    .line 793
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    invoke-static {v1}, Lvm2/compiler/LexState$expdesc$U;->access$200(Lvm2/compiler/LexState$expdesc$U;)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lvm2/compiler/LexState$expdesc$U;->access$202(Lvm2/compiler/LexState$expdesc$U;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 794
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-object p1, p1, Lvm2/compiler/LexState$expdesc;->u:Lvm2/compiler/LexState$expdesc$U;

    iget-short v1, p1, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    iput-short v1, v0, Lvm2/compiler/LexState$expdesc$U;->ind_idx:S

    .line 795
    iget-short v1, p1, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    iput-short v1, v0, Lvm2/compiler/LexState$expdesc$U;->ind_t:S

    .line 796
    iget-short v1, p1, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    iput-short v1, v0, Lvm2/compiler/LexState$expdesc$U;->ind_vt:S

    .line 797
    iget p1, p1, Lvm2/compiler/LexState$expdesc$U;->info:I

    iput p1, v0, Lvm2/compiler/LexState$expdesc$U;->info:I

    return-void
.end method

###### Class vm2.compiler.LexState.expdesc.U (vm2.compiler.LexState$expdesc$U)
.class Lvm2/compiler/LexState$expdesc$U;
.super Ljava/lang/Object;
.source "LexState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/compiler/LexState$expdesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U"
.end annotation


# instance fields
.field private _nval:Lvm2/LuaValue;

.field ind_idx:S

.field ind_t:S

.field ind_vt:S

.field info:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lvm2/compiler/LexState$expdesc$U;)Lvm2/LuaValue;
    .registers 1

    .line 758
    iget-object p0, p0, Lvm2/compiler/LexState$expdesc$U;->_nval:Lvm2/LuaValue;

    return-object p0
.end method

.method public static synthetic access$202(Lvm2/compiler/LexState$expdesc$U;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 758
    iput-object p1, p0, Lvm2/compiler/LexState$expdesc$U;->_nval:Lvm2/LuaValue;

    return-object p1
.end method


# virtual methods
.method public nval()Lvm2/LuaValue;
    .registers 2

    .line 768
    iget-object v0, p0, Lvm2/compiler/LexState$expdesc$U;->_nval:Lvm2/LuaValue;

    if-nez v0, :cond_a

    iget v0, p0, Lvm2/compiler/LexState$expdesc$U;->info:I

    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public setNval(Lvm2/LuaValue;)V
    .registers 2

    .line 765
    iput-object p1, p0, Lvm2/compiler/LexState$expdesc$U;->_nval:Lvm2/LuaValue;

    return-void
.end method
