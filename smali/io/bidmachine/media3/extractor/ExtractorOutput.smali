###### Class io.bidmachine.media3.extractor.ExtractorOutput (io.bidmachine.media3.extractor.ExtractorOutput)
.class public interface abstract Lio/bidmachine/media3/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"


# static fields
.field public static final PLACEHOLDER:Lio/bidmachine/media3/extractor/ExtractorOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lio/bidmachine/media3/extractor/ExtractorOutput$1;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ExtractorOutput$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ExtractorOutput;->PLACEHOLDER:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public abstract endTracks()V
.end method

.method public abstract seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
.end method

.method public abstract track(II)Lio/bidmachine/media3/extractor/TrackOutput;
.end method

###### Class io.bidmachine.media3.extractor.ExtractorOutput.AnonymousClass1 (io.bidmachine.media3.extractor.ExtractorOutput$1)
.class public Lio/bidmachine/media3/extractor/ExtractorOutput$1;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ExtractorOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 3

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
