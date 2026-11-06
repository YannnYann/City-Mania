###### Class io.bidmachine.media3.extractor.avi.StreamNameChunk (io.bidmachine.media3.extractor.avi.StreamNameChunk)
.class public final Lio/bidmachine/media3/extractor/avi/StreamNameChunk;
.super Ljava/lang/Object;
.source "StreamNameChunk.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/avi/AviChunk;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    return-void
.end method

.method public static parseFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/StreamNameChunk;
    .registers 3

    .line 24
    new-instance v0, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 0
    const v0, 0x6e727473

    return v0
.end method
