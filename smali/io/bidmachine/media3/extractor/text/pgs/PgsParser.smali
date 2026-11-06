###### Class io.bidmachine.media3.extractor.text.pgs.PgsParser (io.bidmachine.media3.extractor.text.pgs.PgsParser)
.class public final Lio/bidmachine/media3/extractor/text/pgs/PgsParser;
.super Ljava/lang/Object;
.source "PgsParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;
    }
.end annotation


# instance fields
.field public final buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final cueBuilder:Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;

.field public final inflatedBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 59
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 60
    new-instance v0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;

    return-void
.end method

.method public static readNextSection(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;)Lio/bidmachine/media3/common/text/Cue;
    .registers 7

    .line 97
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 101
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_18

    .line 103
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v4

    :cond_18
    const/16 v0, 0x80

    if-eq v1, v0, :cond_2c

    packed-switch v1, :pswitch_data_38

    goto :goto_33

    .line 116
    :pswitch_20
    invoke-static {p1, p0, v2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$200(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    goto :goto_33

    .line 113
    :pswitch_24
    invoke-static {p1, p0, v2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$100(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    goto :goto_33

    .line 110
    :pswitch_28
    invoke-static {p1, p0, v2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->access$000(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    goto :goto_33

    .line 119
    :cond_2c
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v4

    .line 120
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->reset()V

    .line 126
    :goto_33
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object v4

    nop

    :pswitch_data_38
    .packed-switch 0x14
        :pswitch_28
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
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

    .line 75
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 76
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 77
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    if-nez p1, :cond_16

    .line 78
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    .line 80
    :cond_16
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/common/util/Util;->maybeInflate(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 81
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 83
    :cond_33
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->reset()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_54

    .line 86
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->cueBuilder:Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser;->readNextSection(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;)Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 88
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 91
    :cond_54
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.pgs.PgsParser.CueBuilder (io.bidmachine.media3.extractor.text.pgs.PgsParser$CueBuilder)
.class public final Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;
.super Ljava/lang/Object;
.source "PgsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/pgs/PgsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# instance fields
.field public final bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public bitmapHeight:I

.field public bitmapWidth:I

.field public bitmapX:I

.field public bitmapY:I

.field public final colors:[I

.field public colorsSet:Z

.field public planeHeight:I

.field public planeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x100

    .line 145
    new-array v0, v0, [I

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 3

    .line 130
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->parsePaletteSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 3

    .line 130
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->parseBitmapSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 3

    .line 130
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->parseIdentifierSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/text/Cue;
    .registers 8

    .line 219
    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_cc

    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_cc

    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_cc

    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 223
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 224
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_cc

    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_2c

    goto/16 :goto_cc

    .line 229
    :cond_2c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 230
    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    mul-int/2addr v0, v2

    new-array v2, v0, [I

    move v3, v1

    :cond_3a
    :goto_3a
    if-ge v3, v0, :cond_80

    .line 233
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_4e

    add-int/lit8 v5, v3, 0x1

    .line 235
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_4c
    move v3, v5

    goto :goto_3a

    .line 237
    :cond_4e
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_3a

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_5d

    and-int/lit8 v5, v4, 0x3f

    goto :goto_68

    :cond_5d
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 242
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    :goto_68
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_71

    .line 244
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    aget v4, v4, v1

    goto :goto_7b

    :cond_71
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aget v4, v4, v6

    :goto_7b
    add-int/2addr v5, v3

    .line 245
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_4c

    .line 251
    :cond_80
    iget v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    iget v3, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 252
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 255
    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    iget v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    int-to-float v2, v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 256
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    iget v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    int-to-float v2, v2

    iget v3, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 258
    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 260
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    int-to-float v1, v1

    iget v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 261
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setBitmapHeight(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object v0

    return-object v0

    :cond_cc
    :goto_cc
    const/4 v0, 0x0

    return-object v0
.end method

.method public final parseBitmapSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 6

    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    goto :goto_5a

    :cond_4
    const/4 v1, 0x3

    .line 179
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 180
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/lit8 v2, p2, -0x4

    if-eqz v1, :cond_36

    const/4 v1, 0x7

    if-ge v2, v1, :cond_1b

    goto :goto_5a

    .line 187
    :cond_1b
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    if-ge v1, v0, :cond_22

    goto :goto_5a

    .line 191
    :cond_22
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    .line 192
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    .line 193
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    add-int/lit8 v2, p2, -0xb

    .line 197
    :cond_36
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p2

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge p2, v0, :cond_5a

    if-lez v2, :cond_5a

    sub-int/2addr v0, p2

    .line 200
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 201
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 202
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final parseIdentifierSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 4

    const/16 v0, 0x13

    if-ge p2, v0, :cond_5

    return-void

    .line 210
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    .line 211
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    const/16 p2, 0xb

    .line 212
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    .line 214
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    return-void
.end method

.method public final parsePaletteSection(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 22

    move-object/from16 v0, p0

    .line 149
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    return-void

    :cond_8
    move-object/from16 v1, p1

    .line 153
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 155
    iget-object v2, v0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 156
    div-int/lit8 v2, p2, 0x5

    move v4, v3

    :goto_16
    if-ge v4, v2, :cond_73

    .line 158
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 159
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 160
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 161
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 162
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-double v10, v6

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    add-int/lit8 v8, v8, -0x80

    int-to-double v13, v8

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v15, v13

    sub-double v15, v10, v15

    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v17

    sub-double v6, v15, v6

    double-to-int v6, v6

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v13, v7

    add-double/2addr v10, v13

    double-to-int v7, v10

    .line 166
    iget-object v8, v0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colors:[I

    shl-int/lit8 v9, v9, 0x18

    const/16 v10, 0xff

    .line 168
    invoke-static {v12, v3, v10}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v9, v11

    .line 169
    invoke-static {v6, v3, v10}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v9

    .line 170
    invoke-static {v7, v3, v10}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    or-int/2addr v6, v7

    aput v6, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_73
    const/4 v1, 0x1

    .line 172
    iput-boolean v1, v0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeWidth:I

    .line 267
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->planeHeight:I

    .line 268
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapX:I

    .line 269
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapY:I

    .line 270
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapWidth:I

    .line 271
    iput v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapHeight:I

    .line 272
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->bitmapData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 273
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/pgs/PgsParser$CueBuilder;->colorsSet:Z

    return-void
.end method
