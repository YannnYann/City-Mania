###### Class io.bidmachine.media3.ui.CanvasSubtitleOutput (io.bidmachine.media3.ui.CanvasSubtitleOutput)
.class public final Lio/bidmachine/media3/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "CanvasSubtitleOutput.java"

# interfaces
.implements Lio/bidmachine/media3/ui/SubtitleView$Output;


# instance fields
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

.field public final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field public style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

.field public textSize:F

.field public textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    .line 52
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 54
    iput p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 55
    sget-object p1, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iput-object p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    .line 56
    iput p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    return-void
.end method

.method public static repositionVerticalCue(Lio/bidmachine/media3/common/text/Cue;)Lio/bidmachine/media3/common/text/Cue;
    .registers 5

    .line 148
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue;->buildUpon()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    const v1, -0x800001

    .line 149
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 150
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 153
    iget v1, p0, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_24

    .line 154
    iget v1, p0, Lio/bidmachine/media3/common/text/Cue;->line:F

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_2c

    .line 156
    :cond_24
    iget v1, p0, Lio/bidmachine/media3/common/text/Cue;->line:F

    neg-float v1, v1

    sub-float/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 158
    :goto_2c
    iget p0, p0, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    const/4 v1, 0x2

    if-eqz p0, :cond_38

    if-eq p0, v1, :cond_34

    goto :goto_3b

    .line 160
    :cond_34
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_3b

    .line 163
    :cond_38
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 170
    :goto_3b
    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 81
    iget-object v1, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 82
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_74

    .line 86
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v12, v3, v4

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v13, v2, v3

    if-le v13, v11, :cond_74

    if-gt v12, v10, :cond_2c

    goto :goto_74

    :cond_2c
    sub-int v14, v13, v11

    .line 99
    iget v3, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    iget v4, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 100
    invoke-static {v3, v4, v2, v14}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v6

    const/4 v3, 0x0

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_3c

    goto :goto_74

    .line 107
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v15, :cond_74

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/text/Cue;

    .line 110
    iget v5, v4, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_53

    .line 111
    invoke-static {v4}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->repositionVerticalCue(Lio/bidmachine/media3/common/text/Cue;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v4

    .line 113
    :cond_53
    iget v5, v4, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    iget v7, v4, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    .line 114
    invoke-static {v5, v7, v2, v14}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v7

    .line 116
    iget-object v5, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/ui/SubtitlePainter;

    move v8, v3

    move-object v3, v5

    .line 117
    iget-object v5, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    move v9, v8

    iget v8, v0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    move/from16 v16, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v13}, Lio/bidmachine/media3/ui/SubtitlePainter;->draw(Lio/bidmachine/media3/common/text/Cue;Lio/bidmachine/media3/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V

    add-int/lit8 v3, v16, 0x1

    goto :goto_41

    :cond_74
    :goto_74
    return-void
.end method

.method public update(Ljava/util/List;Lio/bidmachine/media3/ui/CaptionStyleCompat;FIF)V
    .registers 6
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

    .line 66
    iput-object p1, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    .line 68
    iput p3, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSize:F

    .line 69
    iput p4, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 70
    iput p5, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 72
    :goto_a
    iget-object p2, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_25

    .line 73
    iget-object p2, p0, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    new-instance p3, Lio/bidmachine/media3/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lio/bidmachine/media3/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 76
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
