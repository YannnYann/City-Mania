###### Class io.bidmachine.NetworkAdUnit (io.bidmachine.NetworkAdUnit)
.class public Lio/bidmachine/NetworkAdUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adFormat:Lio/bidmachine/AdFormat;

.field private final id:Ljava/lang/String;

.field private final mediationConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final networkAdapter:Lio/bidmachine/NetworkAdapter;


# direct methods
.method public constructor <init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdFormat;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/AdFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnit;->id:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    .line 4
    iput-object p2, p0, Lio/bidmachine/NetworkAdUnit;->adFormat:Lio/bidmachine/AdFormat;

    .line 5
    iput-object p3, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 6
    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->toAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdFormat;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public clearAuction()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->clearAuction(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public getAdFormat()Lio/bidmachine/AdsFormat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->adFormat:Lio/bidmachine/AdFormat;

    invoke-static {v0}, Lio/bidmachine/AdsFormat;->fromAdFormat(Lio/bidmachine/AdFormat;)Lio/bidmachine/AdsFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lio/bidmachine/AdFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->adFormat:Lio/bidmachine/AdFormat;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationConfig()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    return-object v0
.end method

.method public getMediationParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->mediationConfig:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNetworkAdapter()Lio/bidmachine/NetworkAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnit;->networkAdapter:Lio/bidmachine/NetworkAdapter;

    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLossAuction()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->onLossAuction(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public onWinAuction()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkAdUnit;->getNetworkAdapter()Lio/bidmachine/NetworkAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/NetworkAdapter;->onWinAuction(Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method
