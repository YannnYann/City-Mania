###### Class io.bidmachine.nativead.view.VideoPlayerActivity (io.bidmachine.nativead.view.VideoPlayerActivity)
.class public final Lio/bidmachine/nativead/view/VideoPlayerActivity;
.super Lio/bidmachine/rendering/internal/AdActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;,
        Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;

.field public static disclaimerData:Lio/bidmachine/internal/k;

.field public static listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;


# instance fields
.field public disclaimerTextView:Lio/bidmachine/internal/l;

.field public listener$1:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

.field public seekTo:I

.field public videoView:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$-YwYRRdesOJkoGTZxdMht02AgFQ(Lio/bidmachine/nativead/view/VideoPlayerActivity;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->onCreate$lambda$7$lambda$6(Lio/bidmachine/nativead/view/VideoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KypCcitU78FEcwfreM68FsAOd48(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity$lambda$13(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zv6u9COpFaWiQxJLBes-soSnW6s(Lio/bidmachine/nativead/view/VideoPlayerActivity;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->onCreate$lambda$0(Lio/bidmachine/nativead/view/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->Companion:Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/AdActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$setDisclaimerData$cp(Lio/bidmachine/internal/k;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->disclaimerData:Lio/bidmachine/internal/k;

    return-void
.end method

.method public static final synthetic access$setListener$cp(Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    return-void
.end method

.method public static final finishActivity$lambda$13(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    .line 3
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final onCreate$lambda$0(Lio/bidmachine/nativead/view/VideoPlayerActivity;)Ljava/lang/String;
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayerActivity started, position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->seekTo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final onCreate$lambda$7$lambda$6(Lio/bidmachine/nativead/view/VideoPlayerActivity;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->closeClicked()V

    return-void
.end method


# virtual methods
.method public final closeClicked()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener$1:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    if-eqz v0, :cond_19

    .line 2
    iget-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 4
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 5
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    goto :goto_16

    :cond_15
    move v1, v2

    .line 6
    :goto_16
    invoke-interface {v0, v1, v2}, Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;->videoPlayerActivityClosed(IZ)V

    .line 15
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    return-void
.end method

.method public final finishActivity()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    .line 2
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener$1:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;->videoPlayerActivityClosed(IZ)V

    .line 2
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/AdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "getIntent()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "io.bidmachine.fileUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "io.bidmachine.seekTo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->seekTo:I

    .line 8
    new-instance p1, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Lio/bidmachine/utils/lazy/LazyValue;)V

    if-nez v0, :cond_2f

    return-void

    .line 14
    :cond_2f
    sget-object p1, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->listener$1:Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;

    .line 16
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lio/bidmachine/util/ViewUtils;->createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    .line 23
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 27
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 36
    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 38
    iput-object v1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    invoke-static {p0}, Lio/bidmachine/util/DeviceUtilsKt;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    const/16 v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 44
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    const/16 v2, 0x8

    int-to-float v2, v2

    mul-float/2addr v2, v0

    .line 45
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    .line 46
    new-instance v2, Lio/bidmachine/iab/vast/view/CircleCountdownView;

    invoke-direct {v2, p0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 52
    invoke-virtual {v4, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    .line 53
    invoke-virtual {v4, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    sget v0, Lio/bidmachine/iab/utils/Assets;->MAIN_ASSETS_COLOR:I

    sget v1, Lio/bidmachine/iab/utils/Assets;->BACKGROUND_COLOR:I

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setColors(II)V

    .line 65
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="

    invoke-static {v0}, Lio/bidmachine/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/bidmachine/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    .line 66
    new-instance v0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    sget-object v0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->disclaimerData:Lio/bidmachine/internal/k;

    if-eqz v0, :cond_c4

    .line 74
    invoke-static {p0, v0, p1}, Lio/bidmachine/internal/U;->a(Landroid/content/Context;Lio/bidmachine/internal/k;Landroid/view/View;)Lio/bidmachine/internal/l;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 81
    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iput-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->disclaimerTextView:Lio/bidmachine/internal/l;

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_c4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->videoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_12

    .line 2
    invoke-virtual {p1}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3
    iget v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity;->seekTo:I

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    :cond_12
    return-void
.end method

###### Class io.bidmachine.nativead.view.VideoPlayerActivity.Companion (io.bidmachine.nativead.view.VideoPlayerActivity$Companion)
.class public final Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/view/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/nativead/view/VideoPlayerActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Ljava/lang/String;ILio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;Lio/bidmachine/internal/k;)Landroid/content/Intent;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p4}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->access$setListener$cp(Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;)V

    .line 2
    invoke-static {p5}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->access$setDisclaimerData$cp(Lio/bidmachine/internal/k;)V

    .line 3
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-direct {p4, p1, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    const-string p1, "io.bidmachine.fileUri"

    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-string p1, "io.bidmachine.seekTo"

    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p4
.end method

###### Class io.bidmachine.nativead.view.VideoPlayerActivity.VideoPlayerActivityListener (io.bidmachine.nativead.view.VideoPlayerActivity$VideoPlayerActivityListener)
.class public interface abstract Lio/bidmachine/nativead/view/VideoPlayerActivity$VideoPlayerActivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/view/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoPlayerActivityListener"
.end annotation


# virtual methods
.method public abstract videoPlayerActivityClosed(IZ)V
.end method

###### Class io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda0 (io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-static {v0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->$r8$lambda$Zv6u9COpFaWiQxJLBes-soSnW6s(Lio/bidmachine/nativead/view/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda1 (io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->$r8$lambda$-YwYRRdesOJkoGTZxdMht02AgFQ(Lio/bidmachine/nativead/view/VideoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda2 (io.bidmachine.nativead.view.VideoPlayerActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-static {v0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->$r8$lambda$KypCcitU78FEcwfreM68FsAOd48(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V

    return-void
.end method
