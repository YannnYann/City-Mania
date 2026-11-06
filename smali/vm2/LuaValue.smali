###### Class vm2.LuaValue (vm2.LuaValue)
.class public abstract Lvm2/LuaValue;
.super Lvm2/Varargs;
.source "LuaValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/LuaValue$None;
    }
.end annotation


# static fields
.field public static final ADD:Lvm2/LuaString;

.field public static final CALL:Lvm2/LuaString;

.field public static final CONCAT:Lvm2/LuaString;

.field public static final DIV:Lvm2/LuaString;

.field public static final EMPTYSTRING:Lvm2/LuaString;

.field public static ENV:Lvm2/LuaString; = null

.field public static final EQ:Lvm2/LuaString;

.field public static final FALSE:Lvm2/LuaBoolean;

.field public static final INDEX:Lvm2/LuaString;

.field public static final LE:Lvm2/LuaString;

.field public static final LEN:Lvm2/LuaString;

.field public static final LT:Lvm2/LuaString;

.field private static MAXSTACK:I = 0x0

.field private static final MAXTAGLOOP:I = 0x64

.field public static final METATABLE:Lvm2/LuaString;

.field public static final MINUSONE:Lvm2/LuaNumber;

.field public static final MOD:Lvm2/LuaString;

.field public static final MODE:Lvm2/LuaString;

.field public static final MUL:Lvm2/LuaString;

.field public static final NEWINDEX:Lvm2/LuaString;

.field public static final NIL:Lvm2/LuaValue;

.field public static final NILS:[Lvm2/LuaValue;

.field public static final NONE:Lvm2/LuaValue;

.field public static final NOVALS:[Lvm2/LuaValue;

.field public static final ONE:Lvm2/LuaNumber;

.field public static final POW:Lvm2/LuaString;

.field public static final SUB:Lvm2/LuaString;

.field public static final TBOOLEAN:I = 0x2

.field public static final TFUNCTION:I = 0x7

.field public static final TINT:I = -0x2

.field public static final TLIGHTUSERDATA:I = 0x0

.field public static final TNIL:I = 0x1

.field public static final TNONE:I = -0x1

.field public static final TNUMBER:I = 0x4

.field public static final TOSTRING:Lvm2/LuaString;

.field public static final TRUE:Lvm2/LuaBoolean;

.field public static final TSTRING:I = 0x5

.field public static final TTABLE:I = 0x3

.field public static final TTHREAD:I = 0x9

.field public static final TUSERDATA:I = 0x6

.field public static final TVALUE:I = 0x8

.field public static final TYPE_NAMES:[Ljava/lang/String;

.field public static final UNM:Lvm2/LuaString;

.field public static final ZERO:Lvm2/LuaNumber;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 154
    const-string v8, "value"

    const-string v9, "thread"

    const-string v0, "lightuserdata"

    const-string v1, "nil"

    const-string v2, "boolean"

    const-string v3, "table"

    const-string v4, "number"

    const-string v5, "string"

    const-string v6, "userdata"

    const-string v7, "function"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/LuaValue;->TYPE_NAMES:[Ljava/lang/String;

    .line 168
    sget-object v0, Lvm2/LuaNil;->_NIL:Lvm2/LuaNil;

    sput-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 171
    sget-object v0, Lvm2/LuaBoolean;->_TRUE:Lvm2/LuaBoolean;

    sput-object v0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    .line 174
    sget-object v0, Lvm2/LuaBoolean;->_FALSE:Lvm2/LuaBoolean;

    sput-object v0, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    .line 177
    sget-object v0, Lvm2/LuaValue$None;->_NONE:Lvm2/LuaValue$None;

    sput-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    const/4 v0, 0x0

    .line 180
    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    const/4 v1, 0x1

    .line 183
    invoke-static {v1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->ONE:Lvm2/LuaNumber;

    const/4 v1, -0x1

    .line 186
    invoke-static {v1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->MINUSONE:Lvm2/LuaNumber;

    .line 189
    new-array v1, v0, [Lvm2/LuaValue;

    sput-object v1, Lvm2/LuaValue;->NOVALS:[Lvm2/LuaValue;

    .line 192
    const-string v1, "_ENV"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->ENV:Lvm2/LuaString;

    .line 195
    const-string v1, "__index"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->INDEX:Lvm2/LuaString;

    .line 198
    const-string v1, "__newindex"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->NEWINDEX:Lvm2/LuaString;

    .line 201
    const-string v1, "__call"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->CALL:Lvm2/LuaString;

    .line 204
    const-string v1, "__mode"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->MODE:Lvm2/LuaString;

    .line 207
    const-string v1, "__metatable"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->METATABLE:Lvm2/LuaString;

    .line 210
    const-string v1, "__add"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->ADD:Lvm2/LuaString;

    .line 213
    const-string v1, "__sub"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->SUB:Lvm2/LuaString;

    .line 216
    const-string v1, "__div"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->DIV:Lvm2/LuaString;

    .line 219
    const-string v1, "__mul"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->MUL:Lvm2/LuaString;

    .line 222
    const-string v1, "__pow"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->POW:Lvm2/LuaString;

    .line 225
    const-string v1, "__mod"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->MOD:Lvm2/LuaString;

    .line 228
    const-string v1, "__unm"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->UNM:Lvm2/LuaString;

    .line 231
    const-string v1, "__len"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->LEN:Lvm2/LuaString;

    .line 234
    const-string v1, "__eq"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->EQ:Lvm2/LuaString;

    .line 237
    const-string v1, "__lt"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    .line 240
    const-string v1, "__le"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    .line 243
    const-string v1, "__tostring"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->TOSTRING:Lvm2/LuaString;

    .line 246
    const-string v1, "__concat"

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->CONCAT:Lvm2/LuaString;

    .line 249
    const-string v1, ""

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    sput-object v1, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    const/16 v1, 0xfa

    .line 252
    sput v1, Lvm2/LuaValue;->MAXSTACK:I

    .line 257
    new-array v1, v1, [Lvm2/LuaValue;

    sput-object v1, Lvm2/LuaValue;->NILS:[Lvm2/LuaValue;

    .line 259
    :goto_eb
    sget v1, Lvm2/LuaValue;->MAXSTACK:I

    if-ge v0, v1, :cond_f8

    .line 260
    sget-object v1, Lvm2/LuaValue;->NILS:[Lvm2/LuaValue;

    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    :cond_f8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lvm2/Varargs;-><init>()V

    return-void
.end method

.method public static argerror(ILjava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 1066
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assert_(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 1051
    :cond_3
    new-instance p0, Lvm2/LuaError;

    invoke-direct {p0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final eqmtcall(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z
    .registers 6

    .line 2156
    sget-object v0, Lvm2/LuaValue;->EQ:Lvm2/LuaString;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 2157
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p3, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p3

    if-eq p1, p3, :cond_13

    goto :goto_1c

    :cond_13
    invoke-virtual {p1, p0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p0

    invoke-virtual {p0}, Lvm2/LuaValue;->toboolean()Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static error(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 2

    .line 1041
    new-instance v0, Lvm2/LuaError;

    invoke-direct {v0, p0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static gettable(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    const/4 v0, 0x0

    .line 3296
    :goto_1
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3297
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    .line 3298
    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lvm2/LuaValue;->INDEX:Lvm2/LuaString;

    invoke-virtual {p0, v2}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_20

    :cond_1e
    move-object v1, v2

    goto :goto_34

    :cond_20
    :goto_20
    return-object v1

    .line 3300
    :cond_21
    sget-object v1, Lvm2/LuaValue;->INDEX:Lvm2/LuaString;

    invoke-virtual {p0, v1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3301
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lvm2/LuaValue;->indexerror(Ljava/lang/String;)V

    .line 3302
    :cond_34
    :goto_34
    invoke-virtual {v1}, Lvm2/LuaValue;->isfunction()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 3303
    invoke-virtual {v1, p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    const/16 p0, 0x64

    if-lt v0, p0, :cond_4d

    .line 3307
    const-string p0, "loop in gettable"

    invoke-static {p0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 3308
    sget-object p0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p0

    :cond_4d
    move-object p0, v1

    goto :goto_1
.end method

.method private indexerror(Ljava/lang/String;)V
    .registers 4

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to index ? (a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value) with key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return-void
.end method

.method public static listOf([Lvm2/LuaValue;)Lvm2/LuaTable;
    .registers 3

    .line 3225
    new-instance v0, Lvm2/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lvm2/LuaTable;-><init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static listOf([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/LuaTable;
    .registers 4

    .line 3233
    new-instance v0, Lvm2/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lvm2/LuaTable;-><init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static metatableOf(Lvm2/LuaValue;)Lvm2/Metatable;
    .registers 6

    if-eqz p0, :cond_3b

    .line 3371
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3372
    sget-object v0, Lvm2/LuaValue;->MODE:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 3373
    invoke-virtual {v0}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3374
    invoke-virtual {v0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6b

    .line 3375
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_24

    move v1, v3

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    const/16 v4, 0x76

    .line 3376
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2e

    move v2, v3

    :cond_2e
    if-nez v1, :cond_32

    if-eqz v2, :cond_38

    .line 3378
    :cond_32
    new-instance v0, Lvm2/WeakTable;

    invoke-direct {v0, v1, v2, p0}, Lvm2/WeakTable;-><init>(ZZLvm2/LuaValue;)V

    return-object v0

    .line 3381
    :cond_38
    check-cast p0, Lvm2/LuaTable;

    return-object p0

    :cond_3b
    if-eqz p0, :cond_43

    .line 3383
    new-instance v0, Lvm2/NonTableMetatable;

    invoke-direct {v0, p0}, Lvm2/NonTableMetatable;-><init>(Lvm2/LuaValue;)V

    return-object v0

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method

.method public static settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 3323
    :goto_2
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    .line 3324
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lvm2/LuaValue;->NEWINDEX:Lvm2/LuaString;

    invoke-virtual {p0, v2}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3325
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return v3

    .line 3328
    :cond_23
    sget-object v2, Lvm2/LuaValue;->NEWINDEX:Lvm2/LuaString;

    invoke-virtual {p0, v2}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v4

    if-nez v4, :cond_46

    .line 3330
    :cond_2f
    invoke-virtual {v2}, Lvm2/LuaValue;->isfunction()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3331
    invoke-virtual {v2, p0, p1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    return v3

    :cond_39
    add-int/2addr v1, v3

    const/16 p0, 0x64

    if-lt v1, p0, :cond_44

    .line 3337
    const-string p0, "loop in settable"

    invoke-static {p0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    return v0

    :cond_44
    move-object p0, v2

    goto :goto_2

    .line 3329
    :cond_46
    new-instance p2, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "table expected for set index (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\') value, got "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static tableOf()Lvm2/LuaTable;
    .registers 1

    .line 3205
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0}, Lvm2/LuaTable;-><init>()V

    return-object v0
.end method

.method public static tableOf(II)Lvm2/LuaTable;
    .registers 3

    .line 3219
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable;-><init>(II)V

    return-object v0
.end method

.method public static tableOf(Lvm2/Varargs;I)Lvm2/LuaTable;
    .registers 3

    .line 3212
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0, p0, p1}, Lvm2/LuaTable;-><init>(Lvm2/Varargs;I)V

    return-object v0
.end method

.method public static tableOf([Lvm2/LuaValue;)Lvm2/LuaTable;
    .registers 3

    .line 3240
    new-instance v0, Lvm2/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lvm2/LuaTable;-><init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static tableOf([Lvm2/LuaValue;[Lvm2/LuaValue;)Lvm2/LuaTable;
    .registers 4

    .line 3251
    new-instance v0, Lvm2/LuaTable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lvm2/LuaTable;-><init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static tableOf([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/LuaTable;
    .registers 4

    .line 3264
    new-instance v0, Lvm2/LuaTable;

    invoke-direct {v0, p0, p1, p2}, Lvm2/LuaTable;-><init>([Lvm2/LuaValue;[Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static tailcallOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 3529
    new-instance v0, Lvm2/TailcallVarargs;

    invoke-direct {v0, p0, p1}, Lvm2/TailcallVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0
.end method

.method public static userdataOf(Ljava/lang/Object;)Lvm2/LuaUserdata;
    .registers 2

    .line 3271
    new-instance v0, Lvm2/LuaUserdata;

    invoke-direct {v0, p0}, Lvm2/LuaUserdata;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static userdataOf(Ljava/lang/Object;Lvm2/LuaValue;)Lvm2/LuaUserdata;
    .registers 3

    .line 3279
    new-instance v0, Lvm2/LuaUserdata;

    invoke-direct {v0, p0, p1}, Lvm2/LuaUserdata;-><init>(Ljava/lang/Object;Lvm2/LuaValue;)V

    return-object v0
.end method

.method public static valueOf(Z)Lvm2/LuaBoolean;
    .registers 1

    if-eqz p0, :cond_5

    .line 3159
    sget-object p0, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p0

    :cond_5
    sget-object p0, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p0
.end method

.method public static valueOf(I)Lvm2/LuaInteger;
    .registers 1

    .line 3166
    invoke-static {p0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(D)Lvm2/LuaNumber;
    .registers 2

    .line 3175
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lvm2/LuaString;
    .registers 1

    .line 3182
    invoke-static {p0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([B)Lvm2/LuaString;
    .registers 1

    .line 3189
    invoke-static {p0}, Lvm2/LuaString;->valueOf([B)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf([BII)Lvm2/LuaString;
    .registers 3

    .line 3199
    invoke-static {p0, p1, p2}, Lvm2/LuaString;->valueOf([BII)Lvm2/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 3506
    invoke-virtual {p2}, Lvm2/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_12

    .line 3508
    new-instance v0, Lvm2/Varargs$ArrayPartVarargs;

    filled-new-array {p0, p1}, [Lvm2/LuaValue;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1, p2}, Lvm2/Varargs$ArrayPartVarargs;-><init>([Lvm2/LuaValue;IILvm2/Varargs;)V

    return-object v0

    .line 3507
    :cond_12
    new-instance p2, Lvm2/Varargs$PairVarargs;

    invoke-direct {p2, p0, p1}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object p2
.end method

.method public static varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 3488
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_c

    .line 3490
    new-instance v0, Lvm2/Varargs$PairVarargs;

    invoke-direct {v0, p0, p1}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public static varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 5

    .line 3404
    array-length v0, p0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    .line 3408
    new-instance v0, Lvm2/Varargs$ArrayVarargs;

    sget-object v1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-direct {v0, p0, v1}, Lvm2/Varargs$ArrayVarargs;-><init>([Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 3407
    :cond_12
    new-instance v0, Lvm2/Varargs$PairVarargs;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 3406
    :cond_1c
    aget-object p0, p0, v1

    return-object p0

    .line 3405
    :cond_1f
    sget-object p0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p0
.end method

.method public static varargsOf([Lvm2/LuaValue;II)Lvm2/Varargs;
    .registers 5

    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 3447
    new-instance v0, Lvm2/Varargs$ArrayPartVarargs;

    sget-object v1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-direct {v0, p0, p1, p2, v1}, Lvm2/Varargs$ArrayPartVarargs;-><init>([Lvm2/LuaValue;IILvm2/Varargs;)V

    return-object v0

    .line 3446
    :cond_10
    new-instance p2, Lvm2/Varargs$PairVarargs;

    aget-object v1, p0, p1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-direct {p2, v1, p0}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object p2

    .line 3445
    :cond_1b
    aget-object p0, p0, p1

    return-object p0

    .line 3444
    :cond_1e
    sget-object p0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p0
.end method

.method public static varargsOf([Lvm2/LuaValue;IILvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    if-eqz p2, :cond_36

    const/4 v0, 0x1

    if-eq p2, v0, :cond_25

    const/4 v1, 0x2

    if-eq p2, v1, :cond_e

    .line 3473
    new-instance v0, Lvm2/Varargs$ArrayPartVarargs;

    invoke-direct {v0, p0, p1, p2, p3}, Lvm2/Varargs$ArrayPartVarargs;-><init>([Lvm2/LuaValue;IILvm2/Varargs;)V

    return-object v0

    .line 3470
    :cond_e
    invoke-virtual {p3}, Lvm2/Varargs;->narg()I

    move-result v1

    if-lez v1, :cond_1a

    .line 3471
    new-instance v0, Lvm2/Varargs$ArrayPartVarargs;

    invoke-direct {v0, p0, p1, p2, p3}, Lvm2/Varargs$ArrayPartVarargs;-><init>([Lvm2/LuaValue;IILvm2/Varargs;)V

    return-object v0

    .line 3472
    :cond_1a
    new-instance p2, Lvm2/Varargs$PairVarargs;

    aget-object p3, p0, p1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-direct {p2, p3, p0}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object p2

    .line 3467
    :cond_25
    invoke-virtual {p3}, Lvm2/Varargs;->narg()I

    move-result p2

    if-lez p2, :cond_33

    .line 3468
    new-instance p2, Lvm2/Varargs$PairVarargs;

    aget-object p0, p0, p1

    invoke-direct {p2, p0, p3}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object p2

    .line 3469
    :cond_33
    aget-object p0, p0, p1

    return-object p0

    :cond_36
    return-object p3
.end method

.method public static varargsOf([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 3421
    array-length v0, p0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    .line 3429
    new-instance v0, Lvm2/Varargs$ArrayVarargs;

    invoke-direct {v0, p0, p1}, Lvm2/Varargs$ArrayVarargs;-><init>([Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 3426
    :cond_10
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_1c

    .line 3427
    new-instance v0, Lvm2/Varargs$ArrayVarargs;

    invoke-direct {v0, p0, p1}, Lvm2/Varargs$ArrayVarargs;-><init>([Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 3428
    :cond_1c
    new-instance p1, Lvm2/Varargs$PairVarargs;

    aget-object v0, p0, v2

    aget-object p0, p0, v1

    invoke-direct {p1, v0, p0}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object p1

    .line 3423
    :cond_26
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_34

    .line 3424
    new-instance v0, Lvm2/Varargs$PairVarargs;

    aget-object p0, p0, v2

    invoke-direct {v0, p0, p1}, Lvm2/Varargs$PairVarargs;-><init>(Lvm2/LuaValue;Lvm2/Varargs;)V

    return-object v0

    .line 3425
    :cond_34
    aget-object p0, p0, v2

    return-object p0

    :cond_37
    return-object p1
.end method


# virtual methods
.method public add(D)Lvm2/LuaValue;
    .registers 4

    .line 2186
    sget-object v0, Lvm2/LuaValue;->ADD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lvm2/LuaValue;
    .registers 4

    int-to-double v0, p1

    .line 2199
    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->add(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public add(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2173
    sget-object v0, Lvm2/LuaValue;->ADD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public and(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 3120
    invoke-virtual {p0}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    return-object p0
.end method

.method public arg(I)Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    .line 1367
    :cond_4
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public argerror(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 1058
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aritherror()Lvm2/LuaValue;
    .registers 4

    .line 1100
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public aritherror(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 1108
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 2532
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 2533
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2534
    invoke-virtual {p2, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 2535
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 2538
    :cond_40
    invoke-virtual {v0, p0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;
    .registers 7

    .line 2563
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    .line 2564
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on number and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 2566
    :cond_2a
    invoke-static {p2, p3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public buffer()Lvm2/Buffer;
    .registers 2

    .line 3084
    new-instance v0, Lvm2/Buffer;

    invoke-direct {v0, p0}, Lvm2/Buffer;-><init>(Lvm2/LuaValue;)V

    return-object v0
.end method

.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1424
    invoke-virtual {p0}, Lvm2/LuaValue;->callmt()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 2

    .line 1457
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1450
    invoke-virtual {p0}, Lvm2/LuaValue;->callmt()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1484
    invoke-virtual {p0}, Lvm2/LuaValue;->callmt()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1512
    invoke-virtual {p0}, Lvm2/LuaValue;->callmt()Lvm2/LuaValue;

    move-result-object v0

    filled-new-array {p0, p1, p2, p3}, [Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->invoke([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public callmt()Lvm2/LuaValue;
    .registers 3

    .line 1997
    sget-object v0, Lvm2/LuaValue;->CALL:Lvm2/LuaString;

    const-string v1, "attempt to call "

    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->checkmetatag(Lvm2/LuaValue;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public checkboolean()Z
    .registers 2

    .line 830
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public checkclosure()Lvm2/LuaClosure;
    .registers 2

    .line 843
    const-string v0, "closure"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkdouble()D
    .registers 3

    .line 858
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkfunction()Lvm2/LuaFunction;
    .registers 2

    .line 869
    const-string v0, "function"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkglobals()Lvm2/Globals;
    .registers 2

    .line 878
    const-string v0, "globals"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkint()I
    .registers 2

    .line 893
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public checkinteger()Lvm2/LuaInteger;
    .registers 2

    .line 908
    const-string v0, "integer"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .registers 2

    .line 966
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checklong()J
    .registers 3

    .line 923
    const-string v0, "long"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkmetatag(Lvm2/LuaValue;Ljava/lang/String;)Lvm2/LuaValue;
    .registers 4

    .line 3363
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 3364
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_b

    return-object p1

    .line 3365
    :cond_b
    new-instance p1, Lvm2/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "a "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " value"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checknotnil()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public checknumber()Lvm2/LuaNumber;
    .registers 2

    .line 937
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checknumber(Ljava/lang/String;)Lvm2/LuaNumber;
    .registers 3

    .line 952
    new-instance v0, Lvm2/LuaError;

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkstring()Lvm2/LuaString;
    .registers 2

    .line 982
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checktable()Lvm2/LuaTable;
    .registers 2

    .line 991
    const-string v0, "table"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkthread()Lvm2/LuaThread;
    .registers 2

    .line 1000
    const-string v0, "thread"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkuserdata()Ljava/lang/Object;
    .registers 2

    .line 1010
    const-string v0, "userdata"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1020
    const-string p1, "userdata"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public compareerror(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 1116
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareerror(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1124
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 2986
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p2, p1}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_6a

    .line 2988
    :cond_15
    sget-object v0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    invoke-virtual {v0, p1}, Lvm2/LuaString;->raweq(Lvm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p2, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2989
    :cond_33
    invoke-virtual {v1, p2, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->not()Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 2990
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to compare "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 2987
    :cond_6a
    :goto_6a
    invoke-virtual {v0, p0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lvm2/Buffer;)Lvm2/Buffer;
    .registers 2

    .line 3097
    invoke-virtual {p1, p0}, Lvm2/Buffer;->concatTo(Lvm2/LuaValue;)Lvm2/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 3030
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->concatmt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaNumber;)Lvm2/LuaValue;
    .registers 2

    .line 3062
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->concatmt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaString;)Lvm2/LuaValue;
    .registers 2

    .line 3078
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->concatmt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 3046
    invoke-virtual {p1, p0}, Lvm2/LuaValue;->concatmt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatmt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 3108
    sget-object v0, Lvm2/LuaValue;->CONCAT:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    .line 3109
    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->metatag(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to concatenate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    .line 3111
    :cond_3a
    invoke-virtual {v1, p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(D)Lvm2/LuaValue;
    .registers 3

    .line 2417
    const-string p1, "div"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lvm2/LuaValue;
    .registers 2

    .line 2432
    const-string p1, "div"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2402
    sget-object v0, Lvm2/LuaValue;->DIV:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lvm2/LuaValue;
    .registers 4

    .line 2447
    sget-object v0, Lvm2/LuaValue;->DIV:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 2048
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->eq_b(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lvm2/LuaValue;
    .registers 2

    .line 1146
    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 2

    .line 1156
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public get(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 1136
    invoke-static {p0, p1}, Lvm2/LuaValue;->gettable(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getmetatable()Lvm2/LuaValue;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public gt(D)Lvm2/LuaValue;
    .registers 3

    .line 2800
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt(I)Lvm2/LuaValue;
    .registers 2

    .line 2816
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2784
    sget-object v0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    invoke-virtual {p1, v0, p0}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt_b(D)Z
    .registers 3

    .line 2867
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(I)Z
    .registers 2

    .line 2850
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 2833
    sget-object v0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    invoke-virtual {p1, v0, p0}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public gteq(D)Lvm2/LuaValue;
    .registers 3

    .line 2900
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq(I)Lvm2/LuaValue;
    .registers 6

    .line 2916
    invoke-virtual {p0}, Lvm2/LuaValue;->todouble()D

    move-result-wide v0

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

.method public gteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2884
    sget-object v0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    invoke-virtual {p1, v0, p0}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq_b(D)Z
    .registers 3

    .line 2967
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(I)Z
    .registers 2

    .line 2950
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 2933
    sget-object v0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    invoke-virtual {p1, v0, p0}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public illegal(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;
    .registers 6

    .line 1086
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal operation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inext(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2

    .line 1355
    const-string p1, "table"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public initupvalue1(Lvm2/LuaValue;)V
    .registers 2

    .line 0
    return-void
.end method

.method public invoke()Lvm2/Varargs;
    .registers 2

    .line 1693
    sget-object v0, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 1766
    invoke-static {p1, p2, p3}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1741
    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1717
    invoke-virtual {p0}, Lvm2/LuaValue;->callmt()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2

    .line 1789
    invoke-static {p1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1815
    invoke-static {p1, p2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;)Lvm2/Varargs;
    .registers 2

    .line 1843
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1900
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p0, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Ljava/lang/String;[Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 3

    .line 1959
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p2

    invoke-static {p0, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2

    .line 1871
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1929
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p0, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public invokemethod(Lvm2/LuaValue;[Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 3

    .line 1989
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p2

    invoke-static {p0, p2}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public isboolean()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isclosure()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isfunction()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isint()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isinttype()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public islong()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isnil()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isnumber()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isstring()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public istable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isthread()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isuserdata()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isuserdata(Ljava/lang/Class;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isvalidkey()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public len()Lvm2/LuaValue;
    .registers 3

    .line 2018
    sget-object v0, Lvm2/LuaValue;->LEN:Lvm2/LuaString;

    const-string v1, "attempt to get length of "

    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->checkmetatag(Lvm2/LuaValue;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public lenerror()Lvm2/LuaValue;
    .registers 4

    .line 1093
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to get length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()I
    .registers 2

    .line 2025
    invoke-virtual {p0}, Lvm2/LuaValue;->len()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->toint()I

    move-result v0

    return v0
.end method

.method public load(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1364
    sget-object v0, Lvm2/LuaValue;->EMPTYSTRING:Lvm2/LuaString;

    invoke-virtual {p1, v0, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(D)Lvm2/LuaValue;
    .registers 3

    .line 2600
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(I)Lvm2/LuaValue;
    .registers 2

    .line 2616
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2584
    sget-object v0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt_b(D)Z
    .registers 3

    .line 2667
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(I)Z
    .registers 2

    .line 2650
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 2633
    sget-object v0, Lvm2/LuaValue;->LT:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public lteq(D)Lvm2/LuaValue;
    .registers 3

    .line 2700
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq(I)Lvm2/LuaValue;
    .registers 2

    .line 2716
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2684
    sget-object v0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq_b(D)Z
    .registers 3

    .line 2767
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(I)Z
    .registers 2

    .line 2750
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->compareerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 2733
    sget-object v0, Lvm2/LuaValue;->LE:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->comparemt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public metatag(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 3348
    invoke-virtual {p0}, Lvm2/LuaValue;->getmetatable()Lvm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_9

    .line 3350
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 3351
    :cond_9
    invoke-virtual {v0, p1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 2

    .line 1538
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1591
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1645
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 1564
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1618
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public method(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1672
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(D)Lvm2/LuaValue;
    .registers 3

    .line 2478
    const-string p1, "mod"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lvm2/LuaValue;
    .registers 2

    .line 2493
    const-string p1, "mod"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2463
    sget-object v0, Lvm2/LuaValue;->MOD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lvm2/LuaValue;
    .registers 4

    .line 2508
    sget-object v0, Lvm2/LuaValue;->MOD:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lvm2/LuaValue;
    .registers 4

    .line 2302
    sget-object v0, Lvm2/LuaValue;->MUL:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lvm2/LuaValue;
    .registers 4

    int-to-double v0, p1

    .line 2315
    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->mul(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2289
    sget-object v0, Lvm2/LuaValue;->MUL:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public narg()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public neg()Lvm2/LuaValue;
    .registers 3

    .line 2011
    sget-object v0, Lvm2/LuaValue;->UNM:Lvm2/LuaString;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->checkmetatag(Lvm2/LuaValue;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public neq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 2076
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->eq_b(Lvm2/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public neq_b(Lvm2/LuaValue;)Z
    .registers 2

    .line 2089
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->eq_b(Lvm2/LuaValue;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public next(Lvm2/LuaValue;)Lvm2/Varargs;
    .registers 2

    .line 1327
    const-string p1, "table"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public not()Lvm2/LuaValue;
    .registers 2

    .line 2003
    sget-object v0, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object v0
.end method

.method public onInvoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    .line 3547
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public optboolean(Z)Z
    .registers 2

    .line 616
    const-string p1, "boolean"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public optclosure(Lvm2/LuaClosure;)Lvm2/LuaClosure;
    .registers 2

    .line 630
    const-string p1, "closure"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optdouble(D)D
    .registers 3

    .line 646
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;
    .registers 2

    .line 662
    const-string p1, "function"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optint(I)I
    .registers 2

    .line 679
    const-string p1, "int"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 2

    .line 695
    const-string p1, "integer"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 742
    const-string p1, "String"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optlong(J)J
    .registers 3

    .line 711
    const-string p1, "long"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 2

    .line 728
    const-string p1, "number"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optstring(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 756
    const-string p1, "string"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public opttable(Lvm2/LuaTable;)Lvm2/LuaTable;
    .registers 2

    .line 768
    const-string p1, "table"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optthread(Lvm2/LuaThread;)Lvm2/LuaThread;
    .registers 2

    .line 780
    const-string p1, "thread"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 808
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 793
    const-string p1, "object"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public optvalue(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 0
    return-object p0
.end method

.method public or(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 3128
    invoke-virtual {p0}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method

.method public pow(D)Lvm2/LuaValue;
    .registers 3

    .line 2343
    const-string p1, "pow"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lvm2/LuaValue;
    .registers 2

    .line 2356
    const-string p1, "pow"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2330
    sget-object v0, Lvm2/LuaValue;->POW:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lvm2/LuaValue;
    .registers 4

    .line 2371
    sget-object v0, Lvm2/LuaValue;->POW:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lvm2/LuaValue;
    .registers 4

    int-to-double v0, p1

    .line 2386
    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->powWith(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public presize(I)V
    .registers 2

    .line 1300
    const-string p1, "table"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    return-void
.end method

.method public raweq(D)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(I)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lvm2/LuaString;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lvm2/LuaUserdata;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lvm2/LuaValue;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public rawget(I)Lvm2/LuaValue;
    .registers 2

    .line 1227
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 2

    .line 1234
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawget(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 1220
    const-string p1, "rawget"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->unimplemented(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public rawlen()I
    .registers 2

    .line 2031
    const-string v0, "table or string"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return v0
.end method

.method public rawset(ILjava/lang/String;)V
    .registers 3

    .line 1255
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(ILvm2/LuaValue;)V

    return-void
.end method

.method public rawset(ILvm2/LuaValue;)V
    .registers 3

    .line 1248
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;D)V
    .registers 4

    .line 1269
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2, p3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;I)V
    .registers 3

    .line 1276
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1283
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public rawset(Ljava/lang/String;Lvm2/LuaValue;)V
    .registers 3

    .line 1262
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public rawset(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 3

    .line 1241
    const-string p1, "rawset"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->unimplemented(Ljava/lang/String;)Lvm2/LuaValue;

    return-void
.end method

.method public rawsetlist(ILvm2/Varargs;)V
    .registers 7

    .line 1292
    invoke-virtual {p2}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    add-int v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lvm2/LuaValue;->rawset(ILvm2/LuaValue;)V

    goto :goto_5

    :cond_13
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .registers 3

    .line 1181
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(ILvm2/LuaValue;)V

    return-void
.end method

.method public set(ILvm2/LuaValue;)V
    .registers 3

    .line 1173
    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;D)V
    .registers 4

    .line 1197
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2, p3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 3

    .line 1205
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1213
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Lvm2/LuaValue;)V
    .registers 3

    .line 1189
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    return-void
.end method

.method public set(Lvm2/LuaValue;Lvm2/LuaValue;)V
    .registers 3

    .line 1165
    invoke-static {p0, p1, p2}, Lvm2/LuaValue;->settable(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Z

    return-void
.end method

.method public setmetatable(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 1399
    const-string p1, "table"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->argerror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public strcmp(Lvm2/LuaString;)I
    .registers 3

    .line 3017
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attempt to compare "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strcmp(Lvm2/LuaValue;)I
    .registers 3

    .line 3004
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attempt to compare "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strongvalue()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public strvalue()Lvm2/LuaString;
    .registers 2

    .line 3146
    const-string v0, "string or number"

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 v0, 0x0

    return-object v0
.end method

.method public sub(D)Lvm2/LuaValue;
    .registers 3

    .line 2228
    const-string p1, "sub"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lvm2/LuaValue;
    .registers 2

    .line 2241
    const-string p1, "sub"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->aritherror(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 2215
    sget-object v0, Lvm2/LuaValue;->SUB:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->arithmt(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lvm2/LuaValue;
    .registers 4

    .line 2256
    sget-object v0, Lvm2/LuaValue;->SUB:Lvm2/LuaString;

    invoke-virtual {p0, v0, p1, p2}, Lvm2/LuaValue;->arithmtwith(Lvm2/LuaValue;D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(I)Lvm2/LuaValue;
    .registers 4

    int-to-double v0, p1

    .line 2273
    invoke-virtual {p0, v0, v1}, Lvm2/LuaValue;->subFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-le p1, v0, :cond_9

    .line 3583
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1

    .line 3584
    :cond_9
    const-string p1, "start must be > 0"

    invoke-static {v0, p1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public testfor_b(Lvm2/LuaValue;Lvm2/LuaValue;)Z
    .registers 4

    const/4 v0, 0x0

    .line 3138
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->gt_b(I)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1

    :cond_c
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->gteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 564
    invoke-virtual {p0}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toboolean()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public tobyte()B
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public tochar()C
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public todouble()D
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public tofloat()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toint()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 3

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public tonumber()Lvm2/LuaValue;
    .registers 2

    .line 586
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

.method public toshort()S
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public tostring()Lvm2/LuaValue;
    .registers 2

    .line 604
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

.method public touserdata()Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public touserdata(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract type()I
.end method

.method public abstract typename()Ljava/lang/String;
.end method

.method public typerror(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 4

    .line 1073
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unimplemented(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 5

    .line 1079
    new-instance v0, Lvm2/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not implemented for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class vm2.LuaValue.None (vm2.LuaValue$None)
.class final Lvm2/LuaValue$None;
.super Lvm2/LuaNil;
.source "LuaValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation


# static fields
.field static _NONE:Lvm2/LuaValue$None;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3565
    new-instance v0, Lvm2/LuaValue$None;

    invoke-direct {v0}, Lvm2/LuaValue$None;-><init>()V

    sput-object v0, Lvm2/LuaValue$None;->_NONE:Lvm2/LuaValue$None;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3564
    invoke-direct {p0}, Lvm2/LuaNil;-><init>()V

    return-void
.end method


# virtual methods
.method public arg(I)Lvm2/LuaValue;
    .registers 2

    .line 3566
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public arg1()Lvm2/LuaValue;
    .registers 2

    .line 3568
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

.method public copyto([Lvm2/LuaValue;II)V
    .registers 6

    :goto_0
    if-lez p3, :cond_c

    add-int/lit8 v0, p2, 0x1

    .line 3571
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_c
    return-void
.end method

.method public narg()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public subargs(I)Lvm2/Varargs;
    .registers 3

    if-lez p1, :cond_3

    return-object p0

    :cond_3
    const/4 p1, 0x1

    .line 3570
    const-string v0, "start must be > 0"

    invoke-static {p1, v0}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 3569
    const-string v0, "none"

    return-object v0
.end method
