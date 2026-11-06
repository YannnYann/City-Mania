###### Class io.bidmachine.g (io.bidmachine.g)
.class public final Lio/bidmachine/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/AuctionResult;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:D

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/Map;

.field public final j:Lio/bidmachine/CreativeFormat;

.field public final k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/g;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/g;->c:D

    .line 5
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainCount()I

    move-result p2

    if-lez p2, :cond_3d

    .line 9
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/g;->g:[Ljava/lang/String;

    goto :goto_40

    :cond_3d
    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lio/bidmachine/g;->g:[Ljava/lang/String;

    .line 13
    :goto_40
    invoke-virtual {p0, p6}, Lio/bidmachine/g;->a(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->k:Ljava/util/Map;

    .line 14
    invoke-virtual {p5}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/g;->h:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p4}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/g;->a(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/g;->i:Ljava/util/Map;

    .line 16
    invoke-static {p4}, Lio/bidmachine/g;->a(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/g;->j:Lio/bidmachine/CreativeFormat;

    return-void
.end method

.method public static a(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;
    .registers 2

    .line 10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_24

    .line 14
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 15
    sget-object p0, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 16
    :cond_24
    :goto_24
    sget-object p0, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 20
    :cond_27
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 21
    sget-object p0, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_e

    .line 4
    :try_start_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-object v0
.end method

.method public a(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;
    .registers 3

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    return-object v0
.end method

.method public getCreativeFormat()Lio/bidmachine/CreativeFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->j:Lio/bidmachine/CreativeFormat;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getDeal()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkParams()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/g;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getPrice()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/g;->c:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", demandSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/g;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", creativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
