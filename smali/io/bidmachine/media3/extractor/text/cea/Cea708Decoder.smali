###### Class io.bidmachine.media3.extractor.text.cea.Cea708Decoder (io.bidmachine.media3.extractor.text.cea.Cea708Decoder)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;
.super Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;,
        Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;,
        Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    }
.end annotation


# instance fields
.field public final captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field public currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

.field public currentWindow:I

.field public final isWideAspectRatio:Z

.field public lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public previousSequenceNumber:I

.field public final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;-><init>()V

    .line 174
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 175
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_18

    move p1, v1

    .line 177
    :cond_18
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_24

    .line 180
    invoke-static {p2}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move v1, p1

    :goto_25
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    const/16 p2, 0x8

    .line 182
    new-array v0, p2, [Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    move v0, p1

    :goto_2e
    if-ge v0, p2, :cond_3c

    .line 184
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 187
    :cond_3c
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2f

    .line 817
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 818
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->build()Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 820
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 824
    :cond_2f
    invoke-static {}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 825
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 826
    :goto_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_53

    .line 827
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lio/bidmachine/media3/common/text/Cue;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 829
    :cond_53
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private resetCueBuilders()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_f

    .line 834
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method


# virtual methods
.method public createSubtitle()Lio/bidmachine/media3/extractor/text/Subtitle;
    .registers 3

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 214
    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
    .registers 10

    .line 220
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 223
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 224
    :cond_15
    :goto_15
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_c5

    .line 225
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_2e

    move p1, v4

    goto :goto_2f

    :cond_2e
    move p1, v3

    .line 229
    :goto_2f
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 230
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->ccData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_43

    if-eq v1, v0, :cond_43

    goto :goto_15

    :cond_43
    if-nez p1, :cond_46

    goto :goto_15

    .line 242
    :cond_46
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_96

    .line 243
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 246
    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7c

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_7c

    .line 248
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence number discontinuity. previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_7c
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_84

    const/16 p1, 0x40

    .line 263
    :cond_84
    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 264
    iget-object p1, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v0, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v0

    goto :goto_b6

    :cond_96
    if-ne v1, v7, :cond_99

    move v3, v4

    .line 267
    :cond_99
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_a7

    .line 270
    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 274
    :cond_a7
    iget-object p1, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v1, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    add-int/2addr v1, v7

    .line 275
    iput v1, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v2

    .line 278
    :goto_b6
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, p1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget p1, p1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr p1, v7

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_15

    .line 279
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_15

    :cond_c5
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final finalizeCurrentPacket()V
    .registers 2

    .line 285
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_5

    return-void

    .line 290
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->processCurrentPacket()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public flush()V
    .registers 4

    .line 197
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 199
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    .line 200
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 201
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 202
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 203
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public final handleC0Command(I)V
    .registers 6

    if-eqz p1, :cond_81

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_75

    packed-switch p1, :pswitch_data_82

    const/16 v1, 0x11

    .line 418
    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_30

    const/16 v1, 0x17

    if-gt p1, v1, :cond_30

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_30
    const/16 v0, 0x18

    if-lt p1, v0, :cond_54

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_54

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 425
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 412
    :pswitch_69
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 409
    :pswitch_71
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    return-void

    .line 406
    :cond_75
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    return-void

    .line 403
    :cond_7b
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_81
    :pswitch_81
    return-void

    :pswitch_data_82
    .packed-switch 0xc
        :pswitch_71
        :pswitch_69
        :pswitch_81
    .end packed-switch
.end method

.method public final handleC1Command(I)V
    .registers 6

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_10c

    .line 542
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1f
    add-int/lit16 p1, p1, -0x98

    .line 534
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 536
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_10b

    .line 537
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 538
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void

    .line 518
    :pswitch_31
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_41

    .line 520
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 522
    :cond_41
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    return-void

    .line 510
    :pswitch_45
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_53

    .line 512
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 514
    :cond_53
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleSetPenLocation()V

    return-void

    .line 502
    :pswitch_57
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_67

    .line 504
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 506
    :cond_67
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleSetPenColor()V

    return-void

    .line 494
    :pswitch_6b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_79

    .line 496
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 498
    :cond_79
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    return-void

    .line 491
    :pswitch_7d
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    return-void

    .line 485
    :pswitch_81
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :goto_87
    :pswitch_87
    if-gt v2, v1, :cond_10b

    .line 478
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 479
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :pswitch_9d
    move p1, v2

    :goto_9e
    if-gt p1, v1, :cond_10b

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 471
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 472
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_b6
    add-int/lit8 p1, p1, 0x1

    goto :goto_9e

    :goto_b9
    :pswitch_b9
    if-gt v2, v1, :cond_10b

    .line 463
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 464
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    :pswitch_d0
    move p1, v2

    :goto_d1
    if-gt p1, v1, :cond_10b

    .line 456
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 457
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_d1

    :goto_e7
    :pswitch_e7
    if-gt v2, v1, :cond_10b

    .line 449
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 450
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    :pswitch_fd
    add-int/lit8 p1, p1, -0x80

    .line 442
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_10b

    .line 443
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    .line 444
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    :cond_10b
    :pswitch_10b
    return-void

    :pswitch_data_10c
    .packed-switch 0x80
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_e7
        :pswitch_d0
        :pswitch_b9
        :pswitch_9d
        :pswitch_87
        :pswitch_81
        :pswitch_10b
        :pswitch_7d
        :pswitch_6b
        :pswitch_57
        :pswitch_45
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_31
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public final handleC2Command(I)V
    .registers 3

    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    goto :goto_27

    :cond_4
    const/16 v0, 0xf

    if-gt p1, v0, :cond_10

    .line 551
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_10
    const/16 v0, 0x17

    if-gt p1, v0, :cond_1c

    .line 553
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_1c
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_27

    .line 555
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final handleC3Command(I)V
    .registers 3

    const/16 v0, 0x87

    if-gt p1, v0, :cond_c

    .line 562
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_c
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_18

    .line 564
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_18
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_30

    .line 569
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 570
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 571
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_30
    return-void
.end method

.method public final handleDefineWindow(I)V
    .registers 13

    .line 775
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v0, p1

    .line 779
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 780
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 783
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 784
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 786
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 787
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 789
    iget-object v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 791
    iget-object v7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 792
    iget-object v9, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v8}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 794
    iget-object v9, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 796
    iget-object v9, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 798
    iget-object v9, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v9, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 799
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 800
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    move v3, v8

    move v8, v7

    move v7, v3

    move v3, p1

    .line 802
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZIZIIIIII)V

    return-void
.end method

.method public final handleG0Character(I)V
    .registers 3

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_c

    .line 577
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 579
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method public final handleG1Character(I)V
    .registers 3

    .line 584
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method public final handleG2Character(I)V
    .registers 4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_10d

    const/16 v0, 0x21

    if-eq p1, v0, :cond_105

    const/16 v0, 0x25

    if-eq p1, v0, :cond_fd

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_f5

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_ed

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_e5

    const/16 v0, 0x39

    if-eq p1, v0, :cond_dd

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_d5

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_cd

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_c5

    packed-switch p1, :pswitch_data_114

    packed-switch p1, :pswitch_data_124

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 665
    :pswitch_45
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 662
    :pswitch_4d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 659
    :pswitch_55
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 656
    :pswitch_5d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 653
    :pswitch_65
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 650
    :pswitch_6d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 647
    :pswitch_75
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 644
    :pswitch_7d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 641
    :pswitch_85
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 638
    :pswitch_8d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 620
    :pswitch_95
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 617
    :pswitch_9d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 614
    :pswitch_a5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 611
    :pswitch_ad
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 608
    :pswitch_b5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 605
    :pswitch_bd
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 632
    :cond_c5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 629
    :cond_cd
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 626
    :cond_d5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 623
    :cond_dd
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 635
    :cond_e5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 602
    :cond_ed
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 599
    :cond_f5
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 596
    :cond_fd
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 593
    :cond_105
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 590
    :cond_10d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x30
        :pswitch_bd
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_9d
        :pswitch_95
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x76
        :pswitch_8d
        :pswitch_85
        :pswitch_7d
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
    .end packed-switch
.end method

.method public final handleG3Character(I)V
    .registers 4

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_c

    .line 676
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void

    .line 678
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method public final handleSetPenAttributes()V
    .registers 11

    .line 687
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 688
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 689
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 691
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 692
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 693
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 694
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 696
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v2 .. v9}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    return-void
.end method

.method public final handleSetPenColor()V
    .registers 7

    .line 703
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 704
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 705
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 706
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 708
    invoke-static {v2, v3, v4, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    .line 710
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 711
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 712
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 713
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 715
    invoke-static {v3, v4, v5, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 717
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 718
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 719
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 720
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 721
    invoke-static {v3, v4, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    .line 723
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v0, v2, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    return-void
.end method

.method public final handleSetPenLocation()V
    .registers 4

    .line 729
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 730
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 732
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 733
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 735
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    return-void
.end method

.method public final handleSetWindowAttributes()V
    .registers 14

    .line 741
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 742
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 743
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 744
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 745
    invoke-static {v2, v3, v4, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    .line 747
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 748
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 749
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 750
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 751
    invoke-static {v2, v3, v4}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    .line 753
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_43

    or-int/lit8 v0, v0, 0x4

    :cond_43
    move v9, v0

    .line 756
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 757
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 758
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 759
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 762
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 764
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v5 .. v12}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    return-void
.end method

.method public isNewSubtitleDataAvailable()Z
    .registers 3

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final processCurrentPacket()V
    .registers 13

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget v0, v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const-string v4, "Cea708Decoder"

    if-eq v1, v0, :cond_45

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/bidmachine/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_45
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget v1, v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset([BI)V

    const/4 v0, 0x0

    .line 325
    :cond_51
    :goto_51
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_13b

    .line 327
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 328
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_8c

    .line 331
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 332
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ge v1, v6, :cond_8c

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended service number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    if-nez v5, :cond_ab

    if-eqz v1, :cond_13b

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 346
    :cond_ab
    iget v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v6, :cond_b5

    .line 347
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_51

    .line 353
    :cond_b5
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 354
    :goto_be
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v5

    if-ge v5, v1, :cond_51

    .line 355
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v7, 0x10

    const/16 v8, 0xff

    const/16 v9, 0x9f

    const/16 v10, 0x7f

    const/16 v11, 0x1f

    if-eq v5, v7, :cond_108

    if-gt v5, v11, :cond_e0

    .line 358
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_be

    :cond_e0
    if-gt v5, v10, :cond_e7

    .line 361
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleG0Character(I)V

    :goto_e5
    move v0, v3

    goto :goto_be

    :cond_e7
    if-gt v5, v9, :cond_ed

    .line 364
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleC1Command(I)V

    goto :goto_e5

    :cond_ed
    if-gt v5, v8, :cond_f3

    .line 367
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleG1Character(I)V

    goto :goto_e5

    .line 370
    :cond_f3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid base command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 374
    :cond_108
    iget-object v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-gt v5, v11, :cond_114

    .line 376
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_be

    :cond_114
    if-gt v5, v10, :cond_11a

    .line 378
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleG2Character(I)V

    goto :goto_e5

    :cond_11a
    if-gt v5, v9, :cond_120

    .line 381
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_be

    :cond_120
    if-gt v5, v8, :cond_126

    .line 383
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->handleG3Character(I)V

    goto :goto_e5

    .line 386
    :cond_126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_13b
    :goto_13b
    if-eqz v0, :cond_143

    .line 393
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_143
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .registers 1

    .line 50
    invoke-super {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .registers 3

    .line 50
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea708Decoder.Cea708CueInfo (io.bidmachine.media3.extractor.text.cea.Cea708Decoder$Cea708CueInfo)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cea708CueInfo"
.end annotation


# static fields
.field public static final LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cue:Lio/bidmachine/media3/common/text/Cue;

.field public final priority:I


# direct methods
.method public static synthetic $r8$lambda$TRmgJxt7STwwUoiR2ozEvVdpRi0(Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;)I
    .registers 2

    .line 1410
    iget p1, p1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    iget p0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1409
    new-instance v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .registers 13

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-instance v0, Lio/bidmachine/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/text/Cue$Builder;-><init>()V

    .line 1450
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1451
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1452
    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1453
    invoke-virtual {p1, p5}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLineAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1454
    invoke-virtual {p1, p6}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPosition(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1455
    invoke-virtual {p1, p7}, Lio/bidmachine/media3/common/text/Cue$Builder;->setPositionAnchor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    .line 1456
    invoke-virtual {p1, p8}, Lio/bidmachine/media3/common/text/Cue$Builder;->setSize(F)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    if-eqz p9, :cond_29

    .line 1458
    invoke-virtual {p1, p10}, Lio/bidmachine/media3/common/text/Cue$Builder;->setWindowColor(I)Lio/bidmachine/media3/common/text/Cue$Builder;

    .line 1460
    :cond_29
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lio/bidmachine/media3/common/text/Cue;

    .line 1461
    iput p11, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Comparator;
    .registers 1

    .line 1403
    sget-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.cea.Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->$r8$lambda$TRmgJxt7STwwUoiR2ozEvVdpRi0(Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea708Decoder.CueInfoBuilder (io.bidmachine.media3.extractor.text.cea.Cea708Decoder$CueInfoBuilder)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueInfoBuilder"
.end annotation


# static fields
.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field public static final PEN_STYLE_BACKGROUND:[I

.field public static final PEN_STYLE_EDGE_TYPE:[I

.field public static final PEN_STYLE_FONT_STYLE:[I

.field public static final WINDOW_STYLE_FILL:[I

.field public static final WINDOW_STYLE_JUSTIFICATION:[I

.field public static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field public static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field public static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field public anchorId:I

.field public backgroundColor:I

.field public backgroundColorStartPosition:I

.field public final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field public defined:Z

.field public foregroundColor:I

.field public foregroundColorStartPosition:I

.field public horizontalAnchor:I

.field public italicsStartPosition:I

.field public justification:I

.field public penStyleId:I

.field public priority:I

.field public relativePositioning:Z

.field public final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field public row:I

.field public rowCount:I

.field public underlineStartPosition:I

.field public verticalAnchor:I

.field public visible:Z

.field public windowFillColor:I

.field public windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 880
    invoke-static {v0, v0, v0, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    sput v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    .line 881
    invoke-static {v1, v1, v1, v1}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    const/4 v0, 0x3

    .line 882
    invoke-static {v1, v1, v1, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v3

    sput v3, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    const/4 v0, 0x7

    .line 898
    new-array v1, v0, [I

    fill-array-data v1, :array_56

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    .line 904
    new-array v1, v0, [I

    fill-array-data v1, :array_68

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    .line 910
    new-array v1, v0, [I

    fill-array-data v1, :array_7a

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    .line 916
    new-array v1, v0, [Z

    fill-array-data v1, :array_8c

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    move v4, v2

    move v5, v2

    move v6, v3

    move v7, v2

    move v8, v2

    .line 918
    filled-new-array/range {v2 .. v8}, [I

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    .line 930
    new-array v1, v0, [I

    fill-array-data v1, :array_94

    sput-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    .line 940
    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    move v7, v3

    move v3, v2

    move v6, v2

    move v8, v7

    .line 946
    filled-new-array/range {v2 .. v8}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    :array_56
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_7a
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_8c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 985
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 986
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .registers 4

    const/4 v0, 0x0

    .line 1369
    invoke-static {p0, p1, p2, v0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result p0

    return p0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1373
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 1374
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 1375
    invoke-static {p2, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 1376
    invoke-static {p3, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_1b

    if-eq p3, v1, :cond_1b

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1f

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1d

    :cond_1b
    move p3, v2

    goto :goto_21

    :cond_1d
    move p3, v0

    goto :goto_21

    :cond_1f
    const/16 p3, 0x7f

    :goto_21
    if-le p0, v1, :cond_25

    move p0, v2

    goto :goto_26

    :cond_25
    move p0, v0

    :goto_26
    if-le p1, v1, :cond_2a

    move p1, v2

    goto :goto_2b

    :cond_2a
    move p1, v0

    :goto_2b
    if-le p2, v1, :cond_2e

    move v0, v2

    .line 1398
    :cond_2e
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(C)V
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_50

    .line 1209
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1212
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    .line 1213
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1215
    :cond_1a
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq p1, v0, :cond_20

    .line 1216
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1218
    :cond_20
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq p1, v0, :cond_26

    .line 1219
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1221
    :cond_26
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq p1, v0, :cond_2c

    .line 1222
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1225
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge p1, v0, :cond_4a

    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_41

    goto :goto_4a

    .line 1230
    :cond_41
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    return-void

    .line 1227
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    .line 1232
    :cond_50
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public backspace()V
    .registers 4

    .line 1201
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1203
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_f
    return-void
.end method

.method public build()Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    .registers 14

    .line 1280
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1285
    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1288
    :goto_f
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 1289
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1290
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1293
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1298
    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5e

    if-eq v1, v5, :cond_5b

    if-eq v1, v3, :cond_58

    if-ne v1, v4, :cond_3f

    goto :goto_5e

    .line 1311
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_58
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_60

    .line 1305
    :cond_5b
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_60

    .line 1302
    :cond_5e
    :goto_5e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 1316
    :goto_60
    iget-boolean v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v6, :cond_6f

    .line 1317
    iget v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v6, v6

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v6, v7

    .line 1318
    iget v8, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_7c

    .line 1320
    :cond_6f
    iget v6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v6, v6

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v6, v7

    .line 1321
    iget v7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_7c
    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float/2addr v6, v9

    mul-float/2addr v8, v7

    add-float/2addr v8, v9

    .line 1335
    iget v7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v9, v7, 0x3

    if-nez v9, :cond_90

    move v9, v7

    move v7, v6

    move v6, v0

    goto :goto_9b

    .line 1337
    :cond_90
    div-int/lit8 v9, v7, 0x3

    if-ne v9, v5, :cond_98

    move v9, v7

    move v7, v6

    move v6, v5

    goto :goto_9b

    :cond_98
    move v9, v7

    move v7, v6

    move v6, v3

    .line 1344
    :goto_9b
    rem-int/lit8 v10, v9, 0x3

    if-nez v10, :cond_a1

    move v3, v0

    goto :goto_a6

    .line 1346
    :cond_a1
    rem-int/lit8 v4, v9, 0x3

    if-ne v4, v5, :cond_a6

    move v3, v5

    .line 1352
    :cond_a6
    :goto_a6
    iget v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v9, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v4, v9, :cond_b1

    move v10, v5

    :goto_ad
    move v4, v8

    move v8, v3

    move-object v3, v1

    goto :goto_b3

    :cond_b1
    move v10, v0

    goto :goto_ad

    .line 1354
    :goto_b3
    new-instance v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget v11, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iget v12, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    const/4 v5, 0x0

    const v9, -0x800001

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v1
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .registers 7

    .line 1237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 1242
    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    .line 1243
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1250
    :cond_1f
    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_2d

    .line 1251
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1258
    :cond_2d
    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_3d

    .line 1259
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1266
    :cond_3d
    iget v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_4d

    .line 1267
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1275
    :cond_4d
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 1014
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 1016
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1017
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1018
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1019
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    const/4 v0, 0x0

    .line 1020
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    return-void
.end method

.method public defineWindow(ZIZIIIIII)V
    .registers 19

    move/from16 v0, p8

    move/from16 v1, p9

    const/4 v2, 0x1

    .line 1045
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 1046
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    .line 1047
    iput p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 1048
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1049
    iput p4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1050
    iput p5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    move/from16 v3, p7

    .line 1051
    iput v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1054
    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/lit8 v4, p6, 0x1

    if-eq v3, v4, :cond_38

    .line 1055
    iput v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1058
    :goto_1d
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v3, v4, :cond_31

    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1059
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xf

    if-lt v3, v4, :cond_38

    .line 1060
    :cond_31
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    :cond_38
    if-eqz v0, :cond_65

    .line 1064
    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v3, v0, :cond_65

    .line 1065
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    sub-int/2addr v0, v2

    .line 1069
    sget-object v3, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v3, v3, v0

    sget v4, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget-object v5, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v5, v5, v0

    sget-object v6, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v6, v6, v0

    sget-object v7, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v7, v7, v0

    sget-object v8, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v0, v8, v0

    const/4 v8, 0x0

    move-object p1, p0

    move/from16 p8, v0

    move p2, v3

    move p3, v4

    move p4, v5

    move p6, v6

    move/from16 p7, v7

    move p5, v8

    invoke-virtual/range {p1 .. p8}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    :cond_65
    if-eqz v1, :cond_94

    .line 1079
    iget v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v0, v1, :cond_94

    .line 1080
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    add-int/lit8 v0, v1, -0x1

    .line 1085
    sget-object v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v1, v1, v0

    sget-object v2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p1, p0

    move/from16 p7, v1

    move/from16 p8, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    invoke-virtual/range {p1 .. p8}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 1093
    sget v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v0, v2, v0

    sget v2, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {p0, v1, v0, v2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    :cond_94
    return-void
.end method

.method public isDefined()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 990
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1032
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .registers 3

    .line 994
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    const/4 v0, 0x0

    .line 996
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 997
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    const/4 v1, 0x4

    .line 998
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 999
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1000
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1001
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1002
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    const/16 v1, 0xf

    .line 1003
    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1004
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1005
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1006
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1007
    sget v0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1009
    sget v1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    iput v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1010
    iput v0, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .registers 8

    .line 1125
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1f

    if-nez p4, :cond_29

    .line 1127
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iget-object p7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1130
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 1127
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1132
    iput p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    goto :goto_29

    :cond_1f
    if-eqz p4, :cond_29

    .line 1135
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1138
    :cond_29
    :goto_29
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq p1, p3, :cond_44

    if-nez p5, :cond_4e

    .line 1140
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iget-object p6, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1143
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1140
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1145
    iput p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    return-void

    :cond_44
    if-eqz p5, :cond_4e

    .line 1148
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    :cond_4e
    return-void
.end method

.method public setPenColor(III)V
    .registers 9

    .line 1156
    iget p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1f

    .line 1157
    iget p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    if-eq p3, p1, :cond_1f

    .line 1158
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1161
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1158
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1165
    :cond_1f
    sget p3, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, p3, :cond_2d

    .line 1166
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1167
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1170
    :cond_2d
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq p1, v1, :cond_49

    .line 1171
    iget p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    if-eq p1, p2, :cond_49

    .line 1172
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1175
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1172
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1179
    :cond_49
    sget p1, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, p1, :cond_57

    .line 1180
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1181
    iput p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    :cond_57
    return-void
.end method

.method public setPenLocation(II)V
    .registers 3

    .line 1194
    iget p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq p2, p1, :cond_9

    const/16 p2, 0xa

    .line 1195
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 1197
    :cond_9
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 1028
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .registers 8

    .line 1105
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1110
    iput p7, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.cea.Cea708Decoder.DtvCcPacket (io.bidmachine.media3.extractor.text.cea.Cea708Decoder$DtvCcPacket)
.class public final Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DtvCcPacket"
.end annotation


# instance fields
.field public currentIndex:I

.field public final packetData:[B

.field public final packetSize:I

.field public final sequenceNumber:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    .line 848
    iput p2, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 849
    new-array p1, p2, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    const/4 p1, 0x0

    .line 850
    iput p1, p0, Lio/bidmachine/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    return-void
.end method
