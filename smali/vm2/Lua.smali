###### Class vm2.Lua (vm2.Lua)
.class public Lvm2/Lua;
.super Ljava/lang/Object;
.source "Lua.java"


# static fields
.field public static final BITRK:I = 0x100

.field public static final LFIELDS_PER_FLUSH:I = 0x32

.field public static final LUA_MULTRET:I = -0x1

.field public static final MASK_A:I = 0x3fc0

.field public static final MASK_Ax:I = -0x40

.field public static final MASK_B:I = -0x800000

.field public static final MASK_Bx:I = -0x4000

.field public static final MASK_C:I = 0x7fc000

.field public static final MASK_NOT_A:I = -0x3fc1

.field public static final MASK_NOT_B:I = 0x7fffff

.field public static final MASK_NOT_Bx:I = 0x3fff

.field public static final MASK_NOT_C:I = -0x7fc001

.field public static final MASK_NOT_OP:I = -0x40

.field public static final MASK_OP:I = 0x3f

.field public static final MAXARG_A:I = 0xff

.field public static final MAXARG_Ax:I = 0x3ffffff

.field public static final MAXARG_B:I = 0x1ff

.field public static final MAXARG_Bx:I = 0x3ffff

.field public static final MAXARG_C:I = 0x1ff

.field public static final MAXARG_sBx:I = 0x1ffff

.field public static final MAXINDEXRK:I = 0xff

.field private static final MAXSRC:I = 0x50

.field public static final MAX_OP:I = 0x3f

.field public static final NO_REG:I = 0xff

.field public static final NUM_OPCODES:I = 0x28

.field public static final OP_ADD:I = 0xe

.field public static final OP_AND:I = 0x3c

.field public static final OP_CALL:I = 0x1e

.field public static final OP_CLOSURE:I = 0x25

.field public static final OP_CONCAT:I = 0x16

.field public static final OP_DIV:I = 0x11

.field public static final OP_EQ:I = 0x19

.field public static final OP_EXTRAARG:I = 0x27

.field public static final OP_FORLOOP:I = 0x21

.field public static final OP_FORPREP:I = 0x20

.field public static final OP_GE:I = 0x3e

.field public static final OP_GETTABLE:I = 0x7

.field public static final OP_GETTABUP:I = 0x6

.field public static final OP_GETUPVAL:I = 0x5

.field public static final OP_GT:I = 0x3f

.field public static final OP_JMP:I = 0x18

.field public static final OP_LE:I = 0x17

.field public static final OP_LEN:I = 0xd

.field public static final OP_LOADBOOL:I = 0x2

.field public static final OP_LOADK:I = 0x0

.field public static final OP_LOADKX:I = 0x3

.field public static final OP_LOADNIL:I = 0x4

.field public static final OP_LT:I = 0x1a

.field public static final OP_MOD:I = 0x12

.field public static final OP_MOVE:I = 0x1

.field public static final OP_MUL:I = 0x10

.field public static final OP_NEQ:I = 0x3d

.field public static final OP_NEWTABLE:I = 0xb

.field public static final OP_NOT:I = 0x15

.field public static final OP_OR:I = 0x3b

.field public static final OP_POW:I = 0x13

.field public static final OP_RETURN:I = 0x1f

.field public static final OP_SELF:I = 0xc

.field public static final OP_SETLIST:I = 0x24

.field public static final OP_SETTABLE:I = 0xa

.field public static final OP_SETTABUP:I = 0x8

.field public static final OP_SETUPVAL:I = 0x9

.field public static final OP_SUB:I = 0xf

.field public static final OP_TAILCALL:I = 0x1d

.field public static final OP_TEST:I = 0x1b

.field public static final OP_TESTSET:I = 0x1c

.field public static final OP_TFORCALL:I = 0x22

.field public static final OP_TFORLOOP:I = 0x23

.field public static final OP_UNM:I = 0x14

.field public static final OP_VARARG:I = 0x26

.field public static final OpArgK:I = 0x3

.field public static final OpArgN:I = 0x0

.field public static final OpArgR:I = 0x2

.field public static final OpArgU:I = 0x1

.field public static final POS_A:I = 0x6

.field public static final POS_Ax:I = 0x6

.field public static final POS_B:I = 0x17

.field public static final POS_Bx:I = 0xe

.field public static final POS_C:I = 0xe

.field public static final POS_OP:I = 0x0

.field public static final SIZE_A:I = 0x8

.field public static final SIZE_Ax:I = 0x1a

.field public static final SIZE_B:I = 0x9

.field public static final SIZE_Bx:I = 0x12

.field public static final SIZE_C:I = 0x9

.field public static final SIZE_OP:I = 0x6

.field public static final _VERSION:Ljava/lang/String; = "Luaj 0.0"

.field public static final iABC:I = 0x0

.field public static final iABx:I = 0x1

.field public static final iAsBx:I = 0x2

.field public static final iAx:I = 0x3

.field public static final luaP_opmodes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x28

    .line 281
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lvm2/Lua;->luaP_opmodes:[I

    return-void

    :array_a
    .array-data 4
        0x71
        0x60
        0x54
        0x41
        0x50
        0x50
        0x5c
        0x6c
        0x3c
        0x10
        0x3c
        0x54
        0x6c
        0x60
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x60
        0x60
        0x68
        0xbc
        0x22
        0xbc
        0xbc
        0x84
        0xe4
        0x54
        0x54
        0x10
        0x62
        0x62
        0x4
        0xe2
        0x14
        0x51
        0x50
        0x17
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GETARG_A(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static GETARG_Ax(I)I
    .registers 2

    .line 0
    shr-int/lit8 p0, p0, 0x6

    const v0, 0x3ffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static GETARG_B(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x17

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static GETARG_Bx(I)I
    .registers 2

    .line 0
    shr-int/lit8 p0, p0, 0xe

    const v0, 0x3ffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static GETARG_C(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0xe

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static GETARG_sBx(I)I
    .registers 2

    .line 0
    shr-int/lit8 p0, p0, 0xe

    const v0, 0x3ffff

    and-int/2addr p0, v0

    const v0, 0x1ffff

    sub-int/2addr p0, v0

    return p0
.end method

.method public static GET_OPCODE(I)I
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static INDEXK(I)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, -0x101

    return p0
.end method

.method public static ISK(I)Z
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static RKASK(I)I
    .registers 1

    .line 0
    or-int/lit16 p0, p0, 0x100

    return p0
.end method

.method public static chunkid(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 352
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 353
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_e
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 356
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    goto :goto_30

    .line 358
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[string \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 359
    const-string v0, "\"]"

    .line 361
    :goto_30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x50

    if-le v1, v2, :cond_59

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4d

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 364
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBMode(I)I
    .registers 2

    .line 334
    sget-object v0, Lvm2/Lua;->luaP_opmodes:[I

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getCMode(I)I
    .registers 2

    .line 337
    sget-object v0, Lvm2/Lua;->luaP_opmodes:[I

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static getOpMode(I)I
    .registers 2

    .line 331
    sget-object v0, Lvm2/Lua;->luaP_opmodes:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static testAMode(I)Z
    .registers 2

    .line 340
    sget-object v0, Lvm2/Lua;->luaP_opmodes:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static testTMode(I)Z
    .registers 2

    .line 343
    sget-object v0, Lvm2/Lua;->luaP_opmodes:[I

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
