###### Class io.bidmachine.rendering.view.WatermarkView (io.bidmachine.rendering.view.WatermarkView)
.class public final Lio/bidmachine/rendering/view/WatermarkView;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$qD_kqwFt4uBlPt1lNFy68kUpsJY(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/view/WatermarkView;->a(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final setWatermark(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->onUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.rendering.view.WatermarkView$$ExternalSyntheticLambda0 (io.bidmachine.rendering.view.WatermarkView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/view/WatermarkView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/view/WatermarkView;

    iput-object p2, p0, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/view/WatermarkView;

    iget-object v1, p0, Lio/bidmachine/rendering/view/WatermarkView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/view/WatermarkView;->$r8$lambda$qD_kqwFt4uBlPt1lNFy68kUpsJY(Lio/bidmachine/rendering/view/WatermarkView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
