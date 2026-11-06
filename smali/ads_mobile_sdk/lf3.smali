###### Class ads_mobile_sdk.lf3 (ads_mobile_sdk.lf3)
.class public final Lads_mobile_sdk/lf3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/iy3;

.field public final b:J

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/iy3;JJLjava/lang/String;)V
    .registers 7

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lads_mobile_sdk/lf3;->a:Lads_mobile_sdk/iy3;

    .line 504
    iput-wide p2, p0, Lads_mobile_sdk/lf3;->b:J

    .line 505
    iput-wide p4, p0, Lads_mobile_sdk/lf3;->c:J

    .line 506
    iput-object p6, p0, Lads_mobile_sdk/lf3;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lads_mobile_sdk/iy3;[BZ)Lads_mobile_sdk/lf3;
    .registers 11

    .line 482
    move-object v1, p0

    check-cast v1, Lads_mobile_sdk/z24;

    invoke-virtual {v1}, Lads_mobile_sdk/z24;->a()V

    .line 483
    iget-object p0, v1, Lads_mobile_sdk/z24;->a:Lads_mobile_sdk/g44;

    .line 484
    new-instance v0, Lads_mobile_sdk/p34;

    array-length v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 485
    new-array p1, v3, [B

    goto :goto_17

    :cond_11
    new-array v4, v2, [B

    invoke-static {p1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    .line 486
    :goto_17
    invoke-direct {v0, p1}, Lads_mobile_sdk/p34;-><init>([B)V

    .line 487
    iget-object p0, p0, Lads_mobile_sdk/g44;->c:Lads_mobile_sdk/u34;

    iput-object v0, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    .line 488
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {v1, p0}, Lads_mobile_sdk/z24;->a(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 489
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 p1, 0x1

    .line 490
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 p1, 0x2

    .line 491
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 494
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lads_mobile_sdk/z24;->a(JLjava/util/Optional;)Ljava/lang/Object;

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "3.975916745."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lads_mobile_sdk/iy3;->b()[B

    move-result-object v2

    .line 501
    invoke-static {v3}, Lads_mobile_sdk/hi;->a(Z)Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6a

    .line 503
    const-string p2, "-s"

    goto :goto_6c

    :cond_6a
    const-string p2, ""

    :goto_6c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 505
    new-instance v0, Lads_mobile_sdk/lf3;

    move-wide v4, p0

    move-wide v2, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/lf3;-><init>(Lads_mobile_sdk/iy3;JJLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/lf3;->a:Lads_mobile_sdk/iy3;

    iget-wide v1, p0, Lads_mobile_sdk/lf3;->b:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    check-cast v0, Lads_mobile_sdk/z24;

    invoke-virtual {v0, v1, v2, p1}, Lads_mobile_sdk/z24;->a(JLjava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lads_mobile_sdk/hi;->a(Z)Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/HashMap;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/lf3;->a:Lads_mobile_sdk/iy3;

    iget-wide v1, p0, Lads_mobile_sdk/lf3;->c:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    check-cast v0, Lads_mobile_sdk/z24;

    invoke-virtual {v0, v1, v2, p1}, Lads_mobile_sdk/z24;->a(JLjava/util/Optional;)Ljava/lang/Object;

    return-void
.end method
