###### Class com.badlogic.gdx.pay.PurchaseManagerConfig (com.badlogic.gdx.pay.PurchaseManagerConfig)
.class public Lcom/badlogic/gdx/pay/PurchaseManagerConfig;
.super Ljava/lang/Object;
.source "PurchaseManagerConfig.java"


# instance fields
.field public offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/pay/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public storeParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->storeParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addOffer(Lcom/badlogic/gdx/pay/Offer;)V
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 59
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized getOffer(I)Lcom/badlogic/gdx/pay/Offer;
    .registers 3

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Offer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized getOffer(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/Offer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 65
    iget-object p1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Offer;
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object p1

    :catchall_26
    move-exception p1

    goto :goto_2e

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_2b
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_26

    throw p1
.end method

.method public declared-synchronized getOfferCount()I
    .registers 2

    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized hasAnyOfferWithType(Lcom/badlogic/gdx/pay/OfferType;)Z
    .registers 4

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->offers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/pay/Offer;

    .line 75
    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/Offer;->getType()Lcom/badlogic/gdx/pay/OfferType;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    if-ne v1, p1, :cond_7

    .line 76
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1c
    move-exception p1

    goto :goto_21

    .line 79
    :cond_1e
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1c

    throw p1
.end method
