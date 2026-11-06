###### Class ads_mobile_sdk.kc3 (ads_mobile_sdk.kc3)
.class public final Lads_mobile_sdk/kc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/lc3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lc3;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 234
    iget-object v0, p0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    iget-object v0, v0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    new-instance v0, Lads_mobile_sdk/ic3;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/ic3;-><init>(Lads_mobile_sdk/kc3;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Lads_mobile_sdk/lc3;->b(Lads_mobile_sdk/x93;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 252
    iget-object v0, p0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    iget-object v0, v0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    new-instance v0, Lads_mobile_sdk/jc3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/jc3;-><init>(Lads_mobile_sdk/kc3;)V

    invoke-virtual {p1, v0}, Lads_mobile_sdk/lc3;->b(Lads_mobile_sdk/x93;)V

    return-void
.end method
