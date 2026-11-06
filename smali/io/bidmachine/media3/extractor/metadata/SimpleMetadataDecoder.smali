###### Class io.bidmachine.media3.extractor.metadata.SimpleMetadataDecoder (io.bidmachine.media3.extractor.metadata.SimpleMetadataDecoder)
.class public abstract Lio/bidmachine/media3/extractor/metadata/SimpleMetadataDecoder;
.super Ljava/lang/Object;
.source "SimpleMetadataDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;)Lio/bidmachine/media3/common/Metadata;
    .registers 4

    .line 31
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 32
    :goto_1d
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 34
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/metadata/SimpleMetadataDecoder;->decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lio/bidmachine/media3/common/Metadata;
.end method
