###### Class io.bidmachine.media3.extractor.text.SubtitleInputBuffer (io.bidmachine.media3.extractor.text.SubtitleInputBuffer)
.class public Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
.super Lio/bidmachine/media3/decoder/DecoderInputBuffer;
.source "SubtitleInputBuffer.java"


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
