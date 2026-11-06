###### Class io.bidmachine.media3.extractor.mp3.Seeker (io.bidmachine.media3.extractor.mp3.Seeker)
.class public interface abstract Lio/bidmachine/media3/extractor/mp3/Seeker;
.super Ljava/lang/Object;
.source "Seeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mp3/Seeker$UnseekableSeeker;
    }
.end annotation


# virtual methods
.method public abstract getAverageBitrate()I
.end method

.method public abstract getDataEndPosition()J
.end method

.method public abstract getTimeUs(J)J
.end method

###### Class io.bidmachine.media3.extractor.mp3.Seeker.UnseekableSeeker (io.bidmachine.media3.extractor.mp3.Seeker$UnseekableSeeker)
.class public Lio/bidmachine/media3/extractor/mp3/Seeker$UnseekableSeeker;
.super Lio/bidmachine/media3/extractor/SeekMap$Unseekable;
.source "Seeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp3/Seeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp3/Seeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnseekableSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .registers 2

    .line 0
    const v0, -0x7fffffff

    return v0
.end method

.method public getDataEndPosition()J
    .registers 3

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .registers 3

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method
