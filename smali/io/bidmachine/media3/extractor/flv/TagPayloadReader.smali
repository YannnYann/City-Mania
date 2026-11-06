###### Class io.bidmachine.media3.extractor.flv.TagPayloadReader (io.bidmachine.media3.extractor.flv.TagPayloadReader)
.class public abstract Lio/bidmachine/media3/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field public final output:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->parsePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public abstract parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract parsePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.extractor.flv.TagPayloadReader.UnsupportedFormatException (io.bidmachine.media3.extractor.flv.TagPayloadReader$UnsupportedFormatException)
.class public final Lio/bidmachine/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
.super Lio/bidmachine/media3/common/ParserException;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/flv/TagPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedFormatException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1, v2, v0, v1}, Lio/bidmachine/media3/common/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-void
.end method
