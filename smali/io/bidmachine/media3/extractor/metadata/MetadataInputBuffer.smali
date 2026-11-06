###### Class io.bidmachine.media3.extractor.metadata.MetadataInputBuffer (io.bidmachine.media3.extractor.metadata.MetadataInputBuffer)
.class public final Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;
.super Lio/bidmachine/media3/decoder/DecoderInputBuffer;
.source "MetadataInputBuffer.java"


# instance fields
.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    return-void
.end method
