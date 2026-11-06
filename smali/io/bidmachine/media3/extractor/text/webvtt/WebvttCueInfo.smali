###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttCueInfo (io.bidmachine.media3.extractor.text.webvtt.WebvttCueInfo)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;
.super Ljava/lang/Object;
.source "WebvttCueInfo.java"


# instance fields
.field public final cue:Lio/bidmachine/media3/common/text/Cue;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/text/Cue;JJ)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->cue:Lio/bidmachine/media3/common/text/Cue;

    .line 31
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    .line 32
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->endTimeUs:J

    return-void
.end method
