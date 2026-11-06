###### Class io.bidmachine.rendering.internal.screenshot.a (io.bidmachine.rendering.internal.screenshot.a)
.class public final Lio/bidmachine/rendering/internal/screenshot/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/screenshot/a;


# direct methods
.method public static synthetic $r8$lambda$fo9xbSP1VxUW5IxElhY2H0i0MVY(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;I)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lio/bidmachine/rendering/internal/screenshot/a;->a(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/screenshot/a;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/screenshot/a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/screenshot/a;->a:Lio/bidmachine/rendering/internal/screenshot/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;I)V
    .registers 4

    const-string v0, "$screenshotListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_10

    .line 33
    invoke-interface {p0, p1}, Lio/bidmachine/rendering/internal/screenshot/b;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 35
    :cond_10
    invoke-interface {p0}, Lio/bidmachine/rendering/internal/screenshot/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/os/Handler;Landroid/graphics/Bitmap$Config;Lio/bidmachine/rendering/internal/screenshot/b;)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenshotListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1e

    .line 2
    invoke-interface {p4}, Lio/bidmachine/rendering/internal/screenshot/b;->a()V

    return-void

    .line 5
    :cond_1e
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->findWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_28

    .line 7
    invoke-interface {p4}, Lio/bidmachine/rendering/internal/screenshot/b;->a()V

    return-void

    .line 10
    :cond_28
    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 12
    :try_start_2c
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 13
    const-string v1, "{\n            Bitmap.cre\u2026ight(), config)\n        }"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_4a

    .line 19
    new-instance v1, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p3}, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;)V

    .line 28
    :try_start_42
    invoke-static {v0, p1, p3, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    return-void

    .line 31
    :catchall_46
    invoke-interface {p4}, Lio/bidmachine/rendering/internal/screenshot/b;->a()V

    return-void

    .line 32
    :catchall_4a
    invoke-interface {p4}, Lio/bidmachine/rendering/internal/screenshot/b;->a()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.screenshot.a$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.screenshot.a$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/screenshot/b;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/screenshot/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/screenshot/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/screenshot/a$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lio/bidmachine/rendering/internal/screenshot/a;->$r8$lambda$fo9xbSP1VxUW5IxElhY2H0i0MVY(Lio/bidmachine/rendering/internal/screenshot/b;Landroid/graphics/Bitmap;I)V

    return-void
.end method
