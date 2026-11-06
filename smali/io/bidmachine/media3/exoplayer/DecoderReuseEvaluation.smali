###### Class io.bidmachine.media3.exoplayer.DecoderReuseEvaluation (io.bidmachine.media3.exoplayer.DecoderReuseEvaluation)
.class public final Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;
.super Ljava/lang/Object;
.source "DecoderReuseEvaluation.java"


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final discardReasons:I

.field public final newFormat:Lio/bidmachine/media3/common/Format;

.field public final oldFormat:Lio/bidmachine/media3/common/Format;

.field public final result:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;II)V
    .registers 7

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_a

    if-nez p5, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 172
    :goto_b
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 173
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 174
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Lio/bidmachine/media3/common/Format;

    .line 175
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Lio/bidmachine/media3/common/Format;

    .line 176
    iput p4, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 177
    iput p5, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    if-eq v3, v2, :cond_10

    goto :goto_3d

    .line 188
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    .line 189
    iget v2, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-ne v2, v3, :cond_3d

    iget v2, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Lio/bidmachine/media3/common/Format;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Lio/bidmachine/media3/common/Format;

    .line 192
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Lio/bidmachine/media3/common/Format;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Lio/bidmachine/media3/common/Format;

    .line 193
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 199
    iget v1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget v1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->oldFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->newFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
