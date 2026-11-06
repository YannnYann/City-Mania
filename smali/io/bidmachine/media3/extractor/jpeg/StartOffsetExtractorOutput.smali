###### Class io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorOutput (io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorOutput)
.class public final Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;


# instance fields
.field public final extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final startOffset:J


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    .line 42
    iput-object p3, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .registers 2

    .line 52
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 4

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v1, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1, p1}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;Lio/bidmachine/media3/extractor/SeekMap;Lio/bidmachine/media3/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 4

    .line 47
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorOutput.AnonymousClass1 (io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorOutput$1)
.class public Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Lio/bidmachine/media3/extractor/ForwardingSeekMap;
.source "StartOffsetExtractorOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;

.field public final synthetic val$seekMap:Lio/bidmachine/media3/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;Lio/bidmachine/media3/extractor/SeekMap;Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 4

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p3, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-direct {p0, p2}, Lio/bidmachine/media3/extractor/ForwardingSeekMap;-><init>(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method


# virtual methods
.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 11

    .line 61
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/SeekMap;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    .line 62
    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    new-instance v0, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v1, p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v2, v1, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, v1, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    iget-object v1, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;

    .line 63
    invoke-static {v1}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v1, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v2, p1, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;

    .line 64
    invoke-static {p1}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p2
.end method
