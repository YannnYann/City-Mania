###### Class io.bidmachine.media3.ui.AspectRatioFrameLayout (io.bidmachine.media3.ui.AspectRatioFrameLayout)
.class public final Lio/bidmachine/media3/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;,
        Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;
    }
.end annotation


# instance fields
.field public final aspectRatioUpdateDispatcher:Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field public resizeMode:I

.field public videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eqz p2, :cond_23

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lio/bidmachine/media3/ui/R$styleable;->AspectRatioFrameLayout:[I

    .line 120
    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    :try_start_12
    sget p2, Lio/bidmachine/media3/ui/R$styleable;->AspectRatioFrameLayout_resize_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_23

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    throw p2

    .line 127
    :cond_23
    :goto_23
    new-instance p1, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;Lio/bidmachine/media3/ui/AspectRatioFrameLayout$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;)Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;
    .registers 1

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getResizeMode()I
    .registers 2

    .line 154
    iget v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    return v0
.end method

.method public onMeasure(II)V
    .registers 11

    .line 171
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    iget p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_b

    return-void

    .line 177
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    .line 180
    iget v4, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 181
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_31

    .line 183
    iget-object p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v3, v0}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    return-void

    .line 187
    :cond_31
    iget v5, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    const/4 v6, 0x1

    if-eqz v5, :cond_53

    if-eq v5, v6, :cond_50

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4d

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3f

    goto :goto_5d

    :cond_3f
    cmpl-float p2, v4, p2

    if-lez p2, :cond_48

    .line 196
    iget p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_45
    mul-float/2addr v2, p1

    float-to-int p1, v2

    goto :goto_5d

    .line 198
    :cond_48
    iget p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_4a
    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_5d

    .line 192
    :cond_4d
    iget p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_45

    .line 189
    :cond_50
    iget p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_4a

    :cond_53
    cmpl-float p2, v4, p2

    if-lez p2, :cond_5a

    .line 203
    iget p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_4a

    .line 205
    :cond_5a
    iget p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_45

    .line 213
    :goto_5d
    iget-object p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    iget v1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p2, v1, v3, v6}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->scheduleUpdate(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 215
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 216
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 214
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .registers 3

    .line 136
    iget v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 137
    iput p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method public setAspectRatioListener(Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    .line 163
    iget v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_9

    .line 164
    iput p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_9
    return-void
.end method

###### Class io.bidmachine.media3.ui.AspectRatioFrameLayout.AnonymousClass1 (io.bidmachine.media3.ui.AspectRatioFrameLayout$1)
.class public synthetic Lio/bidmachine/media3/ui/AspectRatioFrameLayout$1;
.super Ljava/lang/Object;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.ui.AspectRatioFrameLayout.AspectRatioListener (io.bidmachine.media3.ui.AspectRatioFrameLayout$AspectRatioListener)
.class public interface abstract Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;
.super Ljava/lang/Object;
.source "AspectRatioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AspectRatioListener"
.end annotation

###### Class io.bidmachine.media3.ui.AspectRatioFrameLayout.AspectRatioUpdateDispatcher (io.bidmachine.media3.ui.AspectRatioFrameLayout$AspectRatioUpdateDispatcher)
.class public final Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;
.super Ljava/lang/Object;
.source "AspectRatioFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AspectRatioUpdateDispatcher"
.end annotation


# instance fields
.field public aspectRatioMismatch:Z

.field public isScheduled:Z

.field public naturalAspectRatio:F

.field public targetAspectRatio:F

.field public final synthetic this$0:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;Lio/bidmachine/media3/ui/AspectRatioFrameLayout$1;)V
    .registers 3

    .line 220
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->access$100(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;)Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;

    return-void
.end method

.method public scheduleUpdate(FFZ)V
    .registers 4

    .line 229
    iput p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->targetAspectRatio:F

    .line 230
    iput p2, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->naturalAspectRatio:F

    .line 231
    iput-boolean p3, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->aspectRatioMismatch:Z

    .line 233
    iget-boolean p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    .line 235
    iget-object p1, p0, Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
