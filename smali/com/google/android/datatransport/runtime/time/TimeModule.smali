###### Class com.google.android.datatransport.runtime.time.TimeModule (com.google.android.datatransport.runtime.time.TimeModule)
.class public abstract Lcom/google/android/datatransport/runtime/time/TimeModule;
.super Ljava/lang/Object;
.source "TimeModule.java"


# direct methods
.method public static eventClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 1

    .line 25
    new-instance v0, Lcom/google/android/datatransport/runtime/time/WallTimeClock;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/WallTimeClock;-><init>()V

    return-object v0
.end method

.method public static uptimeClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 1

    .line 31
    new-instance v0, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/UptimeClock;-><init>()V

    return-object v0
.end method
