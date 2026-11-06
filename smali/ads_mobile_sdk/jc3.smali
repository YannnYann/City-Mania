###### Class ads_mobile_sdk.jc3 (ads_mobile_sdk.jc3)
.class public final Lads_mobile_sdk/jc3;
.super Lads_mobile_sdk/x93;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lads_mobile_sdk/kc3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/kc3;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lads_mobile_sdk/jc3;->b:Lads_mobile_sdk/kc3;

    invoke-direct {p0}, Lads_mobile_sdk/x93;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 257
    iget-object v0, p0, Lads_mobile_sdk/jc3;->b:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    .line 258
    iget-object v1, v0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const/4 v2, 0x0

    .line 259
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "unlinkToDeath"

    invoke-virtual {v1, v4, v3}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v1, v0, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v0, v0, Lads_mobile_sdk/lc3;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 261
    iget-object v0, p0, Lads_mobile_sdk/jc3;->b:Lads_mobile_sdk/kc3;

    iget-object v0, v0, Lads_mobile_sdk/kc3;->a:Lads_mobile_sdk/lc3;

    const/4 v1, 0x0

    iput-object v1, v0, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    .line 262
    iput-boolean v2, v0, Lads_mobile_sdk/lc3;->g:Z

    return-void
.end method
