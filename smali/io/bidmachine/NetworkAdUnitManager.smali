###### Class io.bidmachine.NetworkAdUnitManager (io.bidmachine.NetworkAdUnitManager)
.class public Lio/bidmachine/NetworkAdUnitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final networkAdUnitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Lio/bidmachine/utils/Tag;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/bidmachine/NetworkAdUnitManager;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/utils/Tag;

    const-string v1, "NetworkAdUnitManager"

    invoke-direct {v0, v1}, Lio/bidmachine/utils/Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lio/bidmachine/utils/Tag;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/NetworkAdUnitManager;->setNetworkAdUnitList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public findOrAddWinnerNetworkAdUnit(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)Lio/bidmachine/NetworkAdUnit;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/NetworkAdapter;",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/NetworkAdUnit;"
        }
    .end annotation

    .line 1
    const-string v0, "bm_ad_unit_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 3
    iget-object v1, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/NetworkAdUnit;

    .line 4
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v2, v3

    goto :goto_15

    :cond_2d
    if-nez v2, :cond_3a

    .line 10
    new-instance v0, Lio/bidmachine/NetworkAdUnit;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/NetworkAdUnit;-><init>(Lio/bidmachine/NetworkAdapter;Lio/bidmachine/AdsFormat;Ljava/util/Map;)V

    .line 11
    iget-object p1, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3a
    return-object v2
.end method

.method public getNetworkAdUnitList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    return-object v0
.end method

.method public notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->isNetworkAuctionNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2e

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lio/bidmachine/utils/Tag;

    const-string v1, "notifyNetworkAuctionResult"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    if-ne v1, p1, :cond_2a

    .line 9
    :try_start_26
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->onWinAuction()V

    goto :goto_18

    .line 11
    :cond_2a
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->onLossAuction()V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_18

    goto :goto_18

    :cond_2e
    :goto_2e
    return-void
.end method

.method public notifyNetworkClearAuction()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->tag:Lio/bidmachine/utils/Tag;

    const-string v1, "notifyNetworkClearAuction"

    invoke-static {v0, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/NetworkAdUnit;

    .line 8
    :try_start_22
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->clearAuction()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_16

    goto :goto_16

    .line 12
    :cond_26
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setNetworkAdUnitList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {p1}, Lio/bidmachine/core/Utils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Lio/bidmachine/NetworkAdUnitManager;->networkAdUnitList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_10
    return-void
.end method
