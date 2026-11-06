###### Class io.bidmachine.media3.extractor.Extractor (io.bidmachine.media3.extractor.Extractor)
.class public interface abstract Lio/bidmachine/media3/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# virtual methods
.method public getSniffFailureDetails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;
    .registers 1

    .line 0
    return-object p0
.end method

.method public abstract init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
.end method

.method public abstract read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method

.method public abstract sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
