###### Class ads_mobile_sdk.vp1 (ads_mobile_sdk.vp1)
.class public final Lads_mobile_sdk/vp1;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# static fields
.field public static volatile f:Ljava/lang/Long;

.field public static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/vp1;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/ts3;)V
    .registers 11

    .line 27
    sget-object v0, Lads_mobile_sdk/lq0;->v:Lads_mobile_sdk/lq0;

    .line 30
    invoke-virtual {p3, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 31
    const-string v2, "qsS4E7Zdzd5AMeFVR3NmaIqyoOh0n8fm8kgGnCIs4S9k7Bur9Ss8oj7wBe2HDBDL"

    const-string v3, "6E0zJrZ9xYjWqzqR24K6dPoQ/SmEVXdR/xTduZwLWwQ="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 6

    .line 1
    sget-object v0, Lads_mobile_sdk/vp1;->f:Ljava/lang/Long;

    if-nez v0, :cond_25

    .line 2
    sget-object v0, Lads_mobile_sdk/vp1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lads_mobile_sdk/vp1;->f:Ljava/lang/Long;

    if-nez v1, :cond_21

    .line 5
    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    sput-object p1, Lads_mobile_sdk/vp1;->f:Ljava/lang/Long;

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 7
    :cond_21
    :goto_21
    monitor-exit v0

    goto :goto_25

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_1f

    throw p1

    .line 9
    :cond_25
    :goto_25
    monitor-enter p2

    .line 10
    :try_start_26
    sget-object p1, Lads_mobile_sdk/vp1;->f:Ljava/lang/Long;

    if-eqz p1, :cond_36

    .line 11
    sget-object p1, Lads_mobile_sdk/vp1;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lads_mobile_sdk/xf;->p(J)V

    goto :goto_36

    :catchall_34
    move-exception p1

    goto :goto_38

    .line 13
    :cond_36
    :goto_36
    monitor-exit p2

    return-void

    .line 14
    :goto_38
    monitor-exit p2
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_34

    throw p1
.end method
