###### Class io.bidmachine.media3.ui.WebViewSubtitleOutput (io.bidmachine.media3.ui.WebViewSubtitleOutput)
.class public final Lio/bidmachine/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Lio/bidmachine/media3/ui/SubtitleView$Output;


# instance fields
.field public bottomPaddingFraction:F

.field public final canvasSubtitleOutput:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

.field public defaultTextSize:F

.field public defaultTextSizeType:I

.field public style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

.field public textCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 82
    sget-object v0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->DEFAULT:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    const v0, 0x3d5a511a    # 0.0533f

    .line 83
    iput v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    const v1, 0x3da3d70a    # 0.08f

    .line 85
    iput v1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 87
    new-instance v1, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    .line 88
    new-instance v2, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v2, p0, p1, p2}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$1;-><init>(Lio/bidmachine/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 104
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 106
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static anchorTypeToTranslatePercent(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/16 p0, -0x64

    return p0

    :cond_b
    const/16 p0, -0x32

    return p0
.end method

.method public static convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .registers 3

    .line 403
    const-string v0, "center"

    if-nez p0, :cond_5

    return-object v0

    .line 406
    :cond_5
    sget-object v1, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_17

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    return-object v0

    .line 410
    :cond_14
    const-string p0, "end"

    return-object p0

    .line 408
    :cond_17
    const-string p0, "start"

    return-object p0
.end method

.method public static convertCaptionStyleToCssTextShadow(Lio/bidmachine/media3/ui/CaptionStyleCompat;)Ljava/lang/String;
    .registers 3

    .line 369
    iget v0, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    .line 386
    const-string p0, "unset"

    return-object p0

    .line 371
    :cond_11
    iget p0, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 372
    invoke-static {p0}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 371
    const-string v0, "-0.05em -0.05em 0.15em %s"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 382
    :cond_22
    iget p0, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 383
    invoke-static {p0}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 382
    const-string v0, "0.06em 0.08em 0.15em %s"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 374
    :cond_33
    iget p0, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    invoke-static {p0}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "0.1em 0.12em 0.15em %s"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_44
    iget p0, p0, Lio/bidmachine/media3/ui/CaptionStyleCompat;->edgeColor:I

    .line 380
    invoke-static {p0}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 378
    const-string v0, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertVerticalTypeToCss(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 398
    const-string p0, "horizontal-tb"

    return-object p0

    .line 393
    :cond_9
    const-string p0, "vertical-lr"

    return-object p0

    .line 395
    :cond_c
    const-string p0, "vertical-rl"

    return-object p0
.end method

.method public static getBlockShearTransformFunction(Lio/bidmachine/media3/common/text/Cue;)Ljava/lang/String;
    .registers 3

    .line 338
    iget v0, p0, Lio/bidmachine/media3/common/text/Cue;->shearDegrees:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_24

    .line 340
    iget p0, p0, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    const/4 v1, 0x1

    if-ne p0, v1, :cond_10

    goto :goto_13

    .line 342
    :cond_10
    const-string p0, "skewX"

    goto :goto_15

    .line 341
    :cond_13
    :goto_13
    const-string p0, "skewY"

    .line 343
    :goto_15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s(%.2fdeg)"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 345
    :cond_24
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final convertTextSizeToCss(IF)Ljava/lang/String;
    .registers 6

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 359
    invoke-static {p1, p2, v0, v1}, Lio/bidmachine/media3/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_20

    .line 362
    const-string p1, "unset"

    return-object p1

    .line 364
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    .line 365
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fpx"

    invoke-static {p2, p1}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .registers 2

    .line 162
    iget-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 147
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_12

    .line 148
    iget-object p2, p1, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12

    .line 151
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    :cond_12
    return-void
.end method

.method public update(Ljava/util/List;Lio/bidmachine/media3/ui/CaptionStyleCompat;FIF)V
    .registers 12
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

    .line 117
    iput-object p2, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    .line 118
    iput p3, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 119
    iput p4, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    .line 120
    iput p5, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 124
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/text/Cue;

    .line 126
    iget-object v4, v3, Lio/bidmachine/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_27

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 129
    :cond_27
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 133
    :cond_2d
    iget-object p1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_40

    .line 134
    :cond_3b
    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->updateWebView()V

    .line 140
    :cond_40
    iget-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->canvasSubtitleOutput:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->update(Ljava/util/List;Lio/bidmachine/media3/ui/CaptionStyleCompat;FIF)V

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateWebView()V
    .registers 33

    move-object/from16 v0, p0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-object v2, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v2, v2, Lio/bidmachine/media3/ui/CaptionStyleCompat;->foregroundColor:I

    .line 181
    invoke-static {v2}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSizeType:I

    iget v4, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->defaultTextSize:F

    .line 182
    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    .line 183
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    .line 184
    invoke-static {v6}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertCaptionStyleToCssTextShadow(Lio/bidmachine/media3/ui/CaptionStyleCompat;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 168
    const-string v3, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v3, "default_bg"

    invoke-static {v3}, Lio/bidmachine/media3/ui/HtmlUtils;->cssAllClassDescendantsSelector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v6, v6, Lio/bidmachine/media3/ui/CaptionStyleCompat;->backgroundColor:I

    .line 189
    invoke-static {v6}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "background-color:%s;"

    invoke-static {v7, v6}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    move v6, v5

    .line 190
    :goto_53
    iget-object v7, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_20d

    .line 191
    iget-object v7, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->textCues:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/text/Cue;

    .line 192
    iget v9, v7, Lio/bidmachine/media3/common/text/Cue;->position:F

    const v10, -0x800001

    cmpl-float v11, v9, v10

    const/high16 v12, 0x42c80000    # 100.0f

    if-eqz v11, :cond_71

    mul-float/2addr v9, v12

    goto :goto_73

    :cond_71
    const/high16 v9, 0x42480000    # 50.0f

    .line 193
    :goto_73
    iget v11, v7, Lio/bidmachine/media3/common/text/Cue;->positionAnchor:I

    invoke-static {v11}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v11

    .line 198
    iget v13, v7, Lio/bidmachine/media3/common/text/Cue;->line:F

    cmpl-float v14, v13, v10

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v16, v4

    const-string v4, "%.2f%%"

    if-eqz v14, :cond_dd

    .line 199
    iget v14, v7, Lio/bidmachine/media3/common/text/Cue;->lineType:I

    if-eq v14, v8, :cond_ae

    mul-float/2addr v13, v12

    .line 211
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4, v13}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 214
    iget v14, v7, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    if-ne v14, v8, :cond_a2

    .line 215
    iget v14, v7, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v14}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v14

    neg-int v14, v14

    goto :goto_a8

    .line 216
    :cond_a2
    iget v14, v7, Lio/bidmachine/media3/common/text/Cue;->lineAnchor:I

    invoke-static {v14}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->anchorTypeToTranslatePercent(I)I

    move-result v14

    :goto_a8
    move/from16 v17, v10

    move-object/from16 v22, v13

    move v10, v5

    goto :goto_f3

    :cond_ae
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    move/from16 v17, v10

    .line 201
    const-string v10, "%.2fem"

    if-ltz v14, :cond_ca

    mul-float v13, v13, v16

    .line 202
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v13}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move v10, v5

    move v14, v10

    :goto_c7
    move-object/from16 v22, v13

    goto :goto_f3

    :cond_ca
    neg-float v13, v13

    sub-float/2addr v13, v15

    mul-float v13, v13, v16

    .line 204
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v10, v13}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move v14, v5

    move v10, v8

    goto :goto_c7

    :cond_dd
    move/from16 v17, v10

    .line 219
    iget v10, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->bottomPaddingFraction:F

    sub-float/2addr v15, v10

    mul-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v4, v10}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, -0x64

    move v10, v5

    goto :goto_c7

    .line 224
    :goto_f3
    iget v13, v7, Lio/bidmachine/media3/common/text/Cue;->size:F

    cmpl-float v15, v13, v17

    if-eqz v15, :cond_109

    mul-float/2addr v13, v12

    .line 225
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v4, v12}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_106
    move-object/from16 v24, v4

    goto :goto_10c

    .line 226
    :cond_109
    const-string v4, "fit-content"

    goto :goto_106

    .line 228
    :goto_10c
    iget-object v4, v7, Lio/bidmachine/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v4}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v25

    .line 229
    iget v4, v7, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    invoke-static {v4}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertVerticalTypeToCss(I)Ljava/lang/String;

    move-result-object v26

    .line 230
    iget v4, v7, Lio/bidmachine/media3/common/text/Cue;->textSizeType:I

    iget v12, v7, Lio/bidmachine/media3/common/text/Cue;->textSize:F

    invoke-virtual {v0, v4, v12}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertTextSizeToCss(IF)Ljava/lang/String;

    move-result-object v27

    .line 232
    iget-boolean v4, v7, Lio/bidmachine/media3/common/text/Cue;->windowColorSet:Z

    if-eqz v4, :cond_127

    iget v4, v7, Lio/bidmachine/media3/common/text/Cue;->windowColor:I

    goto :goto_12b

    :cond_127
    iget-object v4, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->style:Lio/bidmachine/media3/ui/CaptionStyleCompat;

    iget v4, v4, Lio/bidmachine/media3/ui/CaptionStyleCompat;->windowColor:I

    :goto_12b
    invoke-static {v4}, Lio/bidmachine/media3/ui/HtmlUtils;->toCssRgba(I)Ljava/lang/String;

    move-result-object v28

    .line 236
    iget v4, v7, Lio/bidmachine/media3/common/text/Cue;->verticalType:I

    const-string v12, "right"

    const/4 v13, 0x2

    const-string v15, "top"

    const-string v17, "left"

    if-eq v4, v8, :cond_14f

    if-eq v4, v13, :cond_145

    if-eqz v10, :cond_140

    .line 247
    const-string v15, "bottom"

    :cond_140
    move-object/from16 v21, v15

    move-object/from16 v19, v17

    goto :goto_152

    :cond_145
    if-eqz v10, :cond_148

    goto :goto_14a

    :cond_148
    :goto_148
    move-object/from16 v12, v17

    :cond_14a
    :goto_14a
    move-object/from16 v21, v12

    move-object/from16 v19, v15

    goto :goto_152

    :cond_14f
    if-eqz v10, :cond_14a

    goto :goto_148

    :goto_152
    if-eq v4, v13, :cond_15c

    if-ne v4, v8, :cond_157

    goto :goto_15c

    .line 261
    :cond_157
    const-string v4, "width"

    :goto_159
    move-object/from16 v23, v4

    goto :goto_164

    .line 257
    :cond_15c
    :goto_15c
    const-string v4, "height"

    move/from16 v23, v14

    move v14, v11

    move/from16 v11, v23

    goto :goto_159

    .line 264
    :goto_164
    iget-object v4, v7, Lio/bidmachine/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    .line 265
    invoke-static {v4, v10}, Lio/bidmachine/media3/ui/SpannedToHtmlConverter;->convert(Ljava/lang/CharSequence;F)Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    move-result-object v4

    .line 267
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_180
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 270
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_1a7

    .line 273
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a5

    goto :goto_1a7

    :cond_1a5
    move v12, v5

    goto :goto_1a8

    :cond_1a7
    :goto_1a7
    move v12, v8

    .line 271
    :goto_1a8
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    goto :goto_180

    .line 291
    :cond_1ac
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 293
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    .line 302
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 303
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 304
    invoke-static {v7}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->getBlockShearTransformFunction(Lio/bidmachine/media3/common/text/Cue;)Ljava/lang/String;

    move-result-object v31

    filled-new-array/range {v18 .. v31}, [Ljava/lang/Object;

    move-result-object v8

    .line 277
    const-string v9, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v9, v8}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<span class=\'%s\'>"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    .line 305
    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v7, v7, Lio/bidmachine/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const-string v8, "</span>"

    if-eqz v7, :cond_1fa

    .line 311
    invoke-static {v7}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->convertAlignmentToCss(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 309
    const-string v9, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v9, v7}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    .line 312
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1ff

    .line 315
    :cond_1fa
    iget-object v4, v4, Lio/bidmachine/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->html:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_1ff
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    goto/16 :goto_53

    .line 321
    :cond_20d
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    const-string v4, "<html><head><style>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_224
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_247

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 326
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_224

    .line 328
    :cond_247
    const-string v2, "</style></head>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v2, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->webView:Landroid/webkit/WebView;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "base64"

    .line 331
    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.WebViewSubtitleOutput.AnonymousClass1 (io.bidmachine.media3.ui.WebViewSubtitleOutput$1)
.class public Lio/bidmachine/media3/ui/WebViewSubtitleOutput$1;
.super Landroid/webkit/WebView;
.source "WebViewSubtitleOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/WebViewSubtitleOutput;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$1;->this$0:Lio/bidmachine/media3/ui/WebViewSubtitleOutput;

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 92
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 99
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.ui.WebViewSubtitleOutput.AnonymousClass2 (io.bidmachine.media3.ui.WebViewSubtitleOutput$2)
.class public synthetic Lio/bidmachine/media3/ui/WebViewSubtitleOutput$2;
.super Ljava/lang/Object;
.source "WebViewSubtitleOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/WebViewSubtitleOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$android$text$Layout$Alignment:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 406
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    :try_start_9
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$2;->$SwitchMap$android$text$Layout$Alignment:[I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
