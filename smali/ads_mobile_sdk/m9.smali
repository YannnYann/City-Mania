###### Class ads_mobile_sdk.m9 (ads_mobile_sdk.m9)
.class public final Lads_mobile_sdk/m9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/xh2;

.field public final b:Lads_mobile_sdk/xh2;

.field public final c:Z

.field public final d:Lads_mobile_sdk/l40;

.field public final e:Lads_mobile_sdk/x91;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/m9;->d:Lads_mobile_sdk/l40;

    .line 37
    iput-object p2, p0, Lads_mobile_sdk/m9;->e:Lads_mobile_sdk/x91;

    .line 38
    iput-object p3, p0, Lads_mobile_sdk/m9;->a:Lads_mobile_sdk/xh2;

    if-nez p4, :cond_10

    .line 40
    sget-object p1, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    iput-object p1, p0, Lads_mobile_sdk/m9;->b:Lads_mobile_sdk/xh2;

    goto :goto_12

    .line 42
    :cond_10
    iput-object p4, p0, Lads_mobile_sdk/m9;->b:Lads_mobile_sdk/xh2;

    .line 44
    :goto_12
    iput-boolean p5, p0, Lads_mobile_sdk/m9;->c:Z

    return-void
.end method

.method public static a(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)Lads_mobile_sdk/m9;
    .registers 13

    if-eqz p0, :cond_4d

    if-eqz p1, :cond_45

    if-eqz p2, :cond_3d

    .line 78
    sget-object v0, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_35

    .line 81
    sget-object v0, Lads_mobile_sdk/l40;->b:Lads_mobile_sdk/l40;

    const-string v1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v0, :cond_1b

    sget-object v0, Lads_mobile_sdk/xh2;->b:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_15

    goto :goto_1b

    .line 83
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_1b
    :goto_1b
    sget-object v0, Lads_mobile_sdk/x91;->b:Lads_mobile_sdk/x91;

    if-ne p1, v0, :cond_2a

    sget-object v0, Lads_mobile_sdk/xh2;->b:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_24

    goto :goto_2a

    .line 87
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_2a
    :goto_2a
    new-instance v2, Lads_mobile_sdk/m9;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/m9;-><init>(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)V

    return-object v2

    .line 89
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImpressionType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CreativeType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
