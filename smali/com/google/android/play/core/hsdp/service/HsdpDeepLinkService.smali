###### Class com.google.android.play.core.hsdp.service.HsdpDeepLinkService (com.google.android.play.core.hsdp.service.HsdpDeepLinkService)
.class public interface abstract Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;,
        Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;
    }
.end annotation


# virtual methods
.method public abstract endSession(Ljava/lang/String;)V
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract prewarm(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;",
            ">;",
            "Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;",
            ")V"
        }
    .end annotation
.end method

###### Class com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener (com.google.android.play.core.hsdp.service.HsdpDeepLinkService$HsdpDeepLinkServiceListener)
.class public interface abstract Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HsdpDeepLinkServiceListener"
.end annotation


# virtual methods
.method public abstract onAffordanceEnded()V
.end method

.method public abstract onAffordanceStarted()V
.end method

.method public abstract onDeepLinkStarted()V
.end method

.method public abstract onDismissed(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onShown(Landroid/os/Bundle;)V
.end method

###### Class com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpPrewarmListener (com.google.android.play.core.hsdp.service.HsdpDeepLinkService$HsdpPrewarmListener)
.class public interface abstract Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HsdpPrewarmListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method
