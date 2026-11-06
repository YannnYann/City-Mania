###### Class io.bidmachine.media3.decoder.DecoderOutputBuffer (io.bidmachine.media3.decoder.DecoderOutputBuffer)
.class public abstract Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
.super Lio/bidmachine/media3/decoder/Buffer;
.source "DecoderOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;
    }
.end annotation


# instance fields
.field public shouldBeSkipped:Z

.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lio/bidmachine/media3/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 56
    invoke-super {p0}, Lio/bidmachine/media3/decoder/Buffer;->clear()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->timeUs:J

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->skippedOutputBufferCount:I

    .line 59
    iput-boolean v0, p0, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->shouldBeSkipped:Z

    return-void
.end method

.method public abstract release()V
.end method

###### Class io.bidmachine.media3.decoder.DecoderOutputBuffer.Owner (io.bidmachine.media3.decoder.DecoderOutputBuffer$Owner)
.class public interface abstract Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;
.super Ljava/lang/Object;
.source "DecoderOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Owner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/bidmachine/media3/decoder/DecoderOutputBuffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
