###### Class vm2.Print (vm2.Print)
.class public Lvm2/Print;
.super Lvm2/Lua;
.source "Print.java"


# static fields
.field public static final OPNAMES:[Ljava/lang/String;

.field private static final STRING_FOR_NULL:Ljava/lang/String; = "null"

.field public static ps:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .registers 42

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    .line 39
    const-string v40, "EXTRAARG"

    const/16 v41, 0x0

    const-string v1, "MOVE"

    const-string v2, "LOADK"

    const-string v3, "LOADKX"

    const-string v4, "LOADBOOL"

    const-string v5, "LOADNIL"

    const-string v6, "GETUPVAL"

    const-string v7, "GETTABUP"

    const-string v8, "GETTABLE"

    const-string v9, "SETTABUP"

    const-string v10, "SETUPVAL"

    const-string v11, "SETTABLE"

    const-string v12, "NEWTABLE"

    const-string v13, "SELF"

    const-string v14, "ADD"

    const-string v15, "SUB"

    const-string v16, "MUL"

    const-string v17, "DIV"

    const-string v18, "MOD"

    const-string v19, "POW"

    const-string v20, "UNM"

    const-string v21, "NOT"

    const-string v22, "LEN"

    const-string v23, "CONCAT"

    const-string v24, "JMP"

    const-string v25, "EQ"

    const-string v26, "LT"

    const-string v27, "LE"

    const-string v28, "TEST"

    const-string v29, "TESTSET"

    const-string v30, "CALL"

    const-string v31, "TAILCALL"

    const-string v32, "RETURN"

    const-string v33, "FORLOOP"

    const-string v34, "FORPREP"

    const-string v35, "TFORCALL"

    const-string v36, "TFORLOOP"

    const-string v37, "SETLIST"

    const-string v38, "CLOSURE"

    const-string v39, "VARARG"

    filled-new-array/range {v1 .. v41}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/Print;->OPNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lvm2/Lua;-><init>()V

    return-void
.end method

.method private _assert(Z)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 414
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "_assert failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static format(Ljava/lang/String;I)V
    .registers 4

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 401
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 403
    :cond_11
    sget-object v1, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sub-int/2addr p1, v0

    :goto_17
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_23

    .line 405
    sget-object p0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    goto :goto_17

    :cond_23
    return-void
.end method

.method private static getline(Lvm2/Prototype;I)I
    .registers 3

    if-lez p1, :cond_c

    .line 325
    iget-object p0, p0, Lvm2/Prototype;->lineinfo:[I

    if-eqz p0, :cond_c

    array-length v0, p0

    if-ge p1, v0, :cond_c

    aget p0, p0, p1

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method private static id(Lvm2/Prototype;)Ljava/lang/String;
    .registers 1

    .line 410
    const-string p0, "Proto"

    return-object p0
.end method

.method public static print(Lvm2/Prototype;)V
    .registers 2

    const/4 v0, 0x1

    .line 377
    invoke-static {p0, v0}, Lvm2/Print;->printFunction(Lvm2/Prototype;Z)V

    return-void
.end method

.method public static printCode(Lvm2/Prototype;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lvm2/Prototype;->code:[I

    .line 157
    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    .line 159
    invoke-static {p0, v1}, Lvm2/Print;->printOpCode(Lvm2/Prototype;I)I

    move-result v1

    .line 160
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public static printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V
    .registers 4

    .line 143
    iget-object p1, p1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    array-length v0, p1

    if-ge p2, v0, :cond_8

    aget-object p1, p1, p2

    goto :goto_1d

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_CONST_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    :goto_1d
    invoke-static {p0, p1}, Lvm2/Print;->printValue(Ljava/io/PrintStream;Lvm2/LuaValue;)V

    return-void
.end method

.method public static printConstants(Lvm2/Prototype;)V
    .registers 7

    .line 347
    iget-object v0, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    array-length v0, v0

    .line 348
    sget-object v1, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constants ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lvm2/Print;->id(Lvm2/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_5a

    .line 350
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 351
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    iget-object v3, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lvm2/Print;->printValue(Ljava/io/PrintStream;Lvm2/LuaValue;)V

    .line 352
    sget-object v1, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v5

    goto :goto_2b

    :cond_5a
    return-void
.end method

.method public static printFunction(Lvm2/Prototype;Z)V
    .registers 5

    .line 386
    iget-object v0, p0, Lvm2/Prototype;->p:[Lvm2/Prototype;

    array-length v0, v0

    .line 387
    invoke-static {p0}, Lvm2/Print;->printHeader(Lvm2/Prototype;)V

    .line 388
    invoke-static {p0}, Lvm2/Print;->printCode(Lvm2/Prototype;)V

    if-eqz p1, :cond_14

    .line 390
    invoke-static {p0}, Lvm2/Print;->printConstants(Lvm2/Prototype;)V

    .line 391
    invoke-static {p0}, Lvm2/Print;->printLocals(Lvm2/Prototype;)V

    .line 392
    invoke-static {p0}, Lvm2/Print;->printUpValues(Lvm2/Prototype;)V

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_21

    .line 395
    iget-object v2, p0, Lvm2/Prototype;->p:[Lvm2/Prototype;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lvm2/Print;->printFunction(Lvm2/Prototype;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_21
    return-void
.end method

.method public static printHeader(Lvm2/Prototype;)V
    .registers 6

    .line 329
    iget-object v0, p0, Lvm2/Prototype;->source:Lvm2/LuaString;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_25

    .line 332
    :cond_17
    const-string v1, "\u001bLua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 333
    const-string v0, "(bstring)"

    goto :goto_2a

    .line 335
    :cond_22
    const-string v0, "(string)"

    goto :goto_2a

    :cond_25
    :goto_25
    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_2a
    iget v1, p0, Lvm2/Prototype;->linedefined:I

    if-nez v1, :cond_31

    const-string v1, "main"

    goto :goto_33

    :cond_31
    const-string v1, "function"

    .line 337
    :goto_33
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lvm2/Prototype;->linedefined:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lvm2/Prototype;->lastlinedefined:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "> ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvm2/Prototype;->code:[I

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instructions, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvm2/Prototype;->code:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {p0}, Lvm2/Print;->id(Lvm2/Prototype;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lvm2/Prototype;->numparams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " param, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvm2/Prototype;->maxstacksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slot, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " upvalue, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 342
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " local, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " constant, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lvm2/Prototype;->p:[Lvm2/Prototype;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " function\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static printLocals(Lvm2/Prototype;)V
    .registers 7

    .line 357
    iget-object v0, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    array-length v0, v0

    .line 358
    sget-object v1, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locals ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lvm2/Print;->id(Lvm2/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_70

    .line 360
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    aget-object v4, v4, v1

    iget-object v4, v4, Lvm2/LocVars;->varname:Lvm2/LuaString;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    aget-object v5, v5, v1

    iget v5, v5, Lvm2/LocVars;->startpc:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    aget-object v4, v4, v1

    iget v4, v4, Lvm2/LocVars;->endpc:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_70
    return-void
.end method

.method public static printOpCode(Ljava/io/PrintStream;Lvm2/Prototype;I)I
    .registers 16

    .line 182
    iget-object v0, p1, Lvm2/Prototype;->code:[I

    .line 183
    aget v1, v0, p2

    .line 184
    invoke-static {v1}, Lvm2/Lua;->GET_OPCODE(I)I

    move-result v2

    .line 185
    invoke-static {v1}, Lvm2/Lua;->GETARG_A(I)I

    move-result v3

    .line 186
    invoke-static {v1}, Lvm2/Lua;->GETARG_B(I)I

    move-result v4

    .line 187
    invoke-static {v1}, Lvm2/Lua;->GETARG_C(I)I

    move-result v5

    .line 188
    invoke-static {v1}, Lvm2/Lua;->GETARG_Bx(I)I

    move-result v6

    .line 189
    invoke-static {v1}, Lvm2/Lua;->GETARG_sBx(I)I

    move-result v1

    .line 190
    invoke-static {p1, p2}, Lvm2/Print;->getline(Lvm2/Prototype;I)I

    move-result v7

    .line 191
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-lez v7, :cond_55

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]  "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 195
    :cond_55
    const-string v7, "[-]  "

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 196
    :goto_5a
    sget-object v7, Lvm2/Print;->OPNAMES:[Ljava/lang/String;

    array-length v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    if-lt v2, v8, :cond_79

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_OP_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 199
    :cond_79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v7, v2

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 200
    invoke-static {v2}, Lvm2/Lua;->getOpMode(I)I

    move-result v7

    const/4 v8, 0x2

    const-string v9, " "

    if-eqz v7, :cond_f1

    if-eq v7, v11, :cond_bc

    if-eq v7, v8, :cond_9c

    goto/16 :goto_140

    :cond_9c
    const/16 v7, 0x18

    if-ne v2, v7, :cond_a5

    .line 217
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_140

    .line 219
    :cond_a5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_140

    .line 209
    :cond_bc
    invoke-static {v2}, Lvm2/Lua;->getBMode(I)I

    move-result v7

    const/4 v11, 0x3

    if-ne v7, v11, :cond_db

    .line 210
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v11, v6, -0x1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_140

    .line 212
    :cond_db
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_140

    .line 202
    :cond_f1
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(I)V

    .line 203
    invoke-static {v2}, Lvm2/Lua;->getBMode(I)I

    move-result v7

    if-eqz v7, :cond_11a

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lvm2/Lua;->ISK(I)Z

    move-result v11

    if-eqz v11, :cond_10f

    invoke-static {v4}, Lvm2/Lua;->INDEXK(I)I

    move-result v11

    rsub-int/lit8 v11, v11, -0x1

    goto :goto_110

    :cond_10f
    move v11, v4

    :goto_110
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 205
    :cond_11a
    invoke-static {v2}, Lvm2/Lua;->getCMode(I)I

    move-result v7

    if-eqz v7, :cond_140

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v11

    if-eqz v11, :cond_135

    invoke-static {v5}, Lvm2/Lua;->INDEXK(I)I

    move-result v11

    rsub-int/lit8 v11, v11, -0x1

    goto :goto_136

    :cond_135
    move v11, v5

    :goto_136
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 222
    :cond_140
    :goto_140
    const-string v7, "  ; "

    if-eqz v2, :cond_2e1

    const/16 v11, 0xc

    if-eq v2, v11, :cond_2d0

    const/16 v11, 0x13

    const-string v12, "-"

    if-eq v2, v11, :cond_29b

    const/16 v11, 0x20

    if-eq v2, v11, :cond_284

    const/16 v11, 0x21

    if-eq v2, v11, :cond_284

    const-string v11, "UNKNOWN_UPVALUE_"

    packed-switch v2, :pswitch_data_2e8

    packed-switch v2, :pswitch_data_2f8

    packed-switch v2, :pswitch_data_304

    packed-switch v2, :pswitch_data_310

    goto/16 :goto_2e0

    .line 315
    :pswitch_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ; is_vararg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvm2/Prototype;->is_vararg:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 302
    :pswitch_17d
    iget-object v0, p1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    array-length v0, v0

    if-ge v6, v0, :cond_1a1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 305
    :cond_1a1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ; UNKNOWN_PROTYPE_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    :pswitch_1b6
    if-nez v5, :cond_1d2

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v10

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (stored in the next OP)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return v10

    .line 312
    :cond_1d2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 250
    :pswitch_1e5
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    iget-object v0, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v1, v0

    if-ge v3, v1, :cond_1f3

    .line 252
    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lvm2/Print;->printUpvalue(Ljava/io/PrintStream;Lvm2/Upvaldesc;)V

    goto :goto_205

    .line 254
    :cond_1f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    :goto_205
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 257
    invoke-static {v4}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 258
    invoke-static {v4}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    goto :goto_219

    .line 260
    :cond_216
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 261
    :goto_219
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 262
    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 263
    invoke-static {v5}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    return p2

    .line 265
    :cond_22a
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 237
    :pswitch_22e
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    iget-object v0, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v1, v0

    if-ge v4, v1, :cond_23c

    .line 239
    aget-object v0, v0, v4

    invoke-static {p0, v0}, Lvm2/Print;->printUpvalue(Ljava/io/PrintStream;Lvm2/Upvaldesc;)V

    goto :goto_24e

    .line 241
    :cond_23c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 243
    :goto_24e
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 244
    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_25f

    .line 245
    invoke-static {v5}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    return p2

    .line 247
    :cond_25f
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 229
    :pswitch_263
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 230
    iget-object p1, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v0, p1

    if-ge v4, v0, :cond_271

    .line 231
    aget-object p1, p1, v4

    invoke-static {p0, p1}, Lvm2/Print;->printUpvalue(Ljava/io/PrintStream;Lvm2/Upvaldesc;)V

    return p2

    .line 233
    :cond_271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 299
    :cond_284
    :pswitch_284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ; to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, p2

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 283
    :cond_29b
    :pswitch_29b
    invoke-static {v4}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-nez v0, :cond_2a7

    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 284
    :cond_2a7
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    invoke-static {v4}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 286
    invoke-static {v4}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    goto :goto_2bb

    .line 288
    :cond_2b8
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 289
    :goto_2bb
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 290
    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 291
    invoke-static {v5}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    return p2

    .line 293
    :cond_2cc
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p2

    .line 269
    :cond_2d0
    :pswitch_2d0
    invoke-static {v5}, Lvm2/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 270
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 271
    invoke-static {v5}, Lvm2/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    :cond_2e0
    :goto_2e0
    return p2

    .line 224
    :cond_2e1
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 225
    invoke-static {p0, p1, v6}, Lvm2/Print;->printConstant(Ljava/io/PrintStream;Lvm2/Prototype;I)V

    return p2

    :pswitch_data_2e8
    .packed-switch 0x5
        :pswitch_263
        :pswitch_22e
        :pswitch_2d0
        :pswitch_1e5
        :pswitch_263
        :pswitch_29b
    .end packed-switch

    :pswitch_data_2f8
    .packed-switch 0xe
        :pswitch_29b
        :pswitch_29b
        :pswitch_29b
        :pswitch_29b
    .end packed-switch

    :pswitch_data_304
    .packed-switch 0x17
        :pswitch_29b
        :pswitch_284
        :pswitch_29b
        :pswitch_29b
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x24
        :pswitch_1b6
        :pswitch_17d
        :pswitch_166
    .end packed-switch
.end method

.method public static printOpCode(Lvm2/Prototype;I)I
    .registers 3

    .line 171
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lvm2/Print;->printOpCode(Ljava/io/PrintStream;Lvm2/Prototype;I)I

    move-result p0

    return p0
.end method

.method public static printStack([Lvm2/LuaValue;ILvm2/Varargs;)V
    .registers 10

    .line 441
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    const/4 v0, 0x0

    move v1, v0

    .line 442
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_d4

    .line 443
    aget-object v2, p0, v1

    if-nez v2, :cond_19

    .line 445
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 446
    :cond_19
    invoke-virtual {v2}, Lvm2/LuaValue;->type()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_82

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3c

    const/4 v4, 0x7

    if-eq v3, v4, :cond_31

    .line 467
    sget-object v3, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 454
    :cond_31
    sget-object v3, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_c0

    .line 457
    :cond_3c
    invoke-virtual {v2}, Lvm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 459
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    .line 460
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 461
    sget-object v4, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_c0

    .line 463
    :cond_78
    sget-object v3, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lvm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_c0

    .line 448
    :cond_82
    invoke-virtual {v2}, Lvm2/LuaValue;->checkstring()Lvm2/LuaString;

    move-result-object v2

    .line 449
    sget-object v3, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v4

    const/16 v5, 0x30

    if-ge v4, v5, :cond_95

    .line 450
    invoke-virtual {v2}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    goto :goto_bd

    .line 451
    :cond_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v2, v0, v5}, Lvm2/LuaString;->substring(II)Lvm2/LuaString;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "...+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lvm2/LuaString;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "b"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :goto_bd
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_c0
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_cb

    .line 470
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 471
    :cond_cb
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 473
    :cond_d4
    sget-object p0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static printState(Lvm2/LuaClosure;I[Lvm2/LuaValue;ILvm2/Varargs;)V
    .registers 8

    .line 427
    sget-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    .line 428
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    .line 430
    iget-object p0, p0, Lvm2/LuaClosure;->p:Lvm2/Prototype;

    invoke-static {p0, p1}, Lvm2/Print;->printOpCode(Lvm2/Prototype;I)I

    .line 431
    sget-object p0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    .line 432
    sget-object p0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    .line 433
    sput-object v0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    .line 434
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lvm2/Print;->format(Ljava/lang/String;I)V

    .line 435
    invoke-static {p2, p3, p4}, Lvm2/Print;->printStack([Lvm2/LuaValue;ILvm2/Varargs;)V

    .line 436
    sget-object p0, Lvm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static printString(Ljava/io/PrintStream;Lvm2/LuaString;)V
    .registers 8

    const/16 v0, 0x22

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    .line 87
    iget v1, p1, Lvm2/LuaString;->m_length:I

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_75

    .line 88
    iget-object v3, p1, Lvm2/LuaString;->m_bytes:[B

    iget v4, p1, Lvm2/LuaString;->m_offset:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v3, v4, :cond_24

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_24

    if-eq v3, v0, :cond_24

    if-eq v3, v5, :cond_24

    int-to-char v3, v3

    .line 90
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(C)V

    goto :goto_72

    :cond_24
    if-eq v3, v0, :cond_6d

    if-eq v3, v5, :cond_67

    packed-switch v3, :pswitch_data_7a

    .line 121
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(C)V

    and-int/lit16 v3, v3, 0x4e7

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 112
    :pswitch_3d
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 106
    :pswitch_43
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 118
    :pswitch_49
    const-string v3, "\\v"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 115
    :pswitch_4f
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 109
    :pswitch_55
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 103
    :pswitch_5b
    const-string v3, "\\b"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 100
    :pswitch_61
    const-string v3, "\\a"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 97
    :cond_67
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_72

    .line 94
    :cond_6d
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 127
    :cond_75
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    return-void

    nop

    :pswitch_data_7a
    .packed-switch 0x7
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method public static printUpValues(Lvm2/Prototype;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v0, v0

    .line 366
    sget-object v1, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upvalues ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lvm2/Print;->id(Lvm2/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_55

    .line 368
    sget-object v2, Lvm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_55
    return-void
.end method

.method public static printUpvalue(Ljava/io/PrintStream;Lvm2/Upvaldesc;)V
    .registers 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p1, Lvm2/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    iget-object p1, p1, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    invoke-static {p0, p1}, Lvm2/Print;->printValue(Ljava/io/PrintStream;Lvm2/LuaValue;)V

    return-void
.end method

.method public static printValue(Ljava/io/PrintStream;Lvm2/LuaValue;)V
    .registers 4

    if-nez p1, :cond_8

    .line 132
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_8
    invoke-virtual {p1}, Lvm2/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    .line 137
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_17
    check-cast p1, Lvm2/LuaString;

    invoke-static {p0, p1}, Lvm2/Print;->printString(Ljava/io/PrintStream;Lvm2/LuaString;)V

    return-void
.end method
