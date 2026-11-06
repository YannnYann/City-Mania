###### Class ads_mobile_sdk.ne3 (ads_mobile_sdk.ne3)
.class public final Lads_mobile_sdk/ne3;
.super Lads_mobile_sdk/vz0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/uw1;


# static fields
.field private static final DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lads_mobile_sdk/ne3;
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/ne3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ne3;

    invoke-direct {v0}, Lads_mobile_sdk/ne3;-><init>()V

    .line 4
    sput-object v0, Lads_mobile_sdk/ne3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

    .line 5
    const-class v1, Lads_mobile_sdk/ne3;

    invoke-static {v1, v0}, Lads_mobile_sdk/vz0;->a(Ljava/lang/Class;Lads_mobile_sdk/vz0;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lads_mobile_sdk/vz0;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    return-void
.end method

.method public static w()Lads_mobile_sdk/ne3;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/ne3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .registers 3

    .line 154
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .registers 3

    .line 230
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .registers 3

    .line 192
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .registers 3

    .line 90
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lads_mobile_sdk/vz0$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lads_mobile_sdk/le3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_34

    const/4 p2, 0x3

    if-eq p1, p2, :cond_23

    const/4 p2, 0x4

    if-eq p1, p2, :cond_20

    const/4 p2, 0x5

    if-eq p1, p2, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_19
    const-class p1, Lads_mobile_sdk/ne3;

    invoke-static {p1}, Lads_mobile_sdk/vz0;->b(Ljava/lang/Class;)Lads_mobile_sdk/aj2;

    move-result-object p1

    return-object p1

    .line 23
    :cond_20
    sget-object p1, Lads_mobile_sdk/ne3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

    return-object p1

    .line 24
    :cond_23
    const-string p1, "value_"

    const-string p2, "valueCase_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 31
    sget-object p2, Lads_mobile_sdk/ne3;->DEFAULT_INSTANCE:Lads_mobile_sdk/ne3;

    const-string p3, "\u0004\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u023b\u0000\u0002:\u0000\u00035\u0000\u00043\u0000"

    invoke-static {p2, p3, p1}, Lads_mobile_sdk/vz0;->a(Lads_mobile_sdk/tw1;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :cond_34
    new-instance p1, Lads_mobile_sdk/me3;

    invoke-direct {p1}, Lads_mobile_sdk/me3;-><init>()V

    return-object p1

    .line 33
    :cond_3a
    new-instance p1, Lads_mobile_sdk/ne3;

    invoke-direct {p1}, Lads_mobile_sdk/ne3;-><init>()V

    return-object p1
.end method

.method public final v()Z
    .registers 3

    .line 162
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 163
    iget-object v0, p0, Lads_mobile_sdk/ne3;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final x()D
    .registers 3

    .line 238
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 239
    iget-object v0, p0, Lads_mobile_sdk/ne3;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final y()J
    .registers 3

    .line 200
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 201
    iget-object v0, p0, Lads_mobile_sdk/ne3;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final z()Ljava/lang/String;
    .registers 3

    .line 99
    iget v0, p0, Lads_mobile_sdk/ne3;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/ne3;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_a
    const-string v0, ""

    return-object v0
.end method
