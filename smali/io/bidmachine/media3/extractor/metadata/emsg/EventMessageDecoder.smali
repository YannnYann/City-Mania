###### Class io.bidmachine.media3.extractor.metadata.emsg.EventMessageDecoder (io.bidmachine.media3.extractor.metadata.emsg.EventMessageDecoder)
.class public final Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;
.super Lio/bidmachine/media3/extractor/metadata/SimpleMetadataDecoder;
.source "EventMessageDecoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lio/bidmachine/media3/common/Metadata;
    .registers 5

    .line 34
    new-instance p1, Lio/bidmachine/media3/common/Metadata;

    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;->decode(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-object p1
.end method

.method public decode(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;
    .registers 11

    .line 38
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    .line 41
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 44
    new-instance v1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object v1
.end method
