###### Class io.bidmachine.media3.extractor.text.ssa.SsaParser (io.bidmachine.media3.extractor.text.ssa.SsaParser)
.class public final Lio/bidmachine/media3/extractor/text/ssa/SsaParser;
.super Ljava/lang/Object;
.source "SsaParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# static fields
.field public static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final dialogueFormatFromInitializationData:Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

.field public final haveInitializationData:Z

.field public final parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public screenHeight:F

.field public screenWidth:F

.field public styles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 109
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenWidth:F

    .line 110
    iput v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenHeight:F

    .line 111
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 121
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    .line 122
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    return-void

    .line 124
    :cond_4d
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    return-void
.end method

.method public static addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;>;)I"
        }
    .end annotation

    .line 562
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_2b

    .line 563
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_17

    return v0

    .line 567
    :cond_17
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_28

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2b
    const/4 v0, 0x0

    .line 572
    :goto_2c
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 576
    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3b

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_46

    :cond_3b
    add-int/lit8 p1, v0, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 574
    :goto_46
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static computeDefaultLineOrPosition(I)F
    .registers 2

    .line 0
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const p0, -0x800001

    return p0

    :cond_c
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_10
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_13
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method public static createCue(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;FF)Lio/bidmachine/media3/common/text/Cue;
    .registers 13

    .line 389
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 390
    new-instance p0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p0

    const v1, -0x800001

    const/4 v2, 0x0

    if-eqz p1, :cond_ab

    .line 393
    iget-object v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    const/16 v4, 0x21

    if-eqz v3, :cond_2c

    .line 394
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    .line 395
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 397
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 394
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 400
    :cond_2c
    iget v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    iget-object v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    if-eqz v3, :cond_47

    .line 401
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget-object v6, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    .line 402
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 404
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    .line 401
    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 407
    :cond_47
    iget v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    cmpl-float v6, v3, v1

    const/4 v7, 0x1

    if-eqz v6, :cond_56

    cmpl-float v6, p4, v1

    if-eqz v6, :cond_56

    div-float/2addr v3, p4

    .line 408
    invoke-virtual {p0, v3, v7}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextSize(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 411
    :cond_56
    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->bold:Z

    if-eqz v3, :cond_6b

    iget-boolean v6, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->italic:Z

    if-eqz v6, :cond_6b

    .line 412
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 415
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 412
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8b

    :cond_6b
    if-eqz v3, :cond_7a

    .line 418
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 421
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 418
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8b

    .line 423
    :cond_7a
    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->italic:Z

    if-eqz v3, :cond_8b

    .line 424
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 427
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 424
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 430
    :cond_8b
    :goto_8b
    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->underline:Z

    if-eqz v3, :cond_9b

    .line 431
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 434
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 431
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 437
    :cond_9b
    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    if-eqz v3, :cond_ab

    .line 438
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 441
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 438
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 447
    :cond_ab
    iget v0, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->alignment:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b1

    goto :goto_b7

    :cond_b1
    if-eqz p1, :cond_b6

    .line 450
    iget v0, p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->alignment:I

    goto :goto_b7

    :cond_b6
    move v0, v3

    .line 454
    :goto_b7
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->toTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 455
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->toPositionAnchor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 456
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->toLineAnchor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 458
    iget-object p1, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    if-eqz p1, :cond_e9

    cmpl-float v0, p4, v1

    if-eqz v0, :cond_e9

    cmpl-float v0, p3, v1

    if-eqz v0, :cond_e9

    .line 461
    iget p1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 462
    iget-object p1, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->position:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p4

    invoke-virtual {p0, p1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    goto :goto_ff

    .line 465
    :cond_e9
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getPositionAnchor()I

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->computeDefaultLineOrPosition(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 466
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->getLineAnchor()I

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->computeDefaultLineOrPosition(I)F

    move-result p1

    invoke-virtual {p0, p1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 469
    :goto_ff
    invoke-virtual {p0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method public static parseStyles(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 268
    :cond_6
    :goto_6
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_54

    .line 270
    :cond_1a
    const-string v3, "Format:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 271
    invoke-static {v2}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;->fromFormatLine(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;

    move-result-object v1

    goto :goto_6

    .line 272
    :cond_27
    const-string v3, "Style:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_48

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SsaParser"

    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 277
    :cond_48
    invoke-static {v2, v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->fromStyleLine(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Format;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 279
    iget-object v3, v2, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_54
    return-object v0
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .registers 7

    .line 371
    sget-object v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_16

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_16
    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xd693a400L

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    .line 377
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x3938700

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    .line 378
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 379
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static toLineAnchor(I)I
    .registers 4

    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_24

    .line 512
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaParser"

    invoke-static {v1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1c
    const/4 p0, 0x0

    return p0

    :pswitch_1e
    const/4 p0, 0x1

    return p0

    :pswitch_20
    const/4 p0, 0x2

    return p0

    :pswitch_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_22
        :pswitch_5
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static toPositionAnchor(I)I
    .registers 4

    const/high16 v0, -0x80000000

    packed-switch p0, :pswitch_data_24

    .line 534
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaParser"

    invoke-static {v1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_1c
    const/4 p0, 0x2

    return p0

    :pswitch_1e
    const/4 p0, 0x1

    return p0

    :pswitch_20
    const/4 p0, 0x0

    return p0

    :pswitch_22
    return v0

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_22
        :pswitch_5
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static toTextAlignment(I)Landroid/text/Layout$Alignment;
    .registers 4

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_26

    .line 490
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaParser"

    invoke-static {v1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 486
    :pswitch_1b
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 482
    :pswitch_1e
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 478
    :pswitch_21
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :pswitch_24
    return-object v0

    nop

    :pswitch_data_26
    .packed-switch -0x1
        :pswitch_24
        :pswitch_4
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public final detectUtfCharset(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;
    .registers 2

    .line 191
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 192
    :cond_7
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p1
.end method

.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int v7, v1, p3

    move-object/from16 v8, p1

    invoke-virtual {v6, v8, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 145
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 146
    iget-object v1, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->detectUtfCharset(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 148
    iget-boolean v6, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    if-nez v6, :cond_2f

    .line 149
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v6, v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    .line 151
    :cond_2f
    iget-object v6, v0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v6, v4, v5, v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseEventBody(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V

    .line 155
    iget-wide v6, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v6, v8

    if-eqz v1, :cond_49

    iget-boolean v1, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    if-eqz v1, :cond_49

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    const/4 v6, 0x0

    .line 158
    :goto_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b8

    .line 159
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/util/List;

    .line 160
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_63

    if-eqz v6, :cond_63

    move-wide/from16 p1, v8

    goto :goto_ad

    .line 164
    :cond_63
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_b2

    .line 168
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-int/lit8 v7, v6, 0x1

    .line 170
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    move-wide/from16 p1, v8

    .line 171
    iget-wide v8, v2, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v7, v8, p1

    if-eqz v7, :cond_a5

    cmp-long v7, v12, v8

    if-ltz v7, :cond_9a

    goto :goto_a5

    :cond_9a
    if-eqz v1, :cond_ad

    .line 175
    new-instance v10, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-direct/range {v10 .. v15}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ad

    .line 172
    :cond_a5
    :goto_a5
    new-instance v10, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-direct/range {v10 .. v15}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {v3, v10}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, p1

    goto :goto_4b

    .line 166
    :cond_b2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_b8
    if-eqz v1, :cond_ce

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 181
    invoke-interface {v3, v2}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_be

    :cond_ce
    return-void
.end method

.method public final parseDialogueLine(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 322
    const-string v0, "Dialogue:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const/16 v0, 0x9

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    const-string v2, ","

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 325
    array-length v1, v0

    iget v2, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->length:I

    const-string v3, "SsaParser"

    if-eq v1, v2, :cond_33

    .line 326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping dialogue line with fewer columns than format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_33
    iget v1, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->startTimeIndex:I

    aget-object v1, v0, v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    .line 331
    const-string v7, "Skipping invalid timing: "

    if-nez v6, :cond_59

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 336
    :cond_59
    iget v6, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->endTimeIndex:I

    aget-object v6, v0, v6

    invoke-static {v6}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-eqz v4, :cond_c2

    cmp-long v4, v8, v1

    if-gtz v4, :cond_6a

    goto :goto_c2

    .line 344
    :cond_6a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->styles:Ljava/util/Map;

    if-eqz p1, :cond_80

    iget v3, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->styleIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_80

    .line 345
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    .line 347
    :goto_81
    iget p2, p2, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->textIndex:I

    aget-object p2, v0, p2

    .line 348
    invoke-static {p2}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->parseFromDialogue(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;

    move-result-object v0

    .line 350
    invoke-static {p2}, Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;->stripStyleOverrides(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\N"

    .line 351
    const-string v4, "\n"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\n"

    .line 352
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\h"

    const-string v4, "\u00a0"

    .line 353
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 354
    iget v3, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenWidth:F

    iget v4, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenHeight:F

    invoke-static {p2, p1, v0, v3, v4}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->createCue(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle;Lio/bidmachine/media3/extractor/text/ssa/SsaStyle$Overrides;FF)Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    .line 356
    invoke-static {v1, v2, p4, p3}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result p2

    .line 357
    invoke-static {v8, v9, p4, p3}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->addCuePlacerholderByTime(JLjava/util/List;Ljava/util/List;)I

    move-result p4

    :goto_b3
    if-ge p2, p4, :cond_c1

    .line 360
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_b3

    :cond_c1
    return-void

    .line 338
    :cond_c2
    :goto_c2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final parseEventBody(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 297
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->haveInitializationData:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->dialogueFormatFromInitializationData:Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 299
    :cond_8
    :goto_8
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 300
    const-string v2, "Format:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 301
    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;->fromFormatLine(Ljava/lang/String;)Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;

    move-result-object v0

    goto :goto_8

    .line 302
    :cond_1b
    const-string v2, "Dialogue:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_3c

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping dialogue line before complete format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SsaParser"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 307
    :cond_3c
    invoke-virtual {p0, v1, v0, p2, p3}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseDialogueLine(Ljava/lang/String;Lio/bidmachine/media3/extractor/text/ssa/SsaDialogueFormat;Ljava/util/List;Ljava/util/List;)V

    goto :goto_8

    :cond_40
    return-void
.end method

.method public final parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .registers 5

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 204
    const-string v1, "[Script Info]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 205
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseScriptInfo(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 206
    :cond_12
    const-string v1, "[V4+ Styles]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 207
    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->parseStyles(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->styles:Ljava/util/Map;

    goto :goto_0

    .line 208
    :cond_21
    const-string v1, "[V4 Styles]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 209
    const-string v0, "SsaParser"

    const-string v1, "[V4 Styles] are not supported"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_31
    const-string v1, "[Events]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_39
    return-void
.end method

.method public final parseScriptInfo(Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .registers 7

    .line 229
    :catch_0
    :goto_0
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 230
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_59

    .line 231
    :cond_14
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v1, 0x0

    .line 235
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, "playresx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string v3, "playresy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_0

    .line 245
    :cond_3f
    :try_start_3f
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenHeight:F

    goto :goto_0

    .line 238
    :cond_4c
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/text/ssa/SsaParser;->screenWidth:F
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_58} :catch_0

    goto :goto_0

    :cond_59
    return-void
.end method
