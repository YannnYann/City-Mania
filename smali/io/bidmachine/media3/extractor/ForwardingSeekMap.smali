###### Class io.bidmachine.media3.extractor.ForwardingSeekMap (io.bidmachine.media3.extractor.ForwardingSeekMap)
.class public Lio/bidmachine/media3/extractor/ForwardingSeekMap;
.super Ljava/lang/Object;
.source "ForwardingSeekMap.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# instance fields
.field public final seekMap:Lio/bidmachine/media3/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ForwardingSeekMap;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 41
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ForwardingSeekMap;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 4

    .line 46
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ForwardingSeekMap;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/SeekMap;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    return-object p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 36
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ForwardingSeekMap;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method
