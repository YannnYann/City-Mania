###### Class com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi (com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi)
.class public interface abstract Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi;
.super Ljava/lang/Object;
.source "AudienceNetworkRemoteServiceApi.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStripAny;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$HorizonWorldUrlLauncher;,
        Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;,
        Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;
    }
.end annotation


# virtual methods
.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract setHorizonWorldUrlLauncher(Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$HorizonWorldUrlLauncher;)V
.end method

.method public abstract setMessageHandler(Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;)V
.end method

.method public abstract setPackageVerifier(Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;)V
.end method

###### Class com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi.HorizonWorldUrlLauncher (com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi$HorizonWorldUrlLauncher)
.class public interface abstract Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$HorizonWorldUrlLauncher;
.super Ljava/lang/Object;
.source "AudienceNetworkRemoteServiceApi.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStripAny;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HorizonWorldUrlLauncher"
.end annotation


# virtual methods
.method public abstract launchUrl(Landroid/content/Context;Landroid/net/Uri;)Z
.end method

###### Class com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi.MessageHandler (com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi$MessageHandler)
.class public interface abstract Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$MessageHandler;
.super Ljava/lang/Object;
.source "AudienceNetworkRemoteServiceApi.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStripAny;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageHandler"
.end annotation


# virtual methods
.method public abstract handleMessage(Landroid/os/Message;)Z
.end method

###### Class com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi.PackageVerifier (com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi$PackageVerifier)
.class public interface abstract Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi$PackageVerifier;
.super Ljava/lang/Object;
.source "AudienceNetworkRemoteServiceApi.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/proguard/annotations/DoNotStripAny;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/api/AudienceNetworkRemoteServiceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageVerifier"
.end annotation


# virtual methods
.method public abstract verifyPackage(Landroid/content/Context;Landroid/os/Message;Ljava/lang/String;)Ljava/lang/String;
.end method
