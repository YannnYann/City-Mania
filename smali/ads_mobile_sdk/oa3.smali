###### Class ads_mobile_sdk.oa3 (ads_mobile_sdk.oa3)
.class public final Lads_mobile_sdk/oa3;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Lads_mobile_sdk/fl3;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/fl3;Landroid/content/Context;Ljava/util/Map;Lads_mobile_sdk/ts3;)V
    .registers 14

    .line 44
    sget-object v0, Lads_mobile_sdk/lq0;->z:Lads_mobile_sdk/lq0;

    .line 47
    invoke-virtual {p6, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 48
    const-string v2, "JOzC6/ZgCwSvEVJCUSvoCbmKtBo3jCGU50ZjBIYBqYyjn6f8szB9X4gQSZiZdGxW"

    const-string v3, "WNDs4S5wyhYtg4w6BjmRCnxPTCgBBdruB89hqkSRK58="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 54
    iput-object p3, v1, Lads_mobile_sdk/oa3;->f:Lads_mobile_sdk/fl3;

    .line 55
    iput-object p4, v1, Lads_mobile_sdk/oa3;->g:Landroid/content/Context;

    .line 56
    iput-object p5, v1, Lads_mobile_sdk/oa3;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 8

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/oa3;->f:Lads_mobile_sdk/fl3;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lads_mobile_sdk/oa3;->g:Landroid/content/Context;

    iget-object v2, p0, Lads_mobile_sdk/oa3;->h:Ljava/util/Map;

    .line 64
    const-string v3, "up"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 65
    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 74
    monitor-enter p2

    .line 75
    :try_start_2d
    iget-object v0, p0, Lads_mobile_sdk/oa3;->f:Lads_mobile_sdk/fl3;

    sget-object v1, Lads_mobile_sdk/fl3;->a:Lads_mobile_sdk/fl3;

    if-ne v0, v1, :cond_60

    const/4 v0, 0x0

    .line 76
    aget-object v0, p1, v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 77
    invoke-static {v0, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 78
    invoke-virtual {p2, v3, v4}, Lads_mobile_sdk/xf;->K(J)V

    const/4 v0, 0x1

    .line 80
    aget-object v0, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 82
    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->G(J)V

    goto :goto_60

    :catchall_5e
    move-exception p1

    goto :goto_7a

    :cond_60
    :goto_60
    const/4 v0, 0x2

    .line 85
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->r(J)V

    const/4 v0, 0x3

    .line 86
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->v(J)V

    .line 87
    monitor-exit p2

    return-void

    .line 88
    :goto_7a
    monitor-exit p2
    :try_end_7b
    .catchall {:try_start_2d .. :try_end_7b} :catchall_5e

    throw p1
.end method
