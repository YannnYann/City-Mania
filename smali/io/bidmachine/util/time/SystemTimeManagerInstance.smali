###### Class io.bidmachine.util.time.SystemTimeManagerInstance (io.bidmachine.util.time.SystemTimeManagerInstance)
.class public final Lio/bidmachine/util/time/SystemTimeManagerInstance;
.super Ljava/lang/Object;
.source "SystemTimeManagerInstance.kt"

# interfaces
.implements Lio/bidmachine/util/time/TimeManagerInstance;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 12
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
