###### Class io.bidmachine.NetworkConfigParams (io.bidmachine.NetworkConfigParams)
.class public interface abstract Lio/bidmachine/NetworkConfigParams;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public varargs abstract obtainNetworkMediationConfigs([Lio/bidmachine/AdsFormat;)Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/AdsFormat;",
            ")",
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation
.end method

.method public varargs abstract obtainNetworkMediationConfigs([Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract obtainNetworkParams()Ljava/util/Map;
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

.method public abstract removeFromNetworkParams(Ljava/lang/String;)Ljava/lang/String;
.end method
