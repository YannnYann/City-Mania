###### Class ads_mobile_sdk.qa2 (ads_mobile_sdk.qa2)
.class public final Lads_mobile_sdk/qa2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/ra2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ra2;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 64
    iget-object v0, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    iput-object p1, v1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    .line 66
    iput-object p2, v1, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    .line 67
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    iget-object v1, v1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 74
    iget-object p1, p0, Lads_mobile_sdk/qa2;->a:Lads_mobile_sdk/ra2;

    const/4 v1, 0x0

    iput-object v1, p1, Lads_mobile_sdk/ra2;->d:Landroid/net/Network;

    .line 75
    iput-object v1, p1, Lads_mobile_sdk/ra2;->c:Landroid/net/NetworkCapabilities;

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_19

    .line 77
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    .line 78
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p1
.end method
