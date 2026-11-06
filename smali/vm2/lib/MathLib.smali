###### Class vm2.lib.MathLib (vm2.lib.MathLib)
.class public Lvm2/lib/MathLib;
.super Lvm2/lib/TwoArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/MathLib$abs;,
        Lvm2/lib/MathLib$ceil;,
        Lvm2/lib/MathLib$cos;,
        Lvm2/lib/MathLib$deg;,
        Lvm2/lib/MathLib$exp;,
        Lvm2/lib/MathLib$floor;,
        Lvm2/lib/MathLib$fmod;,
        Lvm2/lib/MathLib$frexp;,
        Lvm2/lib/MathLib$ldexp;,
        Lvm2/lib/MathLib$max;,
        Lvm2/lib/MathLib$min;,
        Lvm2/lib/MathLib$modf;,
        Lvm2/lib/MathLib$pow;,
        Lvm2/lib/MathLib$random;,
        Lvm2/lib/MathLib$randomseed;,
        Lvm2/lib/MathLib$rad;,
        Lvm2/lib/MathLib$sin;,
        Lvm2/lib/MathLib$sqrt;,
        Lvm2/lib/MathLib$tan;,
        Lvm2/lib/MathLib$BinaryOp;,
        Lvm2/lib/MathLib$UnaryOp;
    }
.end annotation


# static fields
.field public static MATHLIB:Lvm2/lib/MathLib;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    .line 96
    sput-object p0, Lvm2/lib/MathLib;->MATHLIB:Lvm2/lib/MathLib;

    return-void
.end method

.method public static dpow(DD)Lvm2/LuaValue;
    .registers 5

    .line 269
    sget-object v0, Lvm2/lib/MathLib;->MATHLIB:Lvm2/lib/MathLib;

    if-eqz v0, :cond_9

    .line 270
    invoke-virtual {v0, p0, p1, p2, p3}, Lvm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide p0

    goto :goto_d

    .line 271
    :cond_9
    invoke-static {p0, p1, p2, p3}, Lvm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide p0

    .line 268
    :goto_d
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0
.end method

.method public static dpow_d(DD)D
    .registers 5

    .line 274
    sget-object v0, Lvm2/lib/MathLib;->MATHLIB:Lvm2/lib/MathLib;

    if-eqz v0, :cond_9

    .line 275
    invoke-virtual {v0, p0, p1, p2, p3}, Lvm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide p0

    return-wide p0

    .line 276
    :cond_9
    invoke-static {p0, p1, p2, p3}, Lvm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dpow_default(DD)D
    .registers 12

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_f

    neg-double p2, p2

    .line 291
    invoke-static {p0, p1, p2, p3}, Lvm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide p0

    div-double/2addr v3, p0

    return-wide v3

    :cond_f
    double-to-int v2, p2

    move-wide v5, p0

    :goto_11
    if-lez v2, :cond_1c

    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_18

    mul-double/2addr v3, v5

    :cond_18
    shr-int/lit8 v2, v2, 0x1

    mul-double/2addr v5, v5

    goto :goto_11

    :cond_1c
    int-to-double v5, v2

    sub-double/2addr p2, v5

    cmpl-double v0, p2, v0

    if-lez v0, :cond_3a

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    mul-double/2addr p2, v0

    double-to-int p2, p2

    :goto_26
    const p3, 0xffff

    and-int/2addr p3, p2

    if-eqz p3, :cond_3a

    .line 300
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const p3, 0x8000

    and-int/2addr p3, p2

    if-eqz p3, :cond_37

    mul-double/2addr v3, p0

    :cond_37
    shl-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_3a
    return-wide v3
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 106
    new-instance p1, Lvm2/LuaTable;

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-direct {p1, v0, v1}, Lvm2/LuaTable;-><init>(II)V

    .line 107
    new-instance v0, Lvm2/lib/MathLib$abs;

    invoke-direct {v0}, Lvm2/lib/MathLib$abs;-><init>()V

    const-string v1, "abs"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 108
    new-instance v0, Lvm2/lib/MathLib$ceil;

    invoke-direct {v0}, Lvm2/lib/MathLib$ceil;-><init>()V

    const-string v1, "ceil"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 109
    new-instance v0, Lvm2/lib/MathLib$cos;

    invoke-direct {v0}, Lvm2/lib/MathLib$cos;-><init>()V

    const-string v1, "cos"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 110
    new-instance v0, Lvm2/lib/MathLib$deg;

    invoke-direct {v0}, Lvm2/lib/MathLib$deg;-><init>()V

    const-string v1, "deg"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 111
    new-instance v0, Lvm2/lib/MathLib$exp;

    invoke-direct {v0, p0}, Lvm2/lib/MathLib$exp;-><init>(Lvm2/lib/MathLib;)V

    const-string v1, "exp"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 112
    new-instance v0, Lvm2/lib/MathLib$floor;

    invoke-direct {v0}, Lvm2/lib/MathLib$floor;-><init>()V

    const-string v1, "floor"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 113
    new-instance v0, Lvm2/lib/MathLib$fmod;

    invoke-direct {v0}, Lvm2/lib/MathLib$fmod;-><init>()V

    const-string v1, "fmod"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 114
    new-instance v0, Lvm2/lib/MathLib$frexp;

    invoke-direct {v0}, Lvm2/lib/MathLib$frexp;-><init>()V

    const-string v1, "frexp"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 115
    const-string v0, "huge"

    sget-object v1, Lvm2/LuaDouble;->POSINF:Lvm2/LuaDouble;

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 116
    new-instance v0, Lvm2/lib/MathLib$ldexp;

    invoke-direct {v0}, Lvm2/lib/MathLib$ldexp;-><init>()V

    const-string v1, "ldexp"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 117
    new-instance v0, Lvm2/lib/MathLib$max;

    invoke-direct {v0}, Lvm2/lib/MathLib$max;-><init>()V

    const-string v1, "max"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 118
    new-instance v0, Lvm2/lib/MathLib$min;

    invoke-direct {v0}, Lvm2/lib/MathLib$min;-><init>()V

    const-string v1, "min"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 119
    new-instance v0, Lvm2/lib/MathLib$modf;

    invoke-direct {v0}, Lvm2/lib/MathLib$modf;-><init>()V

    const-string v1, "modf"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 120
    const-string v0, "pi"

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p1, v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;D)V

    .line 121
    new-instance v0, Lvm2/lib/MathLib$pow;

    invoke-direct {v0}, Lvm2/lib/MathLib$pow;-><init>()V

    const-string v1, "pow"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 123
    new-instance v0, Lvm2/lib/MathLib$random;

    invoke-direct {v0}, Lvm2/lib/MathLib$random;-><init>()V

    const-string v1, "random"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 124
    new-instance v1, Lvm2/lib/MathLib$randomseed;

    invoke-direct {v1, v0}, Lvm2/lib/MathLib$randomseed;-><init>(Lvm2/lib/MathLib$random;)V

    const-string v0, "randomseed"

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 125
    new-instance v0, Lvm2/lib/MathLib$rad;

    invoke-direct {v0}, Lvm2/lib/MathLib$rad;-><init>()V

    const-string v1, "rad"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 126
    new-instance v0, Lvm2/lib/MathLib$sin;

    invoke-direct {v0}, Lvm2/lib/MathLib$sin;-><init>()V

    const-string v1, "sin"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 127
    new-instance v0, Lvm2/lib/MathLib$sqrt;

    invoke-direct {v0}, Lvm2/lib/MathLib$sqrt;-><init>()V

    const-string v1, "sqrt"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 128
    new-instance v0, Lvm2/lib/MathLib$tan;

    invoke-direct {v0}, Lvm2/lib/MathLib$tan;-><init>()V

    const-string v1, "tan"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 129
    const-string v0, "math"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 130
    const-string v1, "package"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_f5

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    :cond_f5
    return-object p1
.end method

.method public dpow_lib(DD)D
    .registers 5

    .line 283
    invoke-static {p1, p2, p3, p4}, Lvm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.BinaryOp (vm2.lib.MathLib$BinaryOp)
.class public abstract Lvm2/lib/MathLib$BinaryOp;
.super Lvm2/lib/TwoArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BinaryOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call(DD)D
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 143
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lvm2/lib/MathLib$BinaryOp;->call(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.UnaryOp (vm2.lib.MathLib$UnaryOp)
.class public abstract Lvm2/lib/MathLib$UnaryOp;
.super Lvm2/lib/OneArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnaryOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call(D)D
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 136
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lvm2/lib/MathLib$UnaryOp;->call(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.abs (vm2.lib.MathLib$abs)
.class final Lvm2/lib/MathLib$abs;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "abs"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.ceil (vm2.lib.MathLib$ceil)
.class final Lvm2/lib/MathLib$ceil;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ceil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.cos (vm2.lib.MathLib$cos)
.class final Lvm2/lib/MathLib$cos;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "cos"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 150
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.deg (vm2.lib.MathLib$deg)
.class final Lvm2/lib/MathLib$deg;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "deg"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.exp (vm2.lib.MathLib$exp)
.class final Lvm2/lib/MathLib$exp;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "exp"
.end annotation


# instance fields
.field final mathlib:Lvm2/lib/MathLib;


# direct methods
.method public constructor <init>(Lvm2/lib/MathLib;)V
    .registers 2

    .line 160
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    .line 161
    iput-object p1, p0, Lvm2/lib/MathLib$exp;->mathlib:Lvm2/lib/MathLib;

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 6

    .line 164
    iget-object v0, p0, Lvm2/lib/MathLib$exp;->mathlib:Lvm2/lib/MathLib;

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-virtual {v0, v1, v2, p1, p2}, Lvm2/lib/MathLib;->dpow_lib(DD)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.floor (vm2.lib.MathLib$floor)
.class final Lvm2/lib/MathLib$floor;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "floor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 152
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.fmod (vm2.lib.MathLib$fmod)
.class final Lvm2/lib/MathLib$fmod;
.super Lvm2/lib/TwoArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "fmod"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 170
    invoke-virtual {p1}, Lvm2/LuaValue;->islong()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lvm2/LuaValue;->islong()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 171
    invoke-virtual {p1}, Lvm2/LuaValue;->tolong()J

    move-result-wide v0

    invoke-virtual {p2}, Lvm2/LuaValue;->tolong()J

    move-result-wide p1

    rem-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1b
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.frexp (vm2.lib.MathLib$frexp)
.class Lvm2/lib/MathLib$frexp;
.super Lvm2/lib/VarArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "frexp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_12

    .line 191
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    invoke-static {p1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 192
    :cond_12
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffL

    and-long/2addr v2, v0

    const-wide/high16 v4, 0x10000000000000L

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_29

    const-wide/high16 v4, 0x3ca0000000000000L

    goto :goto_2b

    :cond_29
    const-wide/high16 v4, -0x4360000000000000L    # -1.1102230246251565E-16

    :goto_2b
    mul-double/2addr v2, v4

    const/16 p1, 0x34

    shr-long/2addr v0, p1

    long-to-int p1, v0

    and-int/lit16 p1, p1, 0x7ff

    add-int/lit16 p1, p1, -0x3fe

    int-to-double v0, p1

    .line 195
    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.ldexp (vm2.lib.MathLib$ldexp)
.class final Lvm2/lib/MathLib$ldexp;
.super Lvm2/lib/MathLib$BinaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ldexp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Lvm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(DD)D
    .registers 7

    double-to-long p3, p3

    const-wide/16 v0, 0x3ff

    add-long/2addr p3, v0

    const/16 v0, 0x34

    shl-long/2addr p3, v0

    .line 179
    invoke-static {p3, p4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p3

    mul-double/2addr p1, p3

    return-wide p1
.end method

###### Class vm2.lib.MathLib.max (vm2.lib.MathLib$max)
.class Lvm2/lib/MathLib$max;
.super Lvm2/lib/VarArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "max"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x2

    :goto_a
    if-gt v2, v1, :cond_1a

    .line 203
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method

###### Class vm2.lib.MathLib.min (vm2.lib.MathLib$min)
.class Lvm2/lib/MathLib$min;
.super Lvm2/lib/VarArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "min"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x2

    :goto_a
    if-gt v2, v1, :cond_1a

    .line 214
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkvalue(I)Lvm2/LuaValue;

    move-result-object v3

    .line 215
    invoke-virtual {v3, v0}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, v3

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method

###### Class vm2.lib.MathLib.modf (vm2.lib.MathLib$modf)
.class Lvm2/lib/MathLib$modf;
.super Lvm2/lib/VarArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "modf"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 223
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lvm2/LuaValue;->islong()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 226
    :cond_15
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    cmpl-double p1, v3, v1

    if-lez p1, :cond_22

    .line 228
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    goto :goto_26

    :cond_22
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    :goto_26
    cmpl-double p1, v3, v5

    if-nez p1, :cond_2b

    goto :goto_2d

    :cond_2b
    sub-double v1, v3, v5

    .line 231
    :goto_2d
    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.pow (vm2.lib.MathLib$pow)
.class final Lvm2/lib/MathLib$pow;
.super Lvm2/lib/MathLib$BinaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pow"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Lvm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(DD)D
    .registers 5

    .line 184
    invoke-static {p1, p2, p3, p4}, Lvm2/lib/MathLib;->dpow_default(DD)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.rad (vm2.lib.MathLib$rad)
.class final Lvm2/lib/MathLib$rad;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rad"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.random (vm2.lib.MathLib$random)
.class Lvm2/lib/MathLib$random;
.super Lvm2/lib/LibFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "random"
.end annotation


# instance fields
.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 235
    invoke-direct {p0}, Lvm2/lib/LibFunction;-><init>()V

    .line 236
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lvm2/lib/MathLib$random;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 238
    iget-object v0, p0, Lvm2/lib/MathLib$random;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 241
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 242
    const-string v1, "interval is empty"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 243
    :cond_c
    iget-object v1, p0, Lvm2/lib/MathLib$random;->random:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 246
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 247
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    if-ge p2, p1, :cond_10

    const/4 v0, 0x2

    .line 248
    const-string v1, "interval is empty"

    invoke-static {v0, v1}, Lvm2/LuaValue;->argerror(ILjava/lang/String;)Lvm2/LuaValue;

    .line 249
    :cond_10
    iget-object v0, p0, Lvm2/lib/MathLib$random;->random:Ljava/util/Random;

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.MathLib.randomseed (vm2.lib.MathLib$randomseed)
.class Lvm2/lib/MathLib$randomseed;
.super Lvm2/lib/OneArgFunction;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "randomseed"
.end annotation


# instance fields
.field final random:Lvm2/lib/MathLib$random;


# direct methods
.method public constructor <init>(Lvm2/lib/MathLib$random;)V
    .registers 2

    .line 256
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    .line 257
    iput-object p1, p0, Lvm2/lib/MathLib$randomseed;->random:Lvm2/lib/MathLib$random;

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 260
    invoke-virtual {p1}, Lvm2/LuaValue;->checklong()J

    move-result-wide v0

    .line 261
    iget-object p1, p0, Lvm2/lib/MathLib$randomseed;->random:Lvm2/lib/MathLib$random;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p1, Lvm2/lib/MathLib$random;->random:Ljava/util/Random;

    .line 262
    sget-object p1, Lvm2/LuaValue;->NONE:Lvm2/LuaValue;

    return-object p1
.end method

###### Class vm2.lib.MathLib.sin (vm2.lib.MathLib$sin)
.class final Lvm2/lib/MathLib$sin;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sin"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.sqrt (vm2.lib.MathLib$sqrt)
.class final Lvm2/lib/MathLib$sqrt;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sqrt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.MathLib.tan (vm2.lib.MathLib$tan)
.class final Lvm2/lib/MathLib$tan;
.super Lvm2/lib/MathLib$UnaryOp;
.source "MathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tan"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    return-wide p1
.end method
