###### Class com.google.android.gms.common.internal.ClientThrottlingManager (com.google.android.gms.common.internal.ClientThrottlingManager)
.class public interface abstract Lcom/google/android/gms/common/internal/ClientThrottlingManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final NO_THROTTLING:I = -0x80000000
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# virtual methods
.method public abstract release(I)V
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract tryAcquire(ILcom/google/android/gms/common/internal/ConnectionThrottlingConfig;)I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method
