###### Class vm2.lib.Bit32Lib (vm2.lib.Bit32Lib)
.class public Lvm2/lib/Bit32Lib;
.super Lvm2/lib/TwoArgFunction;
.source "Bit32Lib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/Bit32Lib$Bit32LibV;,
        Lvm2/lib/Bit32Lib$Bit32Lib2;
    }
.end annotation


# static fields
.field private static mask:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static arshift(II)Lvm2/LuaValue;
    .registers 2

    if-ltz p1, :cond_8

    shr-int/2addr p0, p1

    .line 116
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_8
    neg-int p1, p1

    shl-int/2addr p0, p1

    .line 118
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static band(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 144
    :goto_2
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v2

    if-gt v1, v2, :cond_10

    .line 145
    invoke-virtual {p0, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_10
    invoke-static {v0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method private static bitsToValue(I)Lvm2/LuaValue;
    .registers 5

    if-gez p0, :cond_f

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 239
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    return-object p0
.end method

.method public static bnot(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p0, v0}, Lvm2/Varargs;->checkint(I)I

    move-result p0

    not-int p0, p0

    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static bor(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    :goto_2
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v2

    if-gt v1, v2, :cond_10

    .line 157
    invoke-virtual {p0, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    :cond_10
    invoke-static {v0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static btest(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, -0x1

    const/4 v1, 0x1

    move v2, v1

    .line 164
    :goto_3
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v3

    if-gt v2, v3, :cond_11

    .line 165
    invoke-virtual {p0, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 167
    :goto_15
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static bxor(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 172
    :goto_3
    invoke-virtual {p0}, Lvm2/Varargs;->narg()I

    move-result v3

    if-gt v2, v3, :cond_10

    .line 173
    invoke-virtual {p0, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    xor-int/2addr v0, v3

    add-int/2addr v2, v1

    goto :goto_3

    .line 178
    :cond_10
    :try_start_10
    new-instance p0, Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    .line 185
    const-class v1, Lvm2/lib/Bit32Lib;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_26

    goto :goto_29

    .line 187
    :catchall_26
    sget p0, Lvm2/lib/Bit32Lib;->mask:I

    xor-int/2addr v0, p0

    .line 189
    :goto_29
    invoke-static {v0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :array_2e
    .array-data 1
        0x69t
        0x6et
        0x66t
        0x6ft
        0x2et
        0x66t
        0x6ct
        0x6ft
        0x77t
        0x65t
        0x72t
        0x73t
        0x6ft
        0x66t
        0x74t
        0x2et
        0x74t
        0x68t
        0x65t
        0x6ft
        0x74t
        0x6ft
        0x77t
        0x6et
        0x2et
        0x63t
        0x69t
        0x74t
        0x79t
        0x2et
        0x43t
        0x69t
        0x74t
        0x79t
    .end array-data
.end method

.method public static extract(III)Lvm2/LuaValue;
    .registers 5

    if-gez p1, :cond_8

    const/4 v0, 0x2

    .line 212
    const-string v1, "field cannot be negative"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_8
    if-gez p2, :cond_10

    const/4 v0, 0x3

    .line 215
    const-string v1, "width must be postive"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_10
    add-int v0, p1, p2

    const/16 v1, 0x20

    if-le v0, v1, :cond_1b

    .line 218
    const-string v0, "trying to access non-existent bits"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_1b
    ushr-int/2addr p0, p1

    const/4 p1, -0x1

    sub-int/2addr v1, p2

    ushr-int/2addr p1, v1

    and-int/2addr p0, p1

    .line 220
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static lrotate(II)Lvm2/LuaValue;
    .registers 3

    if-gez p1, :cond_8

    neg-int p1, p1

    .line 194
    invoke-static {p0, p1}, Lvm2/lib/Bit32Lib;->rrotate(II)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_8
    and-int/lit8 p1, p1, 0x1f

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    .line 197
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static lshift(II)Lvm2/LuaValue;
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_18

    const/16 v0, -0x20

    if-gt p1, v0, :cond_9

    goto :goto_18

    :cond_9
    if-ltz p1, :cond_11

    shl-int/2addr p0, p1

    .line 136
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_11
    neg-int p1, p1

    ushr-int/2addr p0, p1

    .line 138
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    .line 134
    :cond_18
    :goto_18
    sget-object p0, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p0
.end method

.method public static replace(IIII)Lvm2/LuaValue;
    .registers 6

    if-gez p2, :cond_8

    const/4 v0, 0x3

    .line 225
    const-string v1, "field cannot be negative"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_8
    if-gez p3, :cond_10

    const/4 v0, 0x4

    .line 228
    const-string v1, "width must be postive"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    :cond_10
    add-int v0, p2, p3

    const/16 v1, 0x20

    if-le v0, v1, :cond_1b

    .line 231
    const-string v0, "trying to access non-existent bits"

    invoke-static {v0}, Lvm2/LuaValue;->error(Ljava/lang/String;)Lvm2/LuaValue;

    :cond_1b
    const/4 v0, -0x1

    sub-int/2addr v1, p3

    ushr-int p3, v0, v1

    shl-int v0, p3, p2

    not-int v0, v0

    and-int/2addr p0, v0

    and-int/2addr p1, p3

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    .line 235
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static rrotate(II)Lvm2/LuaValue;
    .registers 3

    if-gez p1, :cond_8

    neg-int p1, p1

    .line 203
    invoke-static {p0, p1}, Lvm2/lib/Bit32Lib;->lrotate(II)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_8
    and-int/lit8 p1, p1, 0x1f

    ushr-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    .line 206
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static rshift(II)Lvm2/LuaValue;
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_18

    const/16 v0, -0x20

    if-gt p1, v0, :cond_9

    goto :goto_18

    :cond_9
    if-ltz p1, :cond_11

    ushr-int/2addr p0, p1

    .line 126
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    :cond_11
    neg-int p1, p1

    shl-int/2addr p0, p1

    .line 128
    invoke-static {p0}, Lvm2/lib/Bit32Lib;->bitsToValue(I)Lvm2/LuaValue;

    move-result-object p0

    return-object p0

    .line 124
    :cond_18
    :goto_18
    sget-object p0, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p0
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 10

    .line 69
    new-instance p1, Lvm2/LuaTable;

    invoke-direct {p1}, Lvm2/LuaTable;-><init>()V

    .line 70
    const-string v5, "extract"

    const-string v6, "replace"

    const-string v0, "band"

    const-string v1, "bnot"

    const-string v2, "bor"

    const-string v3, "btest"

    const-string v4, "bxor"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const-class v1, Lvm2/lib/Bit32Lib$Bit32LibV;

    invoke-virtual {p0, p1, v1, v0}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 73
    const-string v0, "rrotate"

    const-string v1, "rshift"

    const-string v2, "arshift"

    const-string v3, "lrotate"

    const-string v4, "lshift"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-class v1, Lvm2/lib/Bit32Lib$Bit32Lib2;

    invoke-virtual {p0, p1, v1, v0}, Lvm2/lib/LibFunction;->bind(Lvm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 76
    const-string v0, "bit32"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 77
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_4d
    return-object p1
.end method

###### Class vm2.lib.Bit32Lib.Bit32Lib2 (vm2.lib.Bit32Lib$Bit32Lib2)
.class final Lvm2/lib/Bit32Lib$Bit32Lib2;
.super Lvm2/lib/TwoArgFunction;
.source "Bit32Lib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/Bit32Lib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bit32Lib2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 102
    iget v0, p0, Lvm2/lib/LibFunction;->opcode:I

    if-eqz v0, :cond_47

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    .line 109
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 107
    :cond_13
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/Bit32Lib;->rshift(II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 106
    :cond_20
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/Bit32Lib;->rrotate(II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 105
    :cond_2d
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/Bit32Lib;->lshift(II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 104
    :cond_3a
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/Bit32Lib;->lrotate(II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 103
    :cond_47
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lvm2/lib/Bit32Lib;->arshift(II)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.Bit32Lib.Bit32LibV (vm2.lib.Bit32Lib$Bit32LibV)
.class final Lvm2/lib/Bit32Lib$Bit32LibV;
.super Lvm2/lib/VarArgFunction;
.source "Bit32Lib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/Bit32Lib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bit32LibV"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 83
    iget v0, p0, Lvm2/lib/LibFunction;->opcode:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_4c

    .line 95
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 92
    :pswitch_b
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    .line 93
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 92
    invoke-static {v0, v2, v1, p1}, Lvm2/lib/Bit32Lib;->replace(IIII)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_21
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {p1, v1, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    invoke-static {v0, v2, p1}, Lvm2/lib/Bit32Lib;->extract(III)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_32
    invoke-static {p1}, Lvm2/lib/Bit32Lib;->bxor(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_37
    invoke-static {p1}, Lvm2/lib/Bit32Lib;->btest(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_3c
    invoke-static {p1}, Lvm2/lib/Bit32Lib;->bor(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_41
    invoke-static {p1}, Lvm2/lib/Bit32Lib;->bnot(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_46
    invoke-static {p1}, Lvm2/lib/Bit32Lib;->band(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_21
        :pswitch_b
    .end packed-switch
.end method
