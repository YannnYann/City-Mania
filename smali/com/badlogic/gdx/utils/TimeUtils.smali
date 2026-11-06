###### Class com.badlogic.gdx.utils.TimeUtils (com.badlogic.gdx.utils.TimeUtils)
.class public final Lcom/badlogic/gdx/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# direct methods
.method public static millis()J
    .registers 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
