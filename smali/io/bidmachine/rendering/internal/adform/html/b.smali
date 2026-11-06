###### Class io.bidmachine.rendering.internal.adform.html.b (io.bidmachine.rendering.internal.adform.html.b)
.class public final Lio/bidmachine/rendering/internal/adform/html/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidAdView$Listener;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/adform/html/a;

.field public final b:Lio/bidmachine/rendering/internal/adform/c;

.field public final c:Lio/bidmachine/rendering/internal/event/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/adform/html/a;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;)V
    .registers 5

    const-string v0, "htmlAdForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/html/b;->b:Lio/bidmachine/rendering/internal/adform/c;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/adform/html/b;->c:Lio/bidmachine/rendering/internal/event/a;

    return-void
.end method


# virtual methods
.method public ignoreExpandUrl(Lio/bidmachine/iab/mraid/MraidAdView;)Z
    .registers 3

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCalendarEventIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/adform/html/b;->onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V

    return-void
.end method

.method public onChangeOrientationIntention(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
    .registers 4

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mraidOrientationProperties"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->c:Lio/bidmachine/rendering/internal/event/a;

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->onClose()V

    return-void
.end method

.method public onExpand(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->c:Lio/bidmachine/rendering/internal/event/a;

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/event/a;->f()V

    return-void
.end method

.method public onExpandIntention(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/webkit/WebView;Lio/bidmachine/iab/mraid/MraidOrientationProperties;Z)Z
    .registers 5

    .line 0
    const-string p3, "mraidAdView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onExpandLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->b:Lio/bidmachine/rendering/internal/adform/c;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/adform/c;->d(Lio/bidmachine/rendering/internal/adform/a;)V

    return-void
.end method

.method public onExpandLoadStart(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->b:Lio/bidmachine/rendering/internal/adform/c;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/adform/c;->c(Lio/bidmachine/rendering/internal/adform/a;)V

    return-void
.end method

.method public onMraidAdViewExpired(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 6

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->b:Lio/bidmachine/rendering/internal/adform/c;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    new-instance v1, Lio/bidmachine/util/Error;

    invoke-virtual {p2}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "iabError.message"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lio/bidmachine/rendering/internal/adform/c;->c(Lio/bidmachine/rendering/internal/adform/a;Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onMraidAdViewLoadFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 5

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    new-instance v0, Lio/bidmachine/util/Error;

    invoke-virtual {p2}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "iabError.message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/adform/html/a;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onMraidAdViewPageCommitVisible(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/adform/a;->D()V

    return-void
.end method

.method public onMraidAdViewPageLoaded(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/webkit/WebView;Z)V
    .registers 5

    const-string p4, "mraidAdView"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webView"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->b:Lio/bidmachine/rendering/internal/adform/c;

    iget-object p2, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    invoke-interface {p1, p2}, Lio/bidmachine/rendering/internal/adform/c;->b(Lio/bidmachine/rendering/internal/adform/a;)V

    return-void
.end method

.method public onMraidAdViewShowFailed(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/IabError;)V
    .registers 5

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->a:Lio/bidmachine/rendering/internal/adform/html/a;

    new-instance v0, Lio/bidmachine/util/Error;

    invoke-virtual {p2}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "iabError.message"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/adform/html/a;->b(Lio/bidmachine/util/Error;)V

    return-void
.end method

.method public onMraidAdViewShown(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMraidLoadedIntention(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .registers 3

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 4

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "privacySheetParams"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V
    .registers 5

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/html/b;->c:Lio/bidmachine/rendering/internal/event/a;

    if-eqz p3, :cond_13

    .line 3
    invoke-static {p3, p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->toClickData(Landroid/graphics/Point;Landroid/view/View;)Lio/bidmachine/rendering/model/ClickData;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 4
    :goto_14
    invoke-interface {v0, p2, p1}, Lio/bidmachine/rendering/internal/event/a;->a(Ljava/lang/String;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public onPlayVideoIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStorePictureIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .registers 4

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/adform/html/b;->onOpenUrlIntention(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/graphics/Point;)V

    return-void
.end method

.method public onSyncCustomCloseIntention(Lio/bidmachine/iab/mraid/MraidAdView;Z)V
    .registers 4

    const-string v0, "mraidAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/html/b;->c:Lio/bidmachine/rendering/internal/event/a;

    invoke-interface {p1, p2}, Lio/bidmachine/rendering/internal/event/a;->onUseCustomClose(Z)V

    return-void
.end method
