###### Class io.bidmachine.rendering.ad.fullscreen.FullScreenActivityKt (io.bidmachine.rendering.ad.fullscreen.FullScreenActivityKt)
.class public final Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final synthetic access$getTempFullScreenAd$p()Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    return-object v0
.end method

.method public static final synthetic access$setTempFullScreenAd$p(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    return-void
.end method

.method public static final startActivity(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;Landroid/content/Context;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_a
    sput-object p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    .line 2
    const-class v0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;

    invoke-static {p1, v0}, Lio/bidmachine/rendering/internal/a;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    const/4 p1, 0x0

    .line 4
    sput-object p1, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    .line 5
    new-instance p1, Lio/bidmachine/util/Error;

    const-string v0, "Ad is null"

    invoke-direct {p1, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->notifyAdFailToShow(Lio/bidmachine/util/Error;)V

    return-void
.end method
