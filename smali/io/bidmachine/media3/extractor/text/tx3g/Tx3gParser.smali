###### Class io.bidmachine.media3.extractor.text.tx3g.Tx3gParser (io.bidmachine.media3.extractor.text.tx3g.Tx3gParser)
.class public final Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "Tx3gParser.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleParser;


# instance fields
.field public final calculatedVideoTrackHeight:I

.field public final customVerticalPlacement:Z

.field public final defaultColorRgba:I

.field public final defaultFontFace:I

.field public final defaultFontFamily:Ljava/lang/String;

.field public final defaultVerticalPlacement:F

.field public final parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_a3

    .line 102
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_2d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_a3

    .line 103
    :cond_2d
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    .line 104
    aget-byte v5, p1, v0

    iput v5, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    const/16 v5, 0x1a

    .line 105
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    .line 110
    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    .line 111
    invoke-static {p1, v5, v0}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v5, "Serif"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v2, "serif"

    :cond_6e
    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    const/16 v0, 0x19

    .line 114
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    .line 115
    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_7f

    move v3, v4

    :cond_7f
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    if-eqz v3, :cond_a0

    const/16 v1, 0xa

    .line 117
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 120
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    return-void

    .line 123
    :cond_a0
    iput v1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    return-void

    .line 126
    :cond_a3
    iput v3, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    .line 128
    iput-object v2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    .line 129
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    .line 130
    iput v1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    .line 131
    iput p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    return-void
.end method

.method public static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 6

    if-eq p1, p2, :cond_13

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 272
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    return-void
.end method

.method public static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 11

    if-eq p1, p2, :cond_54

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_c

    move p5, v1

    goto :goto_d

    :cond_c
    move p5, v0

    :goto_d
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    if-eqz p5, :cond_2b

    if-eqz v2, :cond_22

    .line 246
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_36

    .line 248
    :cond_22
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_36

    :cond_2b
    if-eqz v2, :cond_36

    .line 251
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_36
    :goto_36
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v0

    :goto_3c
    if-eqz v1, :cond_46

    .line 255
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_46
    if-nez v1, :cond_54

    if-nez p5, :cond_54

    if-nez v2, :cond_54

    .line 258
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_54
    return-void
.end method

.method public static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .registers 5

    .line 283
    const-string v0, "sans-serif"

    if-eq p1, v0, :cond_f

    .line 284
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const p1, 0xff0021

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    return-void
.end method

.method public static readSubtitleText(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/lang/String;
    .registers 5

    .line 198
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_16

    .line 201
    const-string p0, ""

    return-object p0

    .line 203
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 204
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    if-eqz v2, :cond_27

    goto :goto_29

    .line 207
    :cond_27
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 206
    :goto_29
    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyStyleRecord(Lio/bidmachine/media3/common/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .registers 12

    .line 212
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 214
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    .line 215
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 216
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 217
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 218
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-string v2, ")."

    const-string v3, "Tx3gParser"

    if-le v0, v1, :cond_57

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Truncating styl end ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to cueText.length() ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v3, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    :cond_57
    move v7, v0

    if-lt v6, v7, :cond_7a

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring styl with start ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") >= end ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_7a
    iget v5, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    const/4 v8, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 230
    iget v5, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    move v4, p1

    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method public getCueReplacementBehavior()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 148
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 149
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->readSubtitleText(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 151
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 153
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 151
    invoke-interface {p5, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_2e
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    iget v2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFace:I

    .line 161
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/high16 v6, 0xff0000

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 160
    invoke-static/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 162
    iget v2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultColorRgba:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v3, -0x1

    invoke-static/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 163
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultFontFamily:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const/4 p3, 0x0

    invoke-static {v1, p1, p3, p2}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 164
    iget p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->defaultVerticalPlacement:F

    .line 166
    :goto_56
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/16 p4, 0x8

    if-lt p2, p4, :cond_c7

    .line 167
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p2

    .line 168
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p4

    .line 169
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    const v2, 0x7374796c

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_97

    .line 171
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v3, :cond_82

    goto :goto_83

    :cond_82
    move v4, p3

    :goto_83
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 172
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    move v2, p3

    :goto_8d
    if-ge v2, v0, :cond_c0

    .line 174
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v3, v1}, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->applyStyleRecord(Lio/bidmachine/media3/common/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_97
    const v2, 0x74626f78

    if-ne v0, v2, :cond_c0

    .line 176
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->customVerticalPlacement:Z

    if-eqz v0, :cond_c0

    .line 177
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lt p1, v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v4, p3

    :goto_aa
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 178
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    int-to-float p1, p1

    .line 179
    iget v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->calculatedVideoTrackHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v2, 0x3f733333    # 0.95f

    .line 180
    invoke-static {p1, v0, v2}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 182
    :cond_c0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/tx3g/Tx3gParser;->parsableByteArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p2, p4

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_56

    .line 184
    :cond_c7
    new-instance p2, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 186
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p2

    .line 187
    invoke-virtual {p2, p1, p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    .line 190
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 192
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 190
    invoke-interface {p5, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
