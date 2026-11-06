###### Class io.bidmachine.media3.extractor.text.vobsub.VobsubParser (io.bidmachine.media3.extractor.text.vobsub.VobsubParser)
.class public final Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;
.super Ljava/lang/Object;
.source "VobsubParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
    }
.end annotation


# instance fields
.field public final cueBuilder:Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

.field public final inflatedScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public inflater:Ljava/util/zip/Inflater;

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 63
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflatedScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 64
    new-instance v0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    .line 65
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseIdx(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public final parse()Lio/bidmachine/media3/common/text/Cue;
    .registers 4

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflater:Ljava/util/zip/Inflater;

    .line 95
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflatedScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflater:Ljava/util/zip/Inflater;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->maybeInflate(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 96
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflatedScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->inflatedScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 98
    :cond_28
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->reset()V

    .line 99
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4f

    .line 100
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    if-eq v1, v0, :cond_3f

    goto :goto_4f

    .line 103
    :cond_3f
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseSpu(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->build(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 81
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 82
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;->parse()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    .line 83
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    if-eqz p1, :cond_19

    .line 85
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_17
    move-object v1, p1

    goto :goto_1e

    :cond_19
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_17

    :goto_1e
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v4, 0x4c4b40

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 83
    invoke-interface {p5, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.vobsub.VobsubParser.AnonymousClass1 (io.bidmachine.media3.extractor.text.vobsub.VobsubParser$1)
.class public synthetic Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$1;
.super Ljava/lang/Object;
.source "VobsubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.text.vobsub.VobsubParser.CueBuilder (io.bidmachine.media3.extractor.text.vobsub.VobsubParser$CueBuilder)
.class public final Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
.super Ljava/lang/Object;
.source "VobsubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
    }
.end annotation


# instance fields
.field public boundingBox:Landroid/graphics/Rect;

.field public final colors:[I

.field public dataOffset0:I

.field public dataOffset1:I

.field public hasColors:Z

.field public hasPlane:Z

.field public palette:[I

.field public planeHeight:I

.field public planeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [I

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 132
    iput v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    return-void
.end method

.method public static getColor([II)I
    .registers 3

    if-ltz p1, :cond_8

    .line 234
    array-length v0, p0

    if-ge p1, v0, :cond_8

    aget p0, p0, p1

    return p0

    :cond_8
    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x10

    .line 164
    :try_start_2
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public static parseRun(Lio/bidmachine/media3/common/util/ParsableBitArray;ILio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_3
    const/4 v3, 0x4

    if-ge v2, v1, :cond_20

    const/16 v4, 0x40

    if-gt v1, v4, :cond_20

    .line 375
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v4

    if-ge v4, v3, :cond_16

    const/4 p0, -0x1

    .line 376
    iput p0, p2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    .line 377
    iput v0, p2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    return-void

    :cond_16
    shl-int/lit8 v2, v2, 0x4

    .line 380
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    or-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_20
    and-int/lit8 p0, v2, 0x3

    .line 383
    iput p0, p2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    if-ge v2, v3, :cond_27

    goto :goto_29

    :cond_27
    shr-int/lit8 p1, v2, 0x2

    .line 384
    :goto_29
    iput p1, p2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    return-void
.end method

.method public static setAlpha(II)I
    .registers 3

    .line 0
    const v0, 0xffffff

    and-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0x11

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public build(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/text/Cue;
    .registers 7

    .line 295
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    if-eqz v0, :cond_a8

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-eqz v0, :cond_a8

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    if-eqz v0, :cond_a8

    iget v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a8

    iget v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    if-eq v1, v2, :cond_a8

    .line 301
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a8

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_2a

    goto/16 :goto_a8

    .line 305
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    .line 307
    new-instance v2, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    .line 309
    iget v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 310
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    const/4 v3, 0x1

    .line 311
    invoke-virtual {p0, v2, v3, v0, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Lio/bidmachine/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 312
    iget v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 313
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    const/4 p1, 0x0

    .line 314
    invoke-virtual {p0, v2, p1, v0, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRleData(Lio/bidmachine/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V

    .line 318
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 317
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    new-instance v2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 321
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 322
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 324
    invoke-virtual {v1, v2, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    return-object p1

    :cond_a8
    :goto_a8
    const/4 p1, 0x0

    return-object p1
.end method

.method public final parseControl([ILio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 5

    .line 182
    :cond_0
    :pswitch_0
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p3, :cond_2f

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2f

    .line 183
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 200
    :pswitch_14
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlOffsets(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2f

    .line 195
    :pswitch_1b
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlArea(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2f

    .line 190
    :pswitch_22
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlAlpha(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2f

    .line 185
    :pswitch_29
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControlColors([ILio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2f
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method

.method public final parseControlAlpha(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 9

    .line 239
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_48

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    if-nez v0, :cond_d

    goto :goto_48

    .line 243
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 244
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 246
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    const/4 v4, 0x3

    aget v5, v3, v4

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v5, v6}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v5

    aput v5, v3, v4

    .line 247
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    aget v4, v3, v2

    and-int/lit8 v0, v0, 0xf

    invoke-static {v4, v0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v0

    aput v0, v3, v2

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    shr-int/lit8 v4, p1, 0x4

    invoke-static {v3, v4}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result v3

    aput v3, v0, v2

    .line 249
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    aget v3, v0, v1

    and-int/lit8 p1, p1, 0xf

    invoke-static {v3, p1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->setAlpha(II)I

    move-result p1

    aput p1, v0, v1

    return v2

    :cond_48
    :goto_48
    return v1
.end method

.method public final parseControlArea(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 7

    .line 259
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 263
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 264
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 265
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 270
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 271
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 272
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v2, v4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p1, v3

    .line 277
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    add-int/2addr p1, v4

    invoke-direct {v3, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    return v4
.end method

.method public final parseControlColors([ILio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 9

    .line 217
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    return v1

    .line 221
    :cond_9
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 222
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 224
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    shr-int/lit8 v4, v0, 0x4

    invoke-static {p1, v4}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 225
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    and-int/lit8 v0, v0, 0xf

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v0

    aput v0, v3, v2

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    shr-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 227
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    and-int/lit8 p2, p2, 0xf

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->getColor([II)I

    move-result p1

    aput p1, v0, v1

    .line 228
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    return v3
.end method

.method public final parseControlOffsets(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 4

    .line 283
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 287
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 288
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    const/4 p1, 0x1

    return p1
.end method

.method public parseIdx(Ljava/lang/String;)V
    .registers 9

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\r?\\n"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_79

    aget-object v3, p1, v2

    .line 137
    const-string v4, "palette: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v4, 0x9

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    move v4, v1

    .line 141
    :goto_2b
    array-length v5, v3

    if-ge v4, v5, :cond_76

    .line 142
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 144
    :cond_3f
    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v4, 0x6

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_76

    .line 151
    :try_start_5a
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeWidth:I

    const/4 v4, 0x1

    .line 152
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->planeHeight:I

    .line 153
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception v3

    .line 155
    const-string v4, "VobsubParser"

    const-string v5, "Parsing IDX failed"

    invoke-static {v4, v5, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_79
    return-void
.end method

.method public final parseRleData(Lio/bidmachine/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V
    .registers 14

    .line 342
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 343
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    xor-int/lit8 p2, p2, 0x1

    mul-int v1, p2, v0

    .line 347
    new-instance v2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;-><init>(Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$1;)V

    const/4 v3, 0x0

    :goto_13
    move v4, v3

    .line 350
    :cond_14
    invoke-static {p1, v0, v2}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseRun(Lio/bidmachine/media3/common/util/ParsableBitArray;ILio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;)V

    .line 352
    iget v5, v2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->length:I

    sub-int v6, v0, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lez v5, :cond_2e

    add-int v6, v1, v5

    .line 354
    iget-object v7, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->colors:[I

    iget v8, v2, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->colorIndex:I

    aget v7, v7, v8

    invoke-static {p4, v1, v6, v7}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v5

    move v1, v6

    :cond_2e
    if-lt v4, v0, :cond_14

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_35

    return-void

    :cond_35
    mul-int v1, p2, v0

    .line 365
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->byteAlign()V

    goto :goto_13
.end method

.method public parseSpu(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->palette:[I

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasPlane:Z

    if-nez v1, :cond_9

    goto :goto_19

    .line 176
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 178
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->parseControl([ILio/bidmachine/media3/common/util/ParsableByteArray;I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->hasColors:Z

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->boundingBox:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset0:I

    .line 391
    iput v0, p0, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->dataOffset1:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.vobsub.VobsubParser.CueBuilder.Run (io.bidmachine.media3.extractor.text.vobsub.VobsubParser$CueBuilder$Run)
.class public final Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
.super Ljava/lang/Object;
.source "VobsubParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Run"
.end annotation


# instance fields
.field public colorIndex:I

.field public length:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$1;)V
    .registers 2

    .line 394
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;-><init>()V

    return-void
.end method
