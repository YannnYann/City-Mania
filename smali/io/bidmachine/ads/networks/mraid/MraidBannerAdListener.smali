###### Class io.bidmachine.ads.networks.mraid.MraidBannerAdListener (io.bidmachine.ads.networks.mraid.MraidBannerAdListener)
.class public final Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidViewListener;


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedBannerAdCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    return-void
.end method


# virtual methods
.method public onCalendarEvent(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 5

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabClickCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "mraidView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;

    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;-><init>(Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 6
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->openCalendar(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public onClose(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 3

    .line 0
    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onExpand(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 3

    .line 0
    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onExpired(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void
.end method

.method public onLoadFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onLoaded(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 3

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0, p1}, Lio/bidmachine/unified/UnifiedBannerAdCallback;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacySheetParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->Companion:Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {v1, p1}, Lio/bidmachine/core/Utils;->findDialogContext(Landroid/content/Context;Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "findDialogContext(\n     \u2026  mraidView\n            )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog$Companion;->show(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    return-void
.end method

.method public onOpenUrl(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 6

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabClickCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "mraidView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/bidmachine/utils/ClickPostMethod;

    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-direct {v0, v1, p3}, Lio/bidmachine/utils/ClickPostMethod;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 4
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

.method public onPlayVideo(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onShown(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 3

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShown()V

    return-void
.end method

.method public onStorePicture(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 5

    const-string v0, "mraidView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabClickCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->callback:Lio/bidmachine/unified/UnifiedBannerAdCallback;

    invoke-interface {v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdClicked()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "mraidView.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;

    invoke-direct {v0, p3}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;-><init>(Lio/bidmachine/iab/utils/IabClickCallback;)V

    .line 6
    invoke-static {p1, p2, v0}, Lio/bidmachine/rendering/utils/UrlHandler;->storePicture(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidBannerAdListener.AnonymousClass1 (io.bidmachine.ads.networks.mraid.MraidBannerAdListener$onCalendarEvent$1)
.class public final Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->onCalendarEvent(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {p1}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onCalendarEvent$1;->onExecute(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidBannerAdListener.C41031 (io.bidmachine.ads.networks.mraid.MraidBannerAdListener$onStorePicture$1)
.class public final Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener;->onStorePicture(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
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

    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

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
    iget-object p1, p0, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;->$iabClickCallback:Lio/bidmachine/iab/utils/IabClickCallback;

    invoke-interface {p1}, Lio/bidmachine/iab/utils/IabClickCallback;->clickHandled()V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/mraid/MraidBannerAdListener$onStorePicture$1;->onExecute(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method
