###### Class ads_mobile_sdk.tx (ads_mobile_sdk.tx)
.class public interface abstract Lads_mobile_sdk/tx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()J
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
