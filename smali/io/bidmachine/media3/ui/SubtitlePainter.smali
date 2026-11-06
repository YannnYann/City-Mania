###### Class io.bidmachine.media3.ui.SubtitlePainter (io.bidmachine.media3.ui.SubtitlePainter)
.class public final Lio/bidmachine/media3/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# instance fields
.field public backgroundColor:I

.field public final bitmapPaint:Landroid/graphics/Paint;

.field public bitmapRect:Landroid/graphics/Rect;

.field public bottomPaddingFraction:F

.field public cueBitmap:Landroid/graphics/Bitmap;

.field public cueBitmapHeight:F

.field public cueLine:F

.field public cueLineAnchor:I

.field public cueLineType:I

.field public cuePosition:F

.field public cuePositionAnchor:I

.field public cueSize:F

.field public cueText:Ljava/lang/CharSequence;

.field public cueTextAlignment:Landroid/text/Layout$Alignment;

.field public cueTextSizePx:F

.field public defaultTextSizePx:F

.field public edgeColor:I

.field public edgeLayout:Landroid/text/StaticLayout;

.field public edgeType:I

.field public foregroundColor:I

.field public final outlineWidth:F

.field public parentBottom:I

.field public parentLeft:I

.field public parentRight:I

.field public parentTop:I

.field public final shadowOffset:F

.field public final shadowRadius:F

.field public final spacingAdd:F

.field public final spacingMult:F

.field public textLayout:Landroid/text/StaticLayout;

.field public textLeft:I

.field public textPaddingX:I

.field public final textPaint:Landroid/text/TextPaint;

.field public textTop:I

.field public windowColor:I

.field public final windowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1010217

    const v1, 0x1010218

    .line 99
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingAdd:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingMult:F

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 107
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 108
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->outlineWidth:F

    .line 109
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowRadius:F

    .line 110
    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowOffset:F

    .line 112
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 113
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 471
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public draw(Lio/bidmachine/media3/common/text/Cue;Lio/bidmachine/media3/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V
    .registers 15

    .line 156
    iget-object v0, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1c

    .line 159
    iget-object v1, p1, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    .line 163
    :cond_12
    iget-boolean v1, p1, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v1, :cond_19

    iget v1, p1, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    goto :goto_1e

    :cond_19
    iget v1, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->windowColor:I

    goto :goto_1e

    :cond_1c
    const/high16 v1, -0x1000000

    .line 165
    :goto_1e
    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lio/bidmachine/media3/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 166
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLine:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineType:I

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePosition:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueSize:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v3, p1, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->foregroundColor:I

    iget v3, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->backgroundColor:I

    iget v3, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowColor:I

    if-ne v2, v1, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeType:I

    iget v3, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    iget v3, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_d2

    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 180
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    if-ne v2, p7, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    if-ne v2, p8, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentRight:I

    if-ne v2, p9, :cond_d2

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    if-ne v2, p10, :cond_d2

    .line 189
    invoke-virtual {p0, p6, v0}, Lio/bidmachine/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void

    .line 193
    :cond_d2
    iget-object v2, p1, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 194
    iget-object v2, p1, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 195
    iget-object v2, p1, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 196
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->line:F

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLine:F

    .line 197
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineType:I

    .line 198
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineAnchor:I

    .line 199
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->position:F

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePosition:F

    .line 200
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 201
    iget v2, p1, Lio/bidmachine/media3/common/text/Cue;->size:F

    iput v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueSize:F

    .line 202
    iget p1, p1, Lio/bidmachine/media3/common/text/Cue;->bitmapHeight:F

    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 203
    iget p1, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->foregroundColor:I

    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->foregroundColor:I

    .line 204
    iget p1, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->backgroundColor:I

    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->backgroundColor:I

    .line 205
    iput v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowColor:I

    .line 206
    iget p1, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeType:I

    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeType:I

    .line 207
    iget p1, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    iput p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    .line 208
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    iput p3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 210
    iput p4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextSizePx:F

    .line 211
    iput p5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 212
    iput p7, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    .line 213
    iput p8, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    .line 214
    iput p9, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentRight:I

    .line 215
    iput p10, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    if-eqz v0, :cond_12c

    .line 218
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitlePainter;->setupTextLayout()V

    goto :goto_134

    .line 221
    :cond_12c
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/SubtitlePainter;->setupBitmapLayout()V

    .line 224
    :goto_134
    invoke-virtual {p0, p6, v0}, Lio/bidmachine/media3/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public final drawBitmapLayout(Landroid/graphics/Canvas;)V
    .registers 6

    .line 458
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final drawLayout(Landroid/graphics/Canvas;Z)V
    .registers 3

    if-eqz p2, :cond_6

    .line 398
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    return-void

    .line 400
    :cond_6
    iget-object p2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object p2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawTextLayout(Landroid/graphics/Canvas;)V
    .registers 12

    .line 407
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 408
    iget-object v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c9

    if-nez v1, :cond_a

    goto/16 :goto_c9

    .line 414
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 415
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLeft:I

    int-to-float v3, v3

    iget v4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_3f

    .line 418
    iget-object v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaddingX:I

    neg-int v3, v3

    int-to-float v5, v3

    .line 422
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget v4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    .line 423
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    .line 419
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_40

    :cond_3f
    move-object v4, p1

    .line 427
    :goto_40
    iget p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_66

    .line 428
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 429
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 430
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    invoke-virtual {v1, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_af

    :cond_66
    const/4 v6, 0x2

    if-ne p1, v6, :cond_75

    .line 434
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowRadius:F

    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowOffset:F

    iget v6, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {p1, v1, v5, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_af

    :cond_75
    const/4 v6, 0x3

    if-eq p1, v6, :cond_7b

    const/4 v7, 0x4

    if-ne p1, v7, :cond_af

    :cond_7b
    if-ne p1, v6, :cond_7e

    goto :goto_7f

    :cond_7e
    move v5, v3

    :goto_7f
    const/4 p1, -0x1

    if-eqz v5, :cond_84

    move v6, p1

    goto :goto_86

    .line 438
    :cond_84
    iget v6, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    :goto_86
    if-eqz v5, :cond_8a

    .line 439
    iget p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeColor:I

    .line 440
    :cond_8a
    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 441
    iget-object v7, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v7, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    iget-object v7, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowRadius:F

    neg-float v9, v5

    invoke-virtual {v7, v8, v9, v9, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 444
    invoke-virtual {v1, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v6, v5, v5, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 448
    :cond_af
    :goto_af
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    invoke-virtual {v0, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 451
    iget-object p1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 453
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public final setupBitmapLayout()V
    .registers 8

    .line 373
    iget-object v0, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 374
    iget v1, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentRight:I

    iget v2, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 375
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    iget v4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v3, v4

    int-to-float v2, v2

    int-to-float v1, v1

    .line 376
    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    int-to-float v4, v4

    int-to-float v3, v3

    .line 377
    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 378
    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 380
    iget v5, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueBitmapHeight:F

    const v6, -0x800001

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2e

    mul-float/2addr v3, v5

    .line 381
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_3f

    :cond_2e
    int-to-float v3, v1

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 385
    :goto_3f
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_48

    int-to-float v3, v1

    :goto_46
    sub-float/2addr v2, v3

    goto :goto_4e

    :cond_48
    if-ne v3, v5, :cond_4e

    .line 387
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    goto :goto_46

    .line 384
    :cond_4e
    :goto_4e
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 390
    iget v3, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v3, v6, :cond_59

    int-to-float v3, v0

    :goto_57
    sub-float/2addr v4, v3

    goto :goto_5f

    :cond_59
    if-ne v3, v5, :cond_5f

    .line 392
    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    goto :goto_57

    .line 389
    :cond_5f
    :goto_5f
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 393
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lio/bidmachine/media3/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final setupTextLayout()V
    .registers 25

    move-object/from16 v0, p0

    .line 230
    iget-object v1, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_c

    .line 231
    check-cast v1, Landroid/text/SpannableStringBuilder;

    :goto_a
    move-object v4, v1

    goto :goto_14

    .line 232
    :cond_c
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 233
    :goto_14
    iget v1, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentRight:I

    iget v2, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 234
    iget v2, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    iget v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v2, v3

    .line 236
    iget-object v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 237
    iget v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v11, v3

    mul-int/lit8 v12, v11, 0x2

    sub-int v3, v1, v12

    .line 240
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueSize:F

    const v13, -0x800001

    cmpl-float v6, v5, v13

    if-eqz v6, :cond_3e

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    :cond_3e
    move v6, v3

    .line 243
    const-string v14, "SubtitlePainter"

    if-gtz v6, :cond_49

    .line 244
    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v14, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_49
    iget v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextSizePx:F

    const/4 v15, 0x0

    cmpl-float v3, v3, v15

    const/high16 v5, 0xff0000

    const/4 v7, 0x0

    if-lez v3, :cond_62

    .line 250
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v8, v8

    invoke-direct {v3, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 253
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 250
    invoke-virtual {v4, v3, v7, v8, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    :cond_62
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_88

    .line 261
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-class v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ForegroundColorSpan;

    .line 262
    array-length v10, v8

    move v9, v7

    :goto_7a
    if-ge v9, v10, :cond_88

    move/from16 v17, v13

    aget-object v13, v8, v9

    .line 263
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v17

    goto :goto_7a

    :cond_88
    move/from16 v17, v13

    .line 271
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    const/4 v13, 0x2

    if-lez v8, :cond_b7

    .line 272
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeType:I

    if-eqz v8, :cond_a9

    if-ne v8, v13, :cond_9a

    goto :goto_a9

    .line 277
    :cond_9a
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v9, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 280
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 277
    invoke-virtual {v3, v8, v7, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b7

    .line 274
    :cond_a9
    :goto_a9
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget v9, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 275
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 274
    invoke-virtual {v4, v8, v7, v9, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    :cond_b7
    :goto_b7
    iget-object v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v5, :cond_bd

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_bd
    move-object/from16 v20, v5

    move-object v5, v3

    .line 286
    new-instance v3, Landroid/text/StaticLayout;

    move-object v8, v5

    iget-object v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object v9, v8

    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingMult:F

    move-object v10, v9

    iget v9, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingAdd:F

    move-object/from16 v18, v10

    const/4 v10, 0x1

    move/from16 v19, v15

    move-object/from16 v7, v20

    const/4 v15, 0x1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 289
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 291
    iget-object v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_e4
    if-ge v9, v5, :cond_fe

    .line 293
    iget-object v10, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v10

    move-object/from16 v20, v14

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v10, v13

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v20

    const/4 v13, 0x2

    goto :goto_e4

    :cond_fe
    move-object/from16 v20, v14

    .line 295
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueSize:F

    cmpl-float v5, v5, v17

    if-eqz v5, :cond_109

    if-ge v8, v6, :cond_109

    goto :goto_10a

    :cond_109
    move v6, v8

    :goto_10a
    add-int/2addr v6, v12

    .line 302
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v8, v5, v17

    if-eqz v8, :cond_135

    int-to-float v1, v1

    mul-float/2addr v1, v5

    .line 303
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v1, v5

    .line 304
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cuePositionAnchor:I

    if-eq v8, v15, :cond_124

    const/4 v9, 0x2

    if-eq v8, v9, :cond_122

    goto :goto_129

    :cond_122
    sub-int/2addr v1, v6

    goto :goto_129

    :cond_124
    const/4 v9, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v6

    .line 309
    div-int/2addr v1, v9

    .line 317
    :goto_129
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v6, v1

    .line 318
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentRight:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_13d

    :cond_135
    const/4 v9, 0x2

    sub-int/2addr v1, v6

    .line 320
    div-int/2addr v1, v9

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v1, v5

    add-int v5, v1, v6

    :goto_13d
    sub-int v6, v5, v1

    if-gtz v6, :cond_149

    .line 326
    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_149
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLine:F

    cmpl-float v8, v5, v17

    if-eqz v8, :cond_1a3

    .line 332
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineType:I

    if-nez v8, :cond_169

    int-to-float v2, v2

    mul-float/2addr v2, v5

    .line 333
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v2, v5

    .line 335
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_162

    goto :goto_193

    :cond_162
    if-ne v5, v15, :cond_194

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    .line 338
    div-int/2addr v2, v9

    goto :goto_194

    .line 342
    :cond_169
    iget-object v2, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget-object v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 343
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->cueLine:F

    cmpl-float v8, v5, v19

    if-ltz v8, :cond_187

    int-to-float v2, v2

    mul-float/2addr v5, v2

    .line 344
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v2, v5

    goto :goto_194

    :cond_187
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v5, v8

    int-to-float v2, v2

    mul-float/2addr v5, v2

    .line 346
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v2, v5

    :goto_193
    sub-int/2addr v2, v3

    :cond_194
    :goto_194
    add-int v5, v2, v3

    .line 350
    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    if-le v5, v8, :cond_19d

    sub-int v2, v8, v3

    goto :goto_1ad

    .line 352
    :cond_19d
    iget v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentTop:I

    if-ge v2, v3, :cond_1ad

    move v2, v3

    goto :goto_1ad

    .line 356
    :cond_1a3
    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v5, v3

    int-to-float v2, v2

    iget v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v5, v2

    .line 360
    :cond_1ad
    :goto_1ad
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingMult:F

    iget v9, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingAdd:F

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move/from16 v19, v6

    iput-object v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 363
    new-instance v16, Landroid/text/StaticLayout;

    iget-object v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingMult:F

    iget v5, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->spacingAdd:F

    const/16 v23, 0x1

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v20, v7

    move-object/from16 v17, v18

    move-object/from16 v18, v3

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v16

    iput-object v3, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 366
    iput v1, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textLeft:I

    .line 367
    iput v2, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textTop:I

    .line 368
    iput v11, v0, Lio/bidmachine/media3/ui/SubtitlePainter;->textPaddingX:I

    return-void
.end method
