###### Class com.facebook.ads.redexgen.X.AbstractC3035pO (com.facebook.ads.redexgen.X.pO)
.class public abstract Lcom/facebook/ads/redexgen/X/pO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/util/common/ANRuntimeReceiverCompat$AnRuntimeReceiverCompat34;
    }
.end annotation


# direct methods
.method public static A00(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 3

    .line 107726
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
