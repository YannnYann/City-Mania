###### Class ads_mobile_sdk.xc1 (ads_mobile_sdk.xc1)
.class public final Lads_mobile_sdk/xc1;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;

.field public final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Landroid/content/Context;Lads_mobile_sdk/ts3;)V
    .registers 13

    .line 35
    sget-object v0, Lads_mobile_sdk/lq0;->E:Lads_mobile_sdk/lq0;

    .line 38
    invoke-virtual {p5, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 39
    const-string v2, "GauOpnoxf6p5GA2NJIw5NcmKJH7taAuqPyfYH3Rob5Rpa2mvs/g2TNVoAum1Tckt"

    const-string v3, "CI381sdL7APBiiyTOOg2qni/3Q0HvOQXrSqa7G+2ZqY="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 45
    iput-object p3, v1, Lads_mobile_sdk/xc1;->f:Ljava/util/Map;

    .line 46
    iput-object p4, v1, Lads_mobile_sdk/xc1;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 6

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/xc1;->f:Ljava/util/Map;

    const-string v1, "evt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 50
    iget-object v1, p0, Lads_mobile_sdk/xc1;->g:Landroid/content/Context;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 53
    invoke-static {}, Lads_mobile_sdk/lg;->v()Lads_mobile_sdk/kg;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Long;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/kg;->a(J)Lads_mobile_sdk/kg;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Long;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Lads_mobile_sdk/rh;->a(I)Lads_mobile_sdk/rh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/rh;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/kg;->a(Lads_mobile_sdk/rh;)Lads_mobile_sdk/kg;

    move-result-object v0

    const/4 v1, 0x2

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Long;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lads_mobile_sdk/rh;->a(I)Lads_mobile_sdk/rh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rh;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/kg;->b(Lads_mobile_sdk/rh;)Lads_mobile_sdk/kg;

    move-result-object p1

    .line 58
    monitor-enter p2

    .line 59
    :try_start_5c
    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lg;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/lg;)V

    .line 60
    monitor-exit p2

    return-void

    :catchall_67
    move-exception p1

    .line 61
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_67

    throw p1
.end method
