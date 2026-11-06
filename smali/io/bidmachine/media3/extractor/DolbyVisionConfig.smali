###### Class io.bidmachine.media3.extractor.DolbyVisionConfig (io.bidmachine.media3.extractor.DolbyVisionConfig)
.class public final Lio/bidmachine/media3/extractor/DolbyVisionConfig;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->profile:I

    .line 70
    iput p2, p0, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->level:I

    .line 71
    iput-object p3, p0, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/DolbyVisionConfig;
    .registers 7

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 37
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    shl-int/2addr v0, v2

    .line 39
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    const/4 v0, 0x4

    const/16 v3, 0xa

    if-eq v1, v0, :cond_34

    if-eq v1, v2, :cond_34

    const/4 v0, 0x7

    if-eq v1, v0, :cond_34

    const/16 v0, 0x8

    if-ne v1, v0, :cond_26

    goto :goto_34

    :cond_26
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2d

    .line 44
    const-string v0, "dvav"

    goto :goto_36

    :cond_2d
    if-ne v1, v3, :cond_32

    .line 46
    const-string v0, "dav1"

    goto :goto_36

    :cond_32
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_34
    :goto_34
    const-string v0, "dvhe"

    .line 50
    :goto_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "."

    const-string v4, ".0"

    if-ge v1, v3, :cond_46

    move-object v5, v4

    goto :goto_47

    :cond_46
    move-object v5, v0

    :goto_47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge p0, v3, :cond_50

    move-object v0, v4

    .line 54
    :cond_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Lio/bidmachine/media3/extractor/DolbyVisionConfig;

    invoke-direct {v2, v1, p0, v0}, Lio/bidmachine/media3/extractor/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
