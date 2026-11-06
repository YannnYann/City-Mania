###### Class ads_mobile_sdk.l92 (ads_mobile_sdk.l92)
.class public final Lads_mobile_sdk/l92;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Lads_mobile_sdk/ts3;)V
    .registers 12

    .line 31
    sget-object v0, Lads_mobile_sdk/lq0;->D:Lads_mobile_sdk/lq0;

    .line 34
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 35
    const-string v2, "0NIT52uMLryaCDSaYUNTuLrzAq4mHtZo+PB3KlcFFwbeXateEvxa704CMxtRHbLJ"

    const-string v3, "s+ypGKrTCojCsgwPi6TAeYKzOJO0imQtS3SqSWBWtUM="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 41
    iput-object p3, v1, Lads_mobile_sdk/l92;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 5

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/l92;->f:Ljava/util/Map;

    .line 44
    const-string v1, "vst"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_d

    return-void

    .line 50
    :cond_d
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 52
    monitor-enter p2

    .line 54
    :try_start_1e
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lads_mobile_sdk/rg;->a(I)Lads_mobile_sdk/rg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rg;

    .line 55
    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/rg;)V

    .line 57
    monitor-exit p2

    return-void

    :catchall_31
    move-exception p1

    .line 58
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw p1
.end method
