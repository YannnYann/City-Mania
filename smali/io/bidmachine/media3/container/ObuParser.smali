###### Class io.bidmachine.media3.container.ObuParser (io.bidmachine.media3.container.ObuParser)
.class public final Lio/bidmachine/media3/container/ObuParser;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/container/ObuParser$Obu;,
        Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;,
        Lio/bidmachine/media3/container/ObuParser$FrameHeader;,
        Lio/bidmachine/media3/container/ObuParser$SequenceHeader;
    }
.end annotation


# direct methods
.method public static synthetic access$100(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lio/bidmachine/media3/container/ObuParser;->throwWhenFeatureRequired(Z)V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 1

    .line 35
    invoke-static {p0}, Lio/bidmachine/media3/container/ObuParser;->skipUvlc(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    return-void
.end method

.method public static leb128(Ljava/nio/ByteBuffer;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_18

    .line 110
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    mul-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    return v1
.end method

.method public static skipUvlc(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 3

    const/4 v0, 0x0

    .line 244
    :goto_1
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0x20

    if-ge v0, v1, :cond_e

    .line 253
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_e
    return-void

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static split(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/ObuParser$Obu;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :goto_9
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0xf

    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_20

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    :cond_20
    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    .line 93
    invoke-static {p0}, Lio/bidmachine/media3/container/ObuParser;->leb128(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_2f

    .line 97
    :cond_2b
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    .line 99
    :goto_2f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 100
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    new-instance v4, Lio/bidmachine/media3/container/ObuParser$Obu;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lio/bidmachine/media3/container/ObuParser$Obu;-><init>(ILjava/nio/ByteBuffer;Lio/bidmachine/media3/container/ObuParser$1;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9

    :cond_4d
    return-object v0
.end method

.method public static throwWhenFeatureRequired(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 346
    :cond_3
    new-instance p0, Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;-><init>(Lio/bidmachine/media3/container/ObuParser$1;)V

    throw p0
.end method

###### Class io.bidmachine.media3.container.ObuParser.AnonymousClass1 (io.bidmachine.media3.container.ObuParser$1)
.class public synthetic Lio/bidmachine/media3/container/ObuParser$1;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.container.ObuParser.FrameHeader (io.bidmachine.media3.container.ObuParser$FrameHeader)
.class public final Lio/bidmachine/media3/container/ObuParser$FrameHeader;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameHeader"
.end annotation


# instance fields
.field public final isDependedOn:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/ObuParser$SequenceHeader;Lio/bidmachine/media3/container/ObuParser$Obu;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iget v0, p2, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_10

    if-ne v0, v3, :cond_e

    goto :goto_10

    :cond_e
    move v0, v2

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v4

    :goto_11
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 290
    iget-object v0, p2, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 292
    iget-object p2, p2, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 293
    new-instance p2, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {p2, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 294
    iget-boolean v0, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    invoke-static {v0}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    .line 295
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 297
    iput-boolean v2, p0, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    return-void

    :cond_3d
    const/4 v0, 0x2

    .line 300
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 301
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    .line 302
    iget-boolean v6, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    invoke-static {v6}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    if-nez v5, :cond_50

    .line 306
    iput-boolean v4, p0, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    return-void

    :cond_50
    if-eq v1, v3, :cond_5a

    if-nez v1, :cond_55

    goto :goto_5a

    .line 313
    :cond_55
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v5, v4

    .line 315
    :goto_5b
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 316
    iget-boolean v6, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    xor-int/2addr v6, v4

    invoke-static {v6}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    .line 317
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 319
    iget-boolean v6, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    xor-int/2addr v6, v4

    invoke-static {v6}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    .line 320
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 322
    :cond_73
    iget-boolean v6, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    invoke-static {v6}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    if-eq v1, v3, :cond_7d

    .line 324
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 326
    :cond_7d
    iget p1, p1, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    if-eq v1, v0, :cond_8b

    if-eqz v1, :cond_8b

    if-nez v5, :cond_8b

    .line 330
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_8b
    if-eq v1, v3, :cond_97

    if-nez v1, :cond_90

    goto :goto_97

    :cond_90
    const/16 p1, 0x8

    .line 336
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    goto :goto_99

    :cond_97
    :goto_97
    const/16 p1, 0xff

    :goto_99
    if-eqz p1, :cond_9c

    move v2, v4

    .line 338
    :cond_9c
    iput-boolean v2, p0, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    return-void
.end method

.method public static parse(Lio/bidmachine/media3/container/ObuParser$SequenceHeader;Lio/bidmachine/media3/container/ObuParser$Obu;)Lio/bidmachine/media3/container/ObuParser$FrameHeader;
    .registers 3

    .line 282
    :try_start_0
    new-instance v0, Lio/bidmachine/media3/container/ObuParser$FrameHeader;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/container/ObuParser$FrameHeader;-><init>(Lio/bidmachine/media3/container/ObuParser$SequenceHeader;Lio/bidmachine/media3/container/ObuParser$Obu;)V
    :try_end_5
    .catch Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public isDependedOn()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lio/bidmachine/media3/container/ObuParser$FrameHeader;->isDependedOn:Z

    return v0
.end method

###### Class io.bidmachine.media3.container.ObuParser.NotYetImplementedException (io.bidmachine.media3.container.ObuParser$NotYetImplementedException)
.class public Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;
.super Ljava/lang/Exception;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotYetImplementedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 350
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/container/ObuParser$1;)V
    .registers 2

    .line 350
    invoke-direct {p0}, Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.container.ObuParser.Obu (io.bidmachine.media3.container.ObuParser$Obu)
.class public final Lio/bidmachine/media3/container/ObuParser$Obu;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Obu"
.end annotation


# instance fields
.field public final payload:Ljava/nio/ByteBuffer;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    .line 63
    iput-object p2, p0, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/nio/ByteBuffer;Lio/bidmachine/media3/container/ObuParser$1;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/container/ObuParser$Obu;-><init>(ILjava/nio/ByteBuffer;)V

    return-void
.end method

###### Class io.bidmachine.media3.container.ObuParser.SequenceHeader (io.bidmachine.media3.container.ObuParser$SequenceHeader)
.class public final Lio/bidmachine/media3/container/ObuParser$SequenceHeader;
.super Ljava/lang/Object;
.source "ObuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequenceHeader"
.end annotation


# instance fields
.field public final decoderModelInfoPresentFlag:Z

.field public final frameIdNumbersPresentFlag:Z

.field public final orderHintBits:I

.field public final reducedStillPictureHeader:Z

.field public final seqForceIntegerMv:Z

.field public final seqForceScreenContentTools:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/ObuParser$Obu;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iget v0, p1, Lio/bidmachine/media3/container/ObuParser$Obu;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 157
    iget-object v0, p1, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 159
    iget-object p1, p1, Lio/bidmachine/media3/container/ObuParser$Obu;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 160
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 v0, 0x4

    .line 161
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 162
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->reducedStillPictureHeader:Z

    .line 163
    invoke-static {v3}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    .line 164
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 166
    invoke-static {p1}, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->skipTimingInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    .line 167
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    if-eqz v3, :cond_4b

    const/16 v3, 0x2f

    .line 170
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4b

    .line 173
    :cond_49
    iput-boolean v1, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    .line 175
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x5

    .line 176
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    move v6, v1

    :goto_55
    if-gt v6, v5, :cond_79

    const/16 v7, 0xc

    .line 178
    invoke-virtual {p1, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 179
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v8, 0x7

    if-le v7, v8, :cond_66

    .line 181
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBit()V

    .line 183
    :cond_66
    iget-boolean v7, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->decoderModelInfoPresentFlag:Z

    invoke-static {v7}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    if-eqz v3, :cond_76

    .line 185
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 187
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 191
    :cond_79
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 192
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v3, v2

    .line 193
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    add-int/2addr v4, v2

    .line 194
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 195
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->frameIdNumbersPresentFlag:Z

    .line 196
    invoke-static {v3}, Lio/bidmachine/media3/container/ObuParser;->access$100(Z)V

    const/4 v3, 0x3

    .line 198
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 201
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 202
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_a3

    const/4 v4, 0x2

    .line 204
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 206
    :cond_a3
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 208
    iput-boolean v2, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    goto :goto_b2

    .line 210
    :cond_ac
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    .line 212
    :goto_b2
    iget-boolean v4, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceScreenContentTools:Z

    if-eqz v4, :cond_c6

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 215
    iput-boolean v2, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    goto :goto_c8

    .line 217
    :cond_bf
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    goto :goto_c8

    .line 220
    :cond_c6
    iput-boolean v2, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->seqForceIntegerMv:Z

    :goto_c8
    if-eqz v0, :cond_d2

    .line 223
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/2addr p1, v2

    .line 224
    iput p1, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    return-void

    .line 226
    :cond_d2
    iput v1, p0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;->orderHintBits:I

    return-void
.end method

.method public static parse(Lio/bidmachine/media3/container/ObuParser$Obu;)Lio/bidmachine/media3/container/ObuParser$SequenceHeader;
    .registers 2

    .line 148
    :try_start_0
    new-instance v0, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/container/ObuParser$SequenceHeader;-><init>(Lio/bidmachine/media3/container/ObuParser$Obu;)V
    :try_end_5
    .catch Lio/bidmachine/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static skipTimingInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 2

    const/16 v0, 0x40

    .line 232
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 235
    invoke-static {p0}, Lio/bidmachine/media3/container/ObuParser;->access$200(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    :cond_e
    return-void
.end method
