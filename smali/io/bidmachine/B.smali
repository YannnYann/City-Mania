###### Class io.bidmachine.B (io.bidmachine.B)
.class public abstract Lio/bidmachine/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/B$a;
    }
.end annotation


# direct methods
.method public static a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/B$a;)V
    .registers 13

    if-eqz p2, :cond_98

    .line 1
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidCount()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_98

    :cond_a
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 6
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidCount()I

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_8e

    .line 10
    :cond_19
    invoke-virtual {v5, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v6

    if-nez v6, :cond_29

    .line 12
    const-string p0, "Bid"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 15
    :cond_29
    invoke-virtual {v6}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    if-nez v0, :cond_39

    .line 17
    const-string p0, "Media"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 20
    :cond_39
    const-class v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 21
    const-string p0, "Media not valid"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 25
    :cond_4b
    :try_start_4b
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v7, :cond_61

    .line 27
    const-string p0, "Ad"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto :goto_81

    .line 30
    :cond_61
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v7}, Lio/bidmachine/AdsType;->findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;

    move-result-object v8

    if-nez v8, :cond_75

    .line 33
    const-string p0, "NetworkAdapter"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 37
    :cond_75
    new-instance v1, Lio/bidmachine/AdResponse;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/AdResponse;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;)V

    .line 44
    invoke-interface {p3, v1}, Lio/bidmachine/B$a;->onSuccess(Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_5e

    return-void

    .line 46
    :goto_81
    invoke-static {p0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 47
    const-string p1, "Failed to process response"

    invoke-static {p1, p0}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 48
    :cond_8e
    :goto_8e
    const-string p0, "Seatbid"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 49
    :cond_98
    :goto_98
    const-string p0, "Response"

    invoke-static {p0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p0

    invoke-interface {p3, p0}, Lio/bidmachine/B$a;->a(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.B.a (io.bidmachine.B$a)
.class public interface abstract Lio/bidmachine/B$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/utils/BMError;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
.end method
