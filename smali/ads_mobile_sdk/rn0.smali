###### Class ads_mobile_sdk.rn0 (ads_mobile_sdk.rn0)
.class public final Lads_mobile_sdk/rn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/vv2;


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ts3;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ts3;Lads_mobile_sdk/tx;J)V
    .registers 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/rn0;->a:Lads_mobile_sdk/ks1;

    .line 23
    iput-object p2, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    .line 24
    iput-object p3, p0, Lads_mobile_sdk/rn0;->c:Lads_mobile_sdk/tx;

    .line 25
    iput-wide p4, p0, Lads_mobile_sdk/rn0;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/iv2;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_49

    .line 30
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_49

    .line 35
    :cond_e
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->w()Lads_mobile_sdk/yn;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/rn0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 37
    iget-object p1, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->s2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0

    .line 41
    :cond_22
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->y()Lads_mobile_sdk/jv2;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/jv2;->x()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object p1, p0, Lads_mobile_sdk/rn0;->c:Lads_mobile_sdk/tx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 43
    iget-wide v3, p0, Lads_mobile_sdk/rn0;->d:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    if-eqz v0, :cond_48

    .line 46
    iget-object p1, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->t2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    :cond_48
    return v0

    .line 47
    :cond_49
    :goto_49
    iget-object p1, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->r2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0
.end method

.method public final b(Lads_mobile_sdk/iv2;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 52
    invoke-static {}, Lads_mobile_sdk/iv2;->x()Lads_mobile_sdk/iv2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lads_mobile_sdk/vz0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_24

    .line 56
    :cond_e
    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->w()Lads_mobile_sdk/yn;

    move-result-object p1

    iget-object v1, p0, Lads_mobile_sdk/rn0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_22

    .line 57
    iget-object p1, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->q2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0

    :cond_22
    const/4 p1, 0x1

    return p1

    .line 58
    :cond_24
    :goto_24
    iget-object p1, p0, Lads_mobile_sdk/rn0;->b:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->p2:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    return v0
.end method
