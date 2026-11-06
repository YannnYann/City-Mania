###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener (io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener)
.class public final Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidInterstitialListener;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

.field public final mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/internal/q;)V
    .registers 5

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    .line 4
    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    return-void
.end method


# virtual methods
.method public onCalendarEvent(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 5

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabClickCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked()V

    .line 3
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;

    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;-><init>(Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 6
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->openCalendar(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public onClose(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 3

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->mraidOMSDKAdMeasurer:Lio/bidmachine/internal/q;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/bidmachine/internal/r;->a()V

    .line 5
    :cond_12
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 6
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdFinished()V

    .line 9
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdClosed()V

    return-void
.end method

.method public onExpired(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void
.end method

.method public onLoadFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onLoaded(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 3

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->peekContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    :cond_14
    invoke-static {p1}, Lio/bidmachine/core/Utils;->findDialogContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "findDialogContext(mraidI\u2026() ?: applicationContext)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;->show(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    return-void
.end method

.method public onOpenUrl(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 6

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabClickCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    .line 3
    new-instance v0, Lio/bidmachine/utils/ClickPostMethod;

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-direct {v0, v1, p3}, Lio/bidmachine/utils/ClickPostMethod;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 4
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public onPlayVideo(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onShown(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 3

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShown()V

    return-void
.end method

.method public onStorePicture(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 5

    const-string v0, "mraidInterstitial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabClickCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked()V

    .line 3
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->applicationContext:Landroid/content/Context;

    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;

    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;-><init>(Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 6
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->storePicture(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener.AnonymousClass1 (io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener$onCalendarEvent$1)
.class public final Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->onCalendarEvent(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/SafeExecutable<",
        "Lio/bidmachine/util/ProcessUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {p1}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onCalendarEvent$1;->onExecute(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener.C41041 (io.bidmachine.ads.networks.mraid.MraidFullScreenAdListener$onStorePicture$1)
.class public final Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener;->onStorePicture(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/util/SafeExecutable<",
        "Lio/bidmachine/util/ProcessUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {p1}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAdListener$onStorePicture$1;->onExecute(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method
