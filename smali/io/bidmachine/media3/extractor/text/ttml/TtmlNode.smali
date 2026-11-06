###### Class io.bidmachine.media3.extractor.text.ttml.TtmlNode (io.bidmachine.media3.extractor.text.ttml.TtmlNode)
.class public final Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final endTimeUs:J

.field public final imageId:Ljava/lang/String;

.field public final isTextNode:Z

.field public final nodeEndsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final nodeStartsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

.field public final regionId:Ljava/lang/String;

.field public final startTimeUs:J

.field public final style:Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

.field public final styleIds:[Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V
    .registers 12

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 176
    iput-object p10, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    .line 177
    iput-object p7, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->style:Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    .line 178
    iput-object p8, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    if-eqz p2, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 179
    :goto_12
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->isTextNode:Z

    .line 180
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    .line 181
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    .line 182
    invoke-static {p9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 183
    iput-object p11, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->parent:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    .line 184
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 185
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    return-void
.end method

.method public static buildNode(Ljava/lang/String;JJLio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;
    .registers 22

    .line 160
    new-instance v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V

    return-object v0
.end method

.method public static buildTextNode(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;
    .registers 13

    .line 139
    new-instance v0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    .line 141
    invoke-static {p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRenderUtil;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V

    return-object v0
.end method

.method public static cleanUpText(Landroid/text/SpannableStringBuilder;)V
    .registers 8

    .line 435
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lio/bidmachine/media3/extractor/text/ttml/DeleteTextSpan;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/media3/extractor/text/ttml/DeleteTextSpan;

    .line 436
    array-length v1, v0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 437
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v6, ""

    invoke-virtual {p0, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_23
    move v0, v2

    .line 440
    :goto_24
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x20

    if-ge v0, v1, :cond_4e

    .line 441
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4b

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    .line 443
    :goto_35
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_44

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_44

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_44
    sub-int/2addr v4, v1

    if-lez v4, :cond_4b

    add-int/2addr v4, v0

    .line 448
    invoke-virtual {p0, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 453
    :cond_4e
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_5e

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5e

    .line 454
    invoke-virtual {p0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_5e
    move v0, v2

    .line 456
    :goto_5f
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0xa

    if-ge v0, v4, :cond_7e

    .line 457
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7b

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_7b

    add-int/lit8 v5, v0, 0x2

    .line 458
    invoke-virtual {p0, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 462
    :cond_7e
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9b

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_9b

    .line 463
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 465
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_b6

    .line 466
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_b3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_b3

    .line 467
    invoke-virtual {p0, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 471
    :cond_b6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_d3

    .line 472
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_d3
    return-void
.end method

.method public static getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/text/Cue$Builder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 360
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 361
    new-instance v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 362
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 363
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_16
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method


# virtual methods
.method public addChild(Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;)V
    .registers 3

    .line 196
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_b

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    .line 199
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyStyleToOutput(Ljava/util/Map;Lio/bidmachine/media3/common/text/Cue$Builder;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Lio/bidmachine/media3/common/text/Cue$Builder;",
            "III)V"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->style:Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRenderUtil;->resolveStyle(Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;

    move-result-object v5

    .line 403
    invoke-virtual {p2}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_18

    .line 405
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 406
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    :cond_18
    move-object v2, v0

    if-eqz v5, :cond_60

    .line 409
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->parent:Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-object v7, p1

    move v3, p3

    move v4, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRenderUtil;->applyStylesToSpan(Landroid/text/Spannable;IILio/bidmachine/media3/extractor/text/ttml/TtmlStyle;Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;I)V

    .line 411
    const-string p1, "p"

    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 412
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getShearPercentage()F

    move-result p1

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_46

    .line 420
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getShearPercentage()F

    move-result p1

    const/high16 p3, -0x3d4c0000    # -90.0f

    mul-float/2addr p1, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setShearDegrees(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 422
    :cond_46
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 423
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 425
    :cond_53
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getMultiRowAlign()Landroid/text/Layout$Alignment;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 426
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;->getMultiRowAlign()Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    :cond_60
    return-void
.end method

.method public getChild(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;
    .registers 3

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    return-object p1

    .line 204
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChildCount()I
    .registers 2

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCues(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    .line 257
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    const/4 v5, 0x0

    .line 258
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v2, p0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 259
    iget-object p1, v2, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v5, p3

    move-object v6, p4

    move-object v8, v7

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    move-object v7, v8

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_92

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 265
    iget-object p4, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_41

    goto :goto_2a

    :cond_41
    const/4 v0, 0x0

    .line 271
    invoke-static {p4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p4

    .line 272
    array-length v1, p4

    invoke-static {p4, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 273
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    .line 275
    new-instance v1, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 277
    invoke-virtual {v1, p4}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget v1, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->position:F

    .line 278
    invoke-virtual {p4, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    .line 279
    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget v1, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->line:F

    .line 280
    invoke-virtual {p4, v1, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget v0, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    .line 281
    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget v0, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->width:F

    .line 282
    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget v0, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->height:F

    .line 283
    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p4

    iget p3, p3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    .line 284
    invoke-virtual {p4, p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setVerticalType(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p3

    .line 285
    invoke-virtual {p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p3

    .line 275
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 289
    :cond_92
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v6, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    .line 291
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 292
    invoke-virtual {p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/text/SpannableStringBuilder;

    invoke-static {p5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->cleanUpText(Landroid/text/SpannableStringBuilder;)V

    .line 293
    iget p5, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->line:F

    iget v0, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->lineType:I

    invoke-virtual {p3, p5, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 294
    iget p5, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    invoke-virtual {p3, p5}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 295
    iget p5, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->position:F

    invoke-virtual {p3, p5}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 296
    iget p5, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->width:F

    invoke-virtual {p3, p5}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 297
    iget p5, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->textSize:F

    iget v0, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->textSizeType:I

    invoke-virtual {p3, p5, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextSize(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 298
    iget p4, p4, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    invoke-virtual {p3, p4}, Lio/bidmachine/media3/common/text/Cue$Builder;->setVerticalType(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 299
    invoke-virtual {p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_f3
    return-object p1
.end method

.method public final getEventTimes(Ljava/util/TreeSet;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 225
    const-string v0, "p"

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    const-string v1, "div"

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p2, :cond_1a

    if-nez v0, :cond_1a

    if-eqz v1, :cond_39

    .line 227
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 228
    :cond_1a
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2c

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2c
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_39

    .line 232
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_39
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v1, :cond_3e

    goto :goto_5e

    :cond_3e
    const/4 v1, 0x0

    move v2, v1

    .line 238
    :goto_40
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 239
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    if-nez p2, :cond_57

    if-eqz v0, :cond_55

    goto :goto_57

    :cond_55
    move v4, v1

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v4, 0x1

    :goto_58
    invoke-virtual {v3, p1, v4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_5e
    :goto_5e
    return-void
.end method

.method public getEventTimesUs()[J
    .registers 7

    .line 214
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 216
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 218
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 219
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_13

    :cond_29
    return-object v2
.end method

.method public getStyleIds()[Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    return-object v0
.end method

.method public isActive(J)Z
    .registers 9

    .line 189
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2f

    :cond_11
    cmp-long v4, v0, p1

    if-gtz v4, :cond_1b

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2f

    :cond_1b
    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2f

    :cond_25
    cmp-long v0, v0, p1

    if-gtz v0, :cond_31

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_31

    :cond_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method public final traverseForImage(JLjava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 307
    const-string v0, ""

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 308
    :goto_d
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->isActive(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "div"

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 309
    new-instance p1, Landroid/util/Pair;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->imageId:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2c
    const/4 v0, 0x0

    .line 312
    :goto_2d
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 313
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChild(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForImage(JLjava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3d
    return-void
.end method

.method public final traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/text/Cue$Builder;",
            ">;)V"
        }
    .end annotation

    .line 375
    invoke-virtual/range {p0 .. p2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_8c

    .line 378
    :cond_8
    const-string v1, ""

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v7, p5

    goto :goto_17

    :cond_14
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object v7, v1

    .line 379
    :goto_17
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 382
    :cond_48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v8, p6

    if-eq v2, v4, :cond_21

    .line 384
    invoke-interface {p6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 386
    invoke-interface {p4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;

    iget v5, v3, Lio/bidmachine/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    move-object v0, p0

    move v3, v2

    move-object v2, v1

    move-object v1, p3

    .line 387
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->applyStyleToOutput(Ljava/util/Map;Lio/bidmachine/media3/common/text/Cue$Builder;III)V

    goto :goto_21

    :cond_77
    move v1, v2

    :goto_78
    move-object v8, p6

    .line 390
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8c

    .line 391
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChild(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 392
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForStyle(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_8c
    :goto_8c
    return-void
.end method

.method public final traverseForText(JZLjava/lang/String;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/text/Cue$Builder;",
            ">;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 323
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 324
    const-string v0, "metadata"

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_fa

    .line 329
    :cond_16
    const-string v0, ""

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :goto_20
    move-object v4, p4

    goto :goto_25

    :cond_22
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    goto :goto_20

    .line 331
    :goto_25
    iget-boolean p4, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz p4, :cond_3b

    if-eqz p3, :cond_3b

    .line 332
    invoke-static {v4, p5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void

    .line 333
    :cond_3b
    const-string p4, "br"

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_51

    if-eqz p3, :cond_51

    .line 334
    invoke-static {v4, p5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void

    .line 335
    :cond_51
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->isActive(J)Z

    move-result p4

    if-eqz p4, :cond_fa

    .line 337
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_5f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 338
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 342
    :cond_8f
    const-string p4, "p"

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v6, 0x0

    move v7, v6

    .line 343
    :goto_99
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_b8

    .line 344
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getChild(I)Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;

    move-result-object v0

    if-nez p3, :cond_ac

    if-eqz p4, :cond_a8

    goto :goto_ac

    :cond_a8
    move v3, v6

    move-wide v1, p1

    move-object v5, p5

    goto :goto_b0

    :cond_ac
    :goto_ac
    const/4 v1, 0x1

    move v3, v1

    move-object v5, p5

    move-wide v1, p1

    .line 345
    :goto_b0
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    move-wide p1, v1

    move-object p5, v5

    goto :goto_99

    :cond_b8
    move-object v5, p5

    if-eqz p4, :cond_c2

    .line 348
    invoke-static {v4, v5}, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->getRegionOutputText(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ttml/TtmlRenderUtil;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    .line 351
    :cond_c2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_fa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 352
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    .line 353
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/text/Cue$Builder;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 352
    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    :cond_fa
    :goto_fa
    return-void
.end method
