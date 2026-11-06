###### Class ads_mobile_sdk.ma2 (ads_mobile_sdk.ma2)
.class public final Lads_mobile_sdk/ma2;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Lads_mobile_sdk/ts3;)V
    .registers 12

    .line 31
    sget-object v0, Lads_mobile_sdk/lq0;->w:Lads_mobile_sdk/lq0;

    .line 34
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 35
    const-string v2, "6rtGdXQ0NfJtjALp1SU3EV8a8C+xU3leWzJkhweDj7Qc7b2AmiMUFfEFTlWg/y94"

    const-string v3, "2IeAOqgxQ9MuURMRwplUp+eIWsDyl3j/iScS6NWDc6A="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 41
    iput-object p3, v1, Lads_mobile_sdk/ma2;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 8

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/ma2;->f:Ljava/util/Map;

    .line 54
    const-string v1, "ntc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lads_mobile_sdk/ma2;->f:Ljava/util/Map;

    .line 55
    const-string v2, "vs"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lads_mobile_sdk/ma2;->f:Ljava/util/Map;

    .line 56
    const-string v3, "vf"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 66
    monitor-enter p2

    const/4 v0, 0x0

    .line 67
    :try_start_32
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->q(J)V

    const/4 v0, 0x1

    .line 68
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_52

    .line 70
    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->F(J)V

    goto :goto_52

    :catchall_50
    move-exception p1

    goto :goto_7f

    :cond_52
    :goto_52
    const/4 v0, 0x2

    .line 72
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_62

    .line 74
    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->c(J)V

    .line 76
    :cond_62
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_7d

    aget-object p1, p1, v1

    if-eqz p1, :cond_7d

    .line 77
    check-cast p1, Ljava/lang/Long;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lads_mobile_sdk/rh;->a(I)Lads_mobile_sdk/rh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rh;

    .line 79
    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->d(Lads_mobile_sdk/rh;)V

    .line 82
    :cond_7d
    monitor-exit p2

    return-void

    .line 83
    :goto_7f
    monitor-exit p2
    :try_end_80
    .catchall {:try_start_32 .. :try_end_80} :catchall_50

    throw p1
.end method
