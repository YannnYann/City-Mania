###### Class com.facebook.ads.redexgen.X.C1644Hj (com.facebook.ads.redexgen.X.Hj)
.class public final Lcom/facebook/ads/redexgen/X/Hj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/l3;


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A5Y(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 46054
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 46055
    monitor-exit p0

    return-void

    .line 46056
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hj;
    .end local p1    # null:Ljava/lang/String;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AB4(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 46057
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 46058
    .local v0, "loadedAds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    .end local p1    # null:Ljava/lang/String;
    :cond_13
    const/4 v0, 0x0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return v0

    .line 46059
    .end local v0    # "loadedAds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # null:Ljava/lang/String;
    .end local p3
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AKW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 46060
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 46061
    .local v0, "loadedAds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_15

    .line 46062
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 46063
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hj;->A00:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46064
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hj;
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 46065
    monitor-exit p0

    return-void

    .line 46066
    .end local v0    # "loadedAds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Ljava/lang/String;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
