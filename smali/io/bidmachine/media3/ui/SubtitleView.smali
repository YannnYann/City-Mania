###### Class io.bidmachine.media3.ui.SubtitleView (io.bidmachine.media3.ui.SubtitleView)
.class public final Lio/bidmachine/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/SubtitleView$Output;
    }
.end annotation


# instance fields
.field public applyEmbeddedFontSizes:Z

.field public applyEmbeddedStyles:Z

.field public bottomPaddingFraction:F

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public defaultTextSize:F

.field public defaultTextSizeType:I

.field public innerSubtitleView:Landroid/view/View;

.field public output:Lio/bidmachine/media3/ui/SubtitleView$Output;

.field public style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

.field public viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    .line 139
    sget-object p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iput-object p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    const/4 p2, 0x0

    .line 140
    iput p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSizeType:I

    const p2, 0x3d5a511a    # 0.0533f

    .line 141
    iput p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSize:F

    const p2, 0x3da3d70a    # 0.08f

    .line 142
    iput p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->bottomPaddingFraction:F

    const/4 p2, 0x1

    .line 143
    iput-boolean p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 144
    iput-boolean p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 146
    new-instance v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    .line 147
    iput-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->output:Lio/bidmachine/media3/ui/SubtitleView$Output;

    .line 148
    iput-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 149
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    iput p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->viewType:I

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 366
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-eqz v0, :cond_b

    .line 367
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    return-object v0

    .line 369
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 370
    :goto_17
    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 371
    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/text/Cue;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/ui/SubtitleView;->removeEmbeddedStyling(Lio/bidmachine/media3/common/text/Cue;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_31
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .registers 4

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    return v1

    .line 326
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_22

    .line 327
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 328
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0

    :cond_22
    return v1
.end method

.method private getUserCaptionStyle()Lio/bidmachine/media3/ui/CaptionStyleCompat;
    .registers 3

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 334
    sget-object v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    return-object v0

    .line 338
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_26

    .line 339
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 340
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/ui/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lio/bidmachine/media3/ui/CaptionStyleCompat;

    move-result-object v0

    return-object v0

    .line 341
    :cond_26
    sget-object v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    return-object v0
.end method

.method private setView(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lio/bidmachine/media3/ui/SubtitleView$Output;",
            ">(TT;)V"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    instance-of v1, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;

    if-eqz v1, :cond_10

    .line 191
    check-cast v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->destroy()V

    .line 193
    :cond_10
    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->innerSubtitleView:Landroid/view/View;

    .line 194
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/ui/SubtitleView$Output;

    iput-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->output:Lio/bidmachine/media3/ui/SubtitleView$Output;

    .line 195
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final removeEmbeddedStyling(Lio/bidmachine/media3/common/text/Cue;)Lio/bidmachine/media3/common/text/Cue;
    .registers 3

    .line 377
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue;->buildUpon()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 378
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    if-nez v0, :cond_c

    .line 379
    invoke-static {p1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->removeAllEmbeddedStyling(Lio/bidmachine/media3/common/text/Cue$Builder;)V

    goto :goto_13

    .line 380
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    if-nez v0, :cond_13

    .line 381
    invoke-static {p1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->removeEmbeddedFontSizes(Lio/bidmachine/media3/common/text/Cue$Builder;)V

    .line 383
    :cond_13
    :goto_13
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    return-object p1
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedFontSizes:Z

    .line 283
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .registers 2

    .line 271
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->applyEmbeddedStyles:Z

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .registers 2

    .line 316
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->bottomPaddingFraction:F

    .line 317
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    goto :goto_5

    .line 159
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_5
    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->cues:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .registers 3

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public setFractionalTextSize(FZ)V
    .registers 3

    .line 251
    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/ui/SubtitleView;->setTextSize(IF)V

    return-void
.end method

.method public setStyle(Lio/bidmachine/media3/ui/CaptionStyleCompat;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    .line 303
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public final setTextSize(IF)V
    .registers 3

    .line 259
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSizeType:I

    .line 260
    iput p2, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSize:F

    .line 261
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitleView;->updateOutput()V

    return-void
.end method

.method public setUserDefaultStyle()V
    .registers 2

    .line 293
    invoke-direct {p0}, Lio/bidmachine/media3/ui/SubtitleView;->getUserCaptionStyle()Lio/bidmachine/media3/ui/CaptionStyleCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/SubtitleView;->setStyle(Lio/bidmachine/media3/ui/CaptionStyleCompat;)V

    return-void
.end method

.method public setUserDefaultTextSize()V
    .registers 3

    const v0, 0x3d5a511a    # 0.0533f

    .line 226
    invoke-direct {p0}, Lio/bidmachine/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public setViewType(I)V
    .registers 4

    .line 172
    iget v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->viewType:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 180
    new-instance v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    goto :goto_2a

    .line 183
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 177
    :cond_1e
    new-instance v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    .line 185
    :goto_2a
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitleView;->viewType:I

    return-void
.end method

.method public final updateOutput()V
    .registers 7

    .line 345
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitleView;->output:Lio/bidmachine/media3/ui/SubtitleView$Output;

    .line 346
    invoke-direct {p0}, Lio/bidmachine/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitleView;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v3, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSize:F

    iget v4, p0, Lio/bidmachine/media3/ui/SubtitleView;->defaultTextSizeType:I

    iget v5, p0, Lio/bidmachine/media3/ui/SubtitleView;->bottomPaddingFraction:F

    .line 345
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/ui/SubtitleView$Output;->update(Ljava/util/List;Lio/bidmachine/media3/ui/CaptionStyleCompat;FIF)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.SubtitleView.Output (io.bidmachine.media3.ui.SubtitleView$Output)
.class public interface abstract Lio/bidmachine/media3/ui/SubtitleView$Output;
.super Ljava/lang/Object;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Output"
.end annotation


# virtual methods
.method public abstract update(Ljava/util/List;Lio/bidmachine/media3/ui/CaptionStyleCompat;FIF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;",
            "Lio/bidmachine/media3/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation
.end method
