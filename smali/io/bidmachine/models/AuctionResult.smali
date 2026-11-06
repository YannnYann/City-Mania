###### Class io.bidmachine.models.AuctionResult (io.bidmachine.models.AuctionResult)
.class public interface abstract Lio/bidmachine/models/AuctionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCreativeFormat()Lio/bidmachine/CreativeFormat;
.end method

.method public abstract getCreativeId()Ljava/lang/String;
.end method

.method public abstract getCustomParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeal()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getNetworkKey()Ljava/lang/String;
.end method

.method public abstract getNetworkParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrice()D
.end method
