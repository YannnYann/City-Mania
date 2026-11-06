###### Class io.bidmachine.media3.extractor.text.SimpleSubtitleDecoder (io.bidmachine.media3.extractor.text.SimpleSubtitleDecoder)
.class public abstract Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;
.super Lio/bidmachine/media3/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/decoder/SimpleDecoder<",
        "Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;",
        "Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;",
        "Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;",
        ">;",
        "Lio/bidmachine/media3/extractor/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    .line 37
    new-array v1, v0, [Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    new-array v0, v0, [Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-direct {p0, v1, v0}, Lio/bidmachine/media3/decoder/SimpleDecoder;-><init>([Lio/bidmachine/media3/decoder/DecoderInputBuffer;[Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    .line 38
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    const/16 p1, 0x400

    .line 39
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/decoder/SimpleDecoder;->setInitialInputBufferSize(I)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/decoder/SimpleDecoder;->releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInputBuffer()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->createInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final createInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
    .registers 2

    .line 54
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createOutputBuffer()Lio/bidmachine/media3/decoder/DecoderOutputBuffer;
    .registers 2

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->createOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final createOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    .registers 2

    .line 59
    new-instance v0, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder$1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder$1;-><init>(Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method public bridge synthetic createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;
    .registers 2

    .line 25
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public final createUnexpectedDecodeException(Ljava/lang/Throwable;)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
    .registers 4

    .line 69
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;Z)Lio/bidmachine/media3/decoder/DecoderException;
    .registers 4

    .line 25
    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    check-cast p2, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;Z)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public abstract decode([BIZ)Lio/bidmachine/media3/extractor/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method public final decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;Z)Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
    .registers 12

    .line 78
    :try_start_0
    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->decode([BIZ)Lio/bidmachine/media3/extractor/text/Subtitle;

    move-result-object v5

    .line 80
    iget-wide v3, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v6, p1, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLio/bidmachine/media3/extractor/text/Subtitle;J)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, v2, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->shouldBeSkipped:Z
    :try_end_1f
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_1f} :catch_21

    const/4 p1, 0x0

    return-object p1

    :catch_21
    move-exception v0

    move-object p1, v0

    return-object p1
.end method

.method public setPositionUs(J)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.SimpleSubtitleDecoder.AnonymousClass1 (io.bidmachine.media3.extractor.text.SimpleSubtitleDecoder$1)
.class public Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder$1;
.super Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
.source "SimpleSubtitleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->createOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;

    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 62
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;

    invoke-static {v0, p0}, Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;->access$000(Lio/bidmachine/media3/extractor/text/SimpleSubtitleDecoder;Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
