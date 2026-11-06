###### Class vm2.compiler.DumpState (vm2.compiler.DumpState)
.class public Lvm2/compiler/DumpState;
.super Ljava/lang/Object;
.source "DumpState.java"


# static fields
.field public static ALLOW_INTEGER_CASTING:Z = false

.field public static final NUMBER_FORMAT_DEFAULT:I = 0x1

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x1

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x0

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4

.field private static final SIZEOF_INSTRUCTION:I = 0x4

.field private static final SIZEOF_INT:I = 0x4

.field private static final SIZEOF_SIZET:I = 0x4


# instance fields
.field private IS_LITTLE_ENDIAN:Z

.field private NUMBER_FORMAT:I

.field private SIZEOF_LUA_NUMBER:I

.field status:I

.field strip:Z

.field writer:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 4

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lvm2/compiler/DumpState;->IS_LITTLE_ENDIAN:Z

    .line 89
    iput v0, p0, Lvm2/compiler/DumpState;->NUMBER_FORMAT:I

    const/16 v0, 0x8

    .line 90
    iput v0, p0, Lvm2/compiler/DumpState;->SIZEOF_LUA_NUMBER:I

    .line 100
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    .line 101
    iput-boolean p2, p0, Lvm2/compiler/DumpState;->strip:Z

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lvm2/compiler/DumpState;->status:I

    return-void
.end method

.method public static dump(Lvm2/Prototype;Ljava/io/OutputStream;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Lvm2/compiler/DumpState;

    invoke-direct {v0, p1, p2}, Lvm2/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    .line 265
    invoke-virtual {v0}, Lvm2/compiler/DumpState;->dumpHeader()V

    .line 266
    invoke-virtual {v0, p0}, Lvm2/compiler/DumpState;->dumpFunction(Lvm2/Prototype;)V

    .line 267
    iget p0, v0, Lvm2/compiler/DumpState;->status:I

    return p0
.end method

.method public static dump(Lvm2/Prototype;Ljava/io/OutputStream;ZIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p3, :cond_20

    const/4 v1, 0x1

    if-eq p3, v1, :cond_20

    if-ne p3, v0, :cond_9

    goto :goto_20

    .line 288
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "number format not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 290
    :cond_20
    :goto_20
    new-instance v1, Lvm2/compiler/DumpState;

    invoke-direct {v1, p1, p2}, Lvm2/compiler/DumpState;-><init>(Ljava/io/OutputStream;Z)V

    .line 291
    iput-boolean p4, v1, Lvm2/compiler/DumpState;->IS_LITTLE_ENDIAN:Z

    .line 292
    iput p3, v1, Lvm2/compiler/DumpState;->NUMBER_FORMAT:I

    if-nez p3, :cond_2c

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x8

    .line 293
    :goto_2e
    iput v0, v1, Lvm2/compiler/DumpState;->SIZEOF_LUA_NUMBER:I

    .line 294
    invoke-virtual {v1}, Lvm2/compiler/DumpState;->dumpHeader()V

    .line 295
    invoke-virtual {v1, p0}, Lvm2/compiler/DumpState;->dumpFunction(Lvm2/Prototype;)V

    .line 296
    iget p0, v1, Lvm2/compiler/DumpState;->status:I

    return p0
.end method


# virtual methods
.method public dumpBlock([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public dumpChar(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public dumpCode(Lvm2/Prototype;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object p1, p1, Lvm2/Prototype;->code:[I

    .line 143
    array-length v0, p1

    .line 144
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    .line 146
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lvm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public dumpConstants(Lvm2/Prototype;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p1, Lvm2/Prototype;->k:[Lvm2/LuaValue;

    .line 151
    array-length v1, v0

    .line 152
    invoke-virtual {p0, v1}, Lvm2/compiler/DumpState;->dumpInt(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_d4

    .line 154
    aget-object v4, v0, v3

    .line 155
    invoke-virtual {v4}, Lvm2/LuaValue;->type()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_cb

    const/4 v7, 0x2

    if-eq v5, v7, :cond_be

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3f

    const/4 v6, 0x5

    if-ne v5, v6, :cond_28

    .line 189
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 190
    check-cast v4, Lvm2/LuaString;

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpString(Lvm2/LuaString;)V

    goto/16 :goto_d0

    .line 193
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_3f
    iget v5, p0, Lvm2/compiler/DumpState;->NUMBER_FORMAT:I

    if-eqz v5, :cond_8f

    if-eq v5, v6, :cond_82

    if-ne v5, v7, :cond_69

    .line 176
    invoke-virtual {v4}, Lvm2/LuaValue;->isint()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 177
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 178
    invoke-virtual {v4}, Lvm2/LuaValue;->toint()I

    move-result v4

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpInt(I)V

    goto/16 :goto_d0

    .line 180
    :cond_5c
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 181
    invoke-virtual {v4}, Lvm2/LuaValue;->todouble()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lvm2/compiler/DumpState;->dumpDouble(D)V

    goto :goto_d0

    .line 185
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number format not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lvm2/compiler/DumpState;->NUMBER_FORMAT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_82
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 167
    invoke-virtual {v4}, Lvm2/LuaValue;->todouble()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lvm2/compiler/DumpState;->dumpDouble(D)V

    goto :goto_d0

    .line 170
    :cond_8f
    sget-boolean v5, Lvm2/compiler/DumpState;->ALLOW_INTEGER_CASTING:Z

    if-nez v5, :cond_b1

    invoke-virtual {v4}, Lvm2/LuaValue;->isint()Z

    move-result v5

    if-eqz v5, :cond_9a

    goto :goto_b1

    .line 171
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not an integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_b1
    :goto_b1
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 173
    invoke-virtual {v4}, Lvm2/LuaValue;->toint()I

    move-result v4

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpInt(I)V

    goto :goto_d0

    .line 160
    :cond_be
    iget-object v5, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 161
    invoke-virtual {v4}, Lvm2/LuaValue;->toboolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpChar(I)V

    goto :goto_d0

    .line 157
    :cond_cb
    iget-object v4, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write(I)V

    :goto_d0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 196
    :cond_d4
    iget-object v0, p1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    array-length v0, v0

    .line 197
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    :goto_da
    if-ge v2, v0, :cond_e6

    .line 199
    iget-object v1, p1, Lvm2/Prototype;->p:[Lvm2/Prototype;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lvm2/compiler/DumpState;->dumpFunction(Lvm2/Prototype;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    :cond_e6
    return-void
.end method

.method public dumpDebug(Lvm2/Prototype;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->strip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {p0, v1}, Lvm2/compiler/DumpState;->dumpInt(I)V

    goto :goto_e

    .line 216
    :cond_9
    iget-object v0, p1, Lvm2/Prototype;->source:Lvm2/LuaString;

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpString(Lvm2/LuaString;)V

    .line 217
    :goto_e
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_17

    :cond_14
    iget-object v0, p1, Lvm2/Prototype;->lineinfo:[I

    array-length v0, v0

    .line 218
    :goto_17
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_27

    .line 220
    iget-object v3, p1, Lvm2/Prototype;->lineinfo:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lvm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 221
    :cond_27
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_2d

    move v0, v1

    goto :goto_30

    :cond_2d
    iget-object v0, p1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    array-length v0, v0

    .line 222
    :goto_30
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    move v2, v1

    :goto_34
    if-ge v2, v0, :cond_4c

    .line 224
    iget-object v3, p1, Lvm2/Prototype;->locvars:[Lvm2/LocVars;

    aget-object v3, v3, v2

    .line 225
    iget-object v4, v3, Lvm2/LocVars;->varname:Lvm2/LuaString;

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpString(Lvm2/LuaString;)V

    .line 226
    iget v4, v3, Lvm2/LocVars;->startpc:I

    invoke-virtual {p0, v4}, Lvm2/compiler/DumpState;->dumpInt(I)V

    .line 227
    iget v3, v3, Lvm2/LocVars;->endpc:I

    invoke-virtual {p0, v3}, Lvm2/compiler/DumpState;->dumpInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 229
    :cond_4c
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->strip:Z

    if-eqz v0, :cond_52

    move v0, v1

    goto :goto_55

    :cond_52
    iget-object v0, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v0, v0

    .line 230
    :goto_55
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    :goto_58
    if-ge v1, v0, :cond_66

    .line 232
    iget-object v2, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    aget-object v2, v2, v1

    iget-object v2, v2, Lvm2/Upvaldesc;->name:Lvm2/LuaString;

    invoke-virtual {p0, v2}, Lvm2/compiler/DumpState;->dumpString(Lvm2/LuaString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_66
    return-void
.end method

.method public dumpDouble(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    .line 133
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_14

    long-to-int v0, p1

    .line 134
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    .line 135
    invoke-virtual {p0, p1}, Lvm2/compiler/DumpState;->dumpInt(I)V

    return-void

    .line 137
    :cond_14
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public dumpFunction(Lvm2/Prototype;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget v0, p1, Lvm2/Prototype;->linedefined:I

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    .line 237
    iget v0, p1, Lvm2/Prototype;->lastlinedefined:I

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    .line 238
    iget v0, p1, Lvm2/Prototype;->numparams:I

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpChar(I)V

    .line 239
    iget v0, p1, Lvm2/Prototype;->is_vararg:I

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpChar(I)V

    .line 240
    iget v0, p1, Lvm2/Prototype;->maxstacksize:I

    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpChar(I)V

    .line 241
    invoke-virtual {p0, p1}, Lvm2/compiler/DumpState;->dumpCode(Lvm2/Prototype;)V

    .line 242
    invoke-virtual {p0, p1}, Lvm2/compiler/DumpState;->dumpConstants(Lvm2/Prototype;)V

    .line 243
    invoke-virtual {p0, p1}, Lvm2/compiler/DumpState;->dumpUpvalues(Lvm2/Prototype;)V

    .line 244
    invoke-virtual {p0, p1}, Lvm2/compiler/DumpState;->dumpDebug(Lvm2/Prototype;)V

    return-void
.end method

.method public dumpHeader()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    sget-object v1, Lvm2/LoadState;->LUA_SIGNATURE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 249
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 250
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 251
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-boolean v2, p0, Lvm2/compiler/DumpState;->IS_LITTLE_ENDIAN:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 252
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 253
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 254
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 255
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget v1, p0, Lvm2/compiler/DumpState;->SIZEOF_LUA_NUMBER:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 256
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget v1, p0, Lvm2/compiler/DumpState;->NUMBER_FORMAT:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 257
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    sget-object v1, Lvm2/LoadState;->LUAC_TAIL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public dumpInt(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lvm2/compiler/DumpState;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_27

    .line 115
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 116
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 117
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 118
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    .line 120
    :cond_27
    iget-object v0, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public dumpString(Lvm2/LuaString;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lvm2/LuaString;->len()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 126
    invoke-virtual {p0, v1}, Lvm2/compiler/DumpState;->dumpInt(I)V

    .line 127
    iget-object v1, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lvm2/LuaString;->write(Ljava/io/DataOutputStream;II)V

    .line 128
    iget-object p1, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public dumpUpvalues(Lvm2/Prototype;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    array-length v0, v0

    .line 204
    invoke-virtual {p0, v0}, Lvm2/compiler/DumpState;->dumpInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 206
    iget-object v2, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lvm2/Upvaldesc;->instack:Z

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 207
    iget-object v2, p0, Lvm2/compiler/DumpState;->writer:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lvm2/Prototype;->upvalues:[Lvm2/Upvaldesc;

    aget-object v3, v3, v1

    iget-short v3, v3, Lvm2/Upvaldesc;->idx:S

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method
