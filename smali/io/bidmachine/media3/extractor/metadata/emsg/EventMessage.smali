###### Class io.bidmachine.media3.extractor.metadata.emsg.EventMessage (io.bidmachine.media3.extractor.metadata.emsg.EventMessage)
.class public final Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;
.super Ljava/lang/Object;
.source "EventMessage.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# static fields
.field public static final ID3_FORMAT:Lio/bidmachine/media3/common/Format;

.field public static final SCTE35_FORMAT:Lio/bidmachine/media3/common/Format;


# instance fields
.field public final durationMs:J

.field public hashCode:I

.field public final id:J

.field public final messageData:[B

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    .line 51
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->ID3_FORMAT:Lio/bidmachine/media3/common/Format;

    .line 52
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-scte35"

    .line 53
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->SCTE35_FORMAT:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V
    .registers 8

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 84
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    .line 85
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->id:J

    .line 86
    iput-object p7, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    if-eq v3, v2, :cond_10

    goto :goto_41

    .line 131
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    .line 132
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->id:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_41

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 135
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    .line 136
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_41

    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public getWrappedMetadataBytes()[B
    .registers 2

    .line 106
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;
    .registers 4

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3a

    goto :goto_2e

    :sswitch_e
    const-string v2, "https://developer.apple.com/streaming/emsg-id3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v1, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v2, "https://aomedia.org/emsg/ID3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2e

    :cond_22
    const/4 v1, 0x1

    goto :goto_2e

    :sswitch_24
    const-string v2, "urn:scte:scte35:2014:bin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    packed-switch v1, :pswitch_data_48

    const/4 v0, 0x0

    return-object v0

    .line 95
    :pswitch_33
    sget-object v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->ID3_FORMAT:Lio/bidmachine/media3/common/Format;

    return-object v0

    .line 97
    :pswitch_36
    sget-object v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->SCTE35_FORMAT:Lio/bidmachine/media3/common/Format;

    return-object v0

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x578730ab -> :sswitch_24
        -0x2f712a89 -> :sswitch_19
        0x4db418c9 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_36
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public hashCode()I
    .registers 7

    .line 111
    iget v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    if-nez v0, :cond_3c

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 114
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1c
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 115
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 116
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->id:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 117
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v2, v0

    .line 118
    iput v2, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    .line 120
    :cond_3c
    iget v0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMSG: scheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
