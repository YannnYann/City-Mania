###### Class com.google.android.libraries.ads.mobile.sdk.common.VideoController (com.google.android.libraries.ads.mobile.sdk.common.VideoController)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# virtual methods
.method public abstract getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
.end method

###### Class com.google.android.libraries.ads.mobile.sdk.common.VideoController.VideoLifecycleCallbacks (com.google.android.libraries.ads.mobile.sdk.common.VideoController$VideoLifecycleCallbacks)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/mq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoLifecycleCallbacks"
.end annotation


# virtual methods
.method public onVideoEnd()V
    .registers 1

    .line 0
    return-void
.end method

.method public onVideoMute(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoPause()V
    .registers 1

    .line 0
    return-void
.end method

.method public onVideoPlay()V
    .registers 1

    .line 0
    return-void
.end method

.method public onVideoStart()V
    .registers 1

    .line 0
    return-void
.end method
