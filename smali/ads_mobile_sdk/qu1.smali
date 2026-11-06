###### Class ads_mobile_sdk.qu1 (ads_mobile_sdk.qu1)
.class public final Lads_mobile_sdk/qu1;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x5

.field public static final g:I = 0x4

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9


# instance fields
.field private bitField0_:I

.field private comparisonOperatorCase_:I

.field private comparisonOperator_:Ljava/lang/Object;

.field private equalsTo_:Z

.field private matchValueCase_:I

.field private matchValue_:Ljava/lang/Object;

.field private path_:Lads_mobile_sdk/yh1$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/yh1$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/qu1;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/qu1;

    invoke-direct {v0}, Lads_mobile_sdk/qu1;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    .line 5
    const-class v1, Lads_mobile_sdk/qu1;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    .line 88
    iput v0, p0, Lads_mobile_sdk/qu1;->comparisonOperatorCase_:I

    .line 89
    invoke-static {}, Lads_mobile_sdk/vz0;->k()Lads_mobile_sdk/yh1$f;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/qu1;->path_:Lads_mobile_sdk/yh1$f;

    return-void
.end method

.method public static x()Lads_mobile_sdk/qu1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    return-object v0
.end method


# virtual methods
.method public final A()Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/qu1;->path_:Lads_mobile_sdk/yh1$f;

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .registers 3

    .line 260
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 261
    iget-object v0, p0, Lads_mobile_sdk/qu1;->matchValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_a
    const-string v0, ""

    return-object v0
.end method

.method public final C()Z
    .registers 3

    .line 417
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .registers 3

    .line 608
    iget v0, p0, Lads_mobile_sdk/qu1;->comparisonOperatorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .registers 3

    .line 335
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Z
    .registers 3

    .line 500
    iget v0, p0, Lads_mobile_sdk/qu1;->comparisonOperatorCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .registers 3

    .line 554
    iget v0, p0, Lads_mobile_sdk/qu1;->comparisonOperatorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .registers 3

    .line 373
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .registers 3

    .line 246
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object p2, Lads_mobile_sdk/ou1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_46

    const/4 p2, 0x2

    if-eq p1, p2, :cond_40

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_19
    const-class p1, Lads_mobile_sdk/qu1;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 30
    :cond_20
    sget-object p1, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    return-object p1

    .line 31
    :cond_23
    const-class v6, Lads_mobile_sdk/qu1;

    const-string v7, "equalsTo_"

    const-string v0, "matchValue_"

    const-string v1, "matchValueCase_"

    const-string v2, "comparisonOperator_"

    const-string v3, "comparisonOperatorCase_"

    const-string v4, "bitField0_"

    const-string v5, "path_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    sget-object p2, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    const-string p3, "\u0004\t\u0002\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u021a\u0002\u023b\u0000\u0003:\u0000\u0004<\u0000\u00053\u0000\u0006:\u0001\u0007:\u0001\u0008:\u0001\t\u1007\u0000"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_40
    new-instance p1, Lads_mobile_sdk/pu1;

    invoke-direct {p1}, Lads_mobile_sdk/pu1;-><init>()V

    return-object p1

    .line 47
    :cond_46
    new-instance p1, Lads_mobile_sdk/qu1;

    invoke-direct {p1}, Lads_mobile_sdk/qu1;-><init>()V

    return-object p1
.end method

.method public final v()Lads_mobile_sdk/qu1;
    .registers 3

    .line 431
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 432
    iget-object v0, p0, Lads_mobile_sdk/qu1;->matchValue_:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/qu1;

    return-object v0

    .line 433
    :cond_a
    sget-object v0, Lads_mobile_sdk/qu1;->DEFAULT_INSTANCE:Lads_mobile_sdk/qu1;

    return-object v0
.end method

.method public final w()Z
    .registers 3

    .line 343
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 344
    iget-object v0, p0, Lads_mobile_sdk/qu1;->matchValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final y()Z
    .registers 2

    .line 684
    iget-boolean v0, p0, Lads_mobile_sdk/qu1;->equalsTo_:Z

    return v0
.end method

.method public final z()D
    .registers 3

    .line 381
    iget v0, p0, Lads_mobile_sdk/qu1;->matchValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 382
    iget-object v0, p0, Lads_mobile_sdk/qu1;->matchValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method
