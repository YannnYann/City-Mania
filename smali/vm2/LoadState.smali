###### Class vm2.LoadState (vm2.LoadState)
.class public Lvm2/LoadState;
.super Ljava/lang/Object;
.source "LoadState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/LoadState$GlobalsUndumper;
    }
.end annotation


# static fields
.field public static final LUAC_FORMAT:I = 0x1

.field public static final LUAC_HEADERSIZE:I = 0xc

.field public static final LUAC_TAIL:[B

.field public static final LUAC_VERSION:I = 0x52

.field public static final LUA_SIGNATURE:[B

.field public static final LUA_TBOOLEAN:I = 0x2

.field public static final LUA_TFUNCTION:I = 0x7

.field public static final LUA_TINT:I = -0x2

.field public static final LUA_TLIGHTUSERDATA:I = 0x0

.field public static final LUA_TNIL:I = 0x1

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x4

.field public static final LUA_TSTRING:I = 0x5

.field public static final LUA_TTABLE:I = 0x3

.field public static final LUA_TTHREAD:I = 0x9

.field public static final LUA_TUSERDATA:I = 0x6

.field public static final LUA_TVALUE:I = 0x8

.field private static final NOINTS:[I

.field private static final NOLOCVARS:[Lvm2/LocVars;

.field private static final NOPROTOS:[Lvm2/Prototype;

.field private static final NOUPVALDESCS:[Lvm2/Upvaldesc;

.field private static final NOVALUES:[Lvm2/LuaValue;

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x1

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x0

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4

.field public static final SOURCE_BINARY_STRING:Ljava/lang/String; = "binary string"

.field public static encoding:Ljava/lang/String;

.field public static final instance:Lvm2/Globals$Undumper;


# instance fields
.field private buf:[B

.field public final is:Ljava/io/DataInputStream;

.field private luacFormat:I

.field private luacLittleEndian:Z

.field private luacNumberFormat:I

.field private luacSizeofInstruction:I

.field private luacSizeofInt:I

.field private luacSizeofLuaNumber:I

.field private luacSizeofSizeT:I

.field private luacVersion:I

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Lvm2/LoadState$GlobalsUndumper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lvm2/LoadState$GlobalsUndumper;-><init>(Lvm2/LoadState$1;)V

    sput-object v0, Lvm2/LoadState;->instance:Lvm2/Globals$Undumper;

    .line 121
    sput-object v1, Lvm2/LoadState;->encoding:Ljava/lang/String;

    const/4 v0, 0x4

    .line 124
    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lvm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v0, 0x6

    .line 127
    new-array v0, v0, [B

    fill-array-data v0, :array_36

    sput-object v0, Lvm2/LoadState;->LUAC_TAIL:[B

    const/4 v0, 0x0

    .line 159
    new-array v1, v0, [Lvm2/LuaValue;

    sput-object v1, Lvm2/LoadState;->NOVALUES:[Lvm2/LuaValue;

    .line 160
    new-array v1, v0, [Lvm2/Prototype;

    sput-object v1, Lvm2/LoadState;->NOPROTOS:[Lvm2/Prototype;

    .line 161
    new-array v1, v0, [Lvm2/LocVars;

    sput-object v1, Lvm2/LoadState;->NOLOCVARS:[Lvm2/LocVars;

    .line 162
    new-array v1, v0, [Lvm2/Upvaldesc;

    sput-object v1, Lvm2/LoadState;->NOUPVALDESCS:[Lvm2/Upvaldesc;

    .line 163
    new-array v0, v0, [I

    sput-object v0, Lvm2/LoadState;->NOINTS:[I

    return-void

    :array_30
    .array-data 1
        0x1bt
        0x4ct
        0x75t
        0x61t
    .end array-data

    :array_36
    .array-data 1
        0x19t
        -0x6dt
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 166
    new-array v0, v0, [B

    iput-object v0, p0, Lvm2/LoadState;->buf:[B

    .line 447
    iput-object p2, p0, Lvm2/LoadState;->name:Ljava/lang/String;

    .line 448
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    return-void
.end method

.method public static getSourceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 438
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 440
    :cond_11
    const-string v0, "\u001b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 441
    const-string p0, "binary string"

    :cond_1b
    return-object p0

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static install(Lvm2/Globals;)V
    .registers 2

    .line 170
    sget-object v0, Lvm2/LoadState;->instance:Lvm2/Globals$Undumper;

    iput-object v0, p0, Lvm2/Globals;->undumper:Lvm2/Globals$Undumper;

    return-void
.end method

.method public static longBitsToLuaNumber(J)Lvm2/LuaValue;
    .registers 12

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 245
    sget-object p0, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p0

    :cond_f
    const/16 v0, 0x34

    shr-long v0, p0, v0

    const-wide/16 v4, 0x7ff

    and-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    if-ltz v0, :cond_45

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_45

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v4, p0

    rsub-int/lit8 v1, v0, 0x34

    const-wide/16 v6, 0x1

    shl-long v8, v6, v1

    sub-long/2addr v8, v6

    and-long v6, v4, v8

    cmp-long v6, v6, v2

    if-nez v6, :cond_45

    shr-long/2addr v4, v1

    long-to-int v1, v4

    const/4 v4, 0x1

    shl-int v0, v4, v0

    or-int/2addr v0, v1

    const/16 v1, 0x3f

    shr-long/2addr p0, v1

    cmp-long p0, p0, v2

    if-eqz p0, :cond_40

    neg-int v0, v0

    .line 256
    :cond_40
    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    return-object p0

    .line 260
    :cond_45
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0
.end method

.method public static undump(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lvm2/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_4e

    .line 409
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    if-ne v0, v3, :cond_4e

    .line 410
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    if-ne v0, v3, :cond_4e

    .line 411
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    if-eq v0, v1, :cond_27

    goto :goto_4e

    .line 415
    :cond_27
    invoke-static {p1}, Lvm2/LoadState;->getSourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 416
    new-instance v0, Lvm2/LoadState;

    invoke-direct {v0, p0, p1}, Lvm2/LoadState;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Lvm2/LoadState;->loadHeader()V

    .line 420
    iget p0, v0, Lvm2/LoadState;->luacNumberFormat:I

    if-eqz p0, :cond_45

    if-eq p0, v2, :cond_45

    const/4 v1, 0x4

    if-ne p0, v1, :cond_3d

    goto :goto_45

    .line 426
    :cond_3d
    new-instance p0, Lvm2/LuaError;

    const-string p1, "unsupported int size"

    invoke-direct {p0, p1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_45
    :goto_45
    invoke-static {p1}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lvm2/LoadState;->loadFunction(Lvm2/LuaString;)Lvm2/Prototype;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public loadConstants(Lvm2/Prototype;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    if-lez v0, :cond_9

    .line 283
    new-array v1, v0, [Lvm2/LuaValue;

    goto :goto_b

    :cond_9
    sget-object v1, Lvm2/LoadState;->NOVALUES:[Lvm2/LuaValue;

    :goto_b
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_5c

    .line 285
    iget-object v4, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_33

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2b

    .line 299
    invoke-virtual {p0}, Lvm2/LoadState;->loadString()Lvm2/LuaString;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_59

    .line 302
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad constant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_33
    invoke-virtual {p0}, Lvm2/LoadState;->loadNumber()Lvm2/LuaValue;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_59

    .line 290
    :cond_3a
    iget-object v4, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_45

    sget-object v4, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    goto :goto_47

    :cond_45
    sget-object v4, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    :goto_47
    aput-object v4, v1, v3

    goto :goto_59

    .line 287
    :cond_4a
    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    aput-object v4, v1, v3

    goto :goto_59

    .line 293
    :cond_4f
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 305
    :cond_5c
    iput-object v1, p1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    .line 307
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    if-lez v0, :cond_67

    .line 308
    new-array v1, v0, [Lvm2/Prototype;

    goto :goto_69

    :cond_67
    sget-object v1, Lvm2/LoadState;->NOPROTOS:[Lvm2/Prototype;

    :goto_69
    if-ge v2, v0, :cond_76

    .line 310
    iget-object v3, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    invoke-virtual {p0, v3}, Lvm2/LoadState;->loadFunction(Lvm2/LuaString;)Lvm2/Prototype;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 311
    :cond_76
    iput-object v1, p1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    return-void
.end method

.method public loadDebug(Lvm2/Prototype;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    .line 332
    invoke-virtual {p0}, Lvm2/LoadState;->loadString()Lvm2/LuaString;

    move-result-object v1

    iput-object v1, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    if-nez v1, :cond_c

    .line 333
    iput-object v0, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    .line 335
    :cond_c
    invoke-virtual {p0}, Lvm2/LoadState;->loadIntArray()[I

    move-result-object v0

    iput-object v0, p1, Lvm2/Prototype;->lineinfo:[I

    .line 336
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    if-lez v0, :cond_1b

    .line 337
    new-array v1, v0, [Lvm2/LocVars;

    goto :goto_1d

    :cond_1b
    sget-object v1, Lvm2/LoadState;->NOLOCVARS:[Lvm2/LocVars;

    :goto_1d
    iput-object v1, p1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    const/4 v1, 0x0

    move v2, v1

    :goto_21
    if-ge v2, v0, :cond_3b

    .line 339
    invoke-virtual {p0}, Lvm2/LoadState;->loadString()Lvm2/LuaString;

    move-result-object v3

    .line 340
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v4

    .line 341
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v5

    .line 342
    iget-object v6, p1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    new-instance v7, Lvm2/LocVars;

    invoke-direct {v7, v3, v4, v5}, Lvm2/LocVars;-><init>(Lvm2/LuaString;II)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 345
    :cond_3b
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    :goto_3f
    if-ge v1, v0, :cond_4e

    .line 347
    iget-object v2, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lvm2/LoadState;->loadString()Lvm2/LuaString;

    move-result-object v3

    iput-object v3, v2, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_4e
    return-void
.end method

.method public loadFunction(Lvm2/LuaString;)Lvm2/Prototype;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    new-instance v0, Lvm2/Prototype;

    invoke-direct {v0}, Lvm2/Prototype;-><init>()V

    .line 362
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v1

    iput v1, v0, Lvm2/Prototype;->linedefined:I

    .line 363
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v1

    iput v1, v0, Lvm2/Prototype;->lastlinedefined:I

    .line 364
    iget-object v1, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lvm2/Prototype;->numparams:I

    .line 365
    iget-object v1, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lvm2/Prototype;->is_vararg:I

    .line 366
    iget-object v1, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lvm2/Prototype;->maxstacksize:I

    .line 367
    invoke-virtual {p0}, Lvm2/LoadState;->loadIntArray()[I

    move-result-object v1

    iput-object v1, v0, Lvm2/Prototype;->code:[I

    .line 368
    iput-object p1, v0, Lvm2/Prototype;->source:Lvm2/LuaString;

    .line 369
    invoke-virtual {p0, v0}, Lvm2/LoadState;->loadConstants(Lvm2/Prototype;)V

    .line 370
    invoke-virtual {p0, v0}, Lvm2/LoadState;->loadUpvalues(Lvm2/Prototype;)V

    .line 371
    invoke-virtual {p0, v0}, Lvm2/LoadState;->loadDebug(Lvm2/Prototype;)V

    return-object v0
.end method

.method public loadHeader()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacVersion:I

    .line 387
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacFormat:I

    .line 388
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v2, v1

    :goto_1c
    iput-boolean v2, p0, Lvm2/LoadState;->luacLittleEndian:Z

    .line 389
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacSizeofInt:I

    .line 390
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacSizeofSizeT:I

    .line 391
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacSizeofInstruction:I

    .line 392
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacSizeofLuaNumber:I

    .line 393
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lvm2/LoadState;->luacNumberFormat:I

    .line 394
    :goto_46
    sget-object v0, Lvm2/LoadState;->LUAC_TAIL:[B

    array-length v2, v0

    if-ge v1, v2, :cond_6f

    .line 395
    iget-object v2, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aget-byte v0, v0, v1

    if-ne v2, v0, :cond_58

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 396
    :cond_58
    new-instance v0, Lvm2/LuaError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpeted byte in luac tail of header, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    return-void
.end method

.method public loadInt()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v1, p0, Lvm2/LoadState;->buf:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 178
    iget-boolean v0, p0, Lvm2/LoadState;->luacLittleEndian:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_2a

    .line 179
    iget-object v0, p0, Lvm2/LoadState;->buf:[B

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x18

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    :goto_26
    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0

    .line 180
    :cond_2a
    iget-object v0, p0, Lvm2/LoadState;->buf:[B

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x18

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v4

    goto :goto_26
.end method

.method public loadInt64()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lvm2/LoadState;->luacLittleEndian:Z

    if-eqz v0, :cond_d

    .line 211
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    .line 212
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v1

    goto :goto_15

    .line 214
    :cond_d
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v1

    .line 215
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    :goto_15
    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public loadIntArray()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    if-nez v0, :cond_9

    .line 189
    sget-object v0, Lvm2/LoadState;->NOINTS:[I

    return-object v0

    :cond_9
    shl-int/lit8 v1, v0, 0x2

    .line 193
    iget-object v2, p0, Lvm2/LoadState;->buf:[B

    array-length v2, v2

    if-ge v2, v1, :cond_14

    .line 194
    new-array v2, v1, [B

    iput-object v2, p0, Lvm2/LoadState;->buf:[B

    .line 195
    :cond_14
    iget-object v2, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lvm2/LoadState;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 196
    new-array v1, v0, [I

    move v2, v4

    :goto_1f
    if-ge v4, v0, :cond_69

    .line 198
    iget-boolean v3, p0, Lvm2/LoadState;->luacLittleEndian:Z

    if-eqz v3, :cond_45

    .line 199
    iget-object v3, p0, Lvm2/LoadState;->buf:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v3, v3, v2

    :goto_41
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    goto :goto_62

    .line 200
    :cond_45
    iget-object v3, p0, Lvm2/LoadState;->buf:[B

    aget-byte v5, v3, v2

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    goto :goto_41

    :goto_62
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1f

    :cond_69
    return-object v1
.end method

.method public loadNumber()Lvm2/LuaValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget v0, p0, Lvm2/LoadState;->luacNumberFormat:I

    if-nez v0, :cond_d

    .line 270
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0

    .line 272
    :cond_d
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LoadState;->longBitsToLuaNumber(J)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public loadString()Lvm2/LuaString;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget v0, p0, Lvm2/LoadState;->luacSizeofSizeT:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lvm2/LoadState;->loadInt64()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    :goto_10
    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 227
    :cond_14
    new-array v1, v0, [B

    .line 228
    iget-object v2, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    move v2, v3

    :goto_1d
    if-ge v2, v0, :cond_2f

    .line 232
    aget-byte v4, v1, v2

    sget-object v5, Lvm2/LuaString;->SWIZZLE_BYTES:[B

    array-length v6, v5

    rem-int v6, v2, v6

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 235
    invoke-static {v1, v3, v0}, Lvm2/LuaString;->valueUsing([BII)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public loadUpvalues(Lvm2/Prototype;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lvm2/LoadState;->loadInt()I

    move-result v0

    if-lez v0, :cond_9

    .line 317
    new-array v1, v0, [Lvm2/Upvaldesc;

    goto :goto_b

    :cond_9
    sget-object v1, Lvm2/LoadState;->NOUPVALDESCS:[Lvm2/Upvaldesc;

    :goto_b
    iput-object v1, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_31

    .line 319
    iget-object v3, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 320
    :goto_1c
    iget-object v4, p0, Lvm2/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 321
    iget-object v5, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    new-instance v6, Lvm2/Upvaldesc;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4}, Lvm2/Upvaldesc;-><init>(Lvm2/LuaString;ZI)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_31
    return-void
.end method

###### Class vm2.LoadState.AnonymousClass1 (vm2.LoadState$1)
.class synthetic Lvm2/LoadState$1;
.super Ljava/lang/Object;
.source "LoadState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.LoadState.GlobalsUndumper (vm2.LoadState$GlobalsUndumper)
.class final Lvm2/LoadState$GlobalsUndumper;
.super Ljava/lang/Object;
.source "LoadState.java"

# interfaces
.implements Lvm2/Globals$Undumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/LoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalsUndumper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/LoadState$1;)V
    .registers 2

    .line 451
    invoke-direct {p0}, Lvm2/LoadState$GlobalsUndumper;-><init>()V

    return-void
.end method


# virtual methods
.method public undump(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-static {p1, p2}, Lvm2/LoadState;->undump(Ljava/io/InputStream;Ljava/lang/String;)Lvm2/Prototype;

    move-result-object p1

    return-object p1
.end method
