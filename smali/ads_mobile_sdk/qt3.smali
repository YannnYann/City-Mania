###### Class ads_mobile_sdk.qt3 (ads_mobile_sdk.qt3)
.class public final Lads_mobile_sdk/qt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    sget-object v0, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 3
    sget-object v1, Lads_mobile_sdk/rt3;->j:Lads_mobile_sdk/pt3;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    sget-object v0, Lads_mobile_sdk/rt3;->i:Landroid/os/Handler;

    sget-object v1, Lads_mobile_sdk/rt3;->k:Lads_mobile_sdk/qt3;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method
