###### Class vm2.lib.jse.JseMathLib (vm2.lib.jse.JseMathLib)
.class public Lvm2/lib/jse/JseMathLib;
.super Lvm2/lib/MathLib;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/lib/jse/JseMathLib$acos;,
        Lvm2/lib/jse/JseMathLib$asin;,
        Lvm2/lib/jse/JseMathLib$atan2;,
        Lvm2/lib/jse/JseMathLib$cosh;,
        Lvm2/lib/jse/JseMathLib$exp;,
        Lvm2/lib/jse/JseMathLib$log;,
        Lvm2/lib/jse/JseMathLib$pow;,
        Lvm2/lib/jse/JseMathLib$sinh;,
        Lvm2/lib/jse/JseMathLib$tanh;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lvm2/lib/MathLib;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 77
    invoke-super {p0, p1, p2}, Lvm2/lib/MathLib;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 78
    const-string p1, "math"

    invoke-virtual {p2, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    .line 79
    new-instance p2, Lvm2/lib/jse/JseMathLib$acos;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$acos;-><init>()V

    const-string v0, "acos"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 80
    new-instance p2, Lvm2/lib/jse/JseMathLib$asin;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$asin;-><init>()V

    const-string v0, "asin"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 81
    new-instance p2, Lvm2/lib/jse/JseMathLib$atan2;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$atan2;-><init>()V

    .line 82
    const-string v0, "atan"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 83
    const-string v0, "atan2"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 84
    new-instance p2, Lvm2/lib/jse/JseMathLib$cosh;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$cosh;-><init>()V

    const-string v0, "cosh"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 85
    new-instance p2, Lvm2/lib/jse/JseMathLib$exp;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$exp;-><init>()V

    const-string v0, "exp"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 86
    new-instance p2, Lvm2/lib/jse/JseMathLib$log;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$log;-><init>()V

    const-string v0, "log"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 87
    new-instance p2, Lvm2/lib/jse/JseMathLib$pow;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$pow;-><init>()V

    const-string v0, "pow"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 88
    new-instance p2, Lvm2/lib/jse/JseMathLib$sinh;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$sinh;-><init>()V

    const-string v0, "sinh"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 89
    new-instance p2, Lvm2/lib/jse/JseMathLib$tanh;

    invoke-direct {p2}, Lvm2/lib/jse/JseMathLib$tanh;-><init>()V

    const-string v0, "tanh"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object p1
.end method

.method public dpow_lib(DD)D
    .registers 5

    .line 116
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.acos (vm2.lib.jse.JseMathLib$acos)
.class final Lvm2/lib/jse/JseMathLib$acos;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "acos"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.asin (vm2.lib.jse.JseMathLib$asin)
.class final Lvm2/lib/jse/JseMathLib$asin;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asin"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.atan2 (vm2.lib.jse.JseMathLib$atan2)
.class final Lvm2/lib/jse/JseMathLib$atan2;
.super Lvm2/lib/TwoArgFunction;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "atan2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 97
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, v2, v3}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.JseMathLib.cosh (vm2.lib.jse.JseMathLib$cosh)
.class final Lvm2/lib/jse/JseMathLib$cosh;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "cosh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.exp (vm2.lib.jse.JseMathLib$exp)
.class final Lvm2/lib/jse/JseMathLib$exp;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "exp"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.log (vm2.lib.jse.JseMathLib$log)
.class final Lvm2/lib/jse/JseMathLib$log;
.super Lvm2/lib/TwoArgFunction;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "log"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 104
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 105
    invoke-virtual {p2, v2, v3}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_1a

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    div-double/2addr v0, p1

    .line 107
    :cond_1a
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class vm2.lib.jse.JseMathLib.pow (vm2.lib.jse.JseMathLib$pow)
.class final Lvm2/lib/jse/JseMathLib$pow;
.super Lvm2/lib/MathLib$BinaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pow"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Lvm2/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(DD)D
    .registers 5

    .line 110
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.sinh (vm2.lib.jse.JseMathLib$sinh)
.class final Lvm2/lib/jse/JseMathLib$sinh;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sinh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    return-wide p1
.end method

###### Class vm2.lib.jse.JseMathLib.tanh (vm2.lib.jse.JseMathLib$tanh)
.class final Lvm2/lib/jse/JseMathLib$tanh;
.super Lvm2/lib/MathLib$UnaryOp;
.source "JseMathLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tanh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lvm2/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public call(D)D
    .registers 3

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide p1

    return-wide p1
.end method
