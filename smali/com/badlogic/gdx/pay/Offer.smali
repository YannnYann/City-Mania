###### Class com.badlogic.gdx.pay.Offer (com.badlogic.gdx.pay.Offer)
.class public Lcom/badlogic/gdx/pay/Offer;
.super Ljava/lang/Object;
.source "Offer.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public identifierForStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/badlogic/gdx/pay/OfferType;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Offer;->identifierForStores:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized getIdentifier()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Offer;->identifier:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getIdentifierForStore(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 58
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Offer;->identifierForStores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    if-eqz p1, :cond_d

    .line 60
    monitor-exit p0

    return-object p1

    .line 63
    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/badlogic/gdx/pay/Offer;->identifier:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public declared-synchronized getType()Lcom/badlogic/gdx/pay/OfferType;
    .registers 2

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/pay/Offer;->type:Lcom/badlogic/gdx/pay/OfferType;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;
    .registers 2

    monitor-enter p0

    .line 51
    :try_start_1
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Offer;->identifier:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 54
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;
    .registers 2

    monitor-enter p0

    .line 40
    :try_start_1
    iput-object p1, p0, Lcom/badlogic/gdx/pay/Offer;->type:Lcom/badlogic/gdx/pay/OfferType;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 43
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offer{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Offer;->type:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Offer;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", identifierForStores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Offer;->identifierForStores:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
