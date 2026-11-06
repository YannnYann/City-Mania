###### Class ads_mobile_sdk.sp0 (ads_mobile_sdk.sp0)
.class public final Lads_mobile_sdk/sp0;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Lads_mobile_sdk/na;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/na;Lads_mobile_sdk/ts3;)V
    .registers 12

    .line 28
    sget-object v0, Lads_mobile_sdk/lq0;->u:Lads_mobile_sdk/lq0;

    .line 31
    invoke-virtual {p4, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 32
    const-string v2, "WW47yStxc+Kn23SzlVFAtkW406rAiVNF7FaBmX6o9CgxQkQFUdWEOMSkrqtI78H7"

    const-string v3, "kf+iEov9hqWWX6mGICnxIdxLkafhWxGKH7t1rvtl8FM="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 38
    iput-object p3, v1, Lads_mobile_sdk/sp0;->f:Lads_mobile_sdk/na;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 5

    .line 39
    iget-object v0, p0, Lads_mobile_sdk/sp0;->f:Lads_mobile_sdk/na;

    .line 40
    invoke-virtual {v0}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 42
    monitor-enter p2

    const/4 v0, 0x0

    .line 43
    :try_start_1a
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lads_mobile_sdk/xf;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->b(Ljava/lang/String;)V

    .line 45
    monitor-exit p2

    return-void

    :catchall_2b
    move-exception p1

    .line 46
    monitor-exit p2
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_2b

    throw p1
.end method
