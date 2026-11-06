###### Class com.facebook.ads.redexgen.X.C1788Nd (com.facebook.ads.redexgen.X.Nd)
.class public final Lcom/facebook/ads/redexgen/X/Nd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestProperties"
.end annotation


# instance fields
.field public A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Ljava/util/Map;

    .line 57791
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 57792
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 57793
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Ljava/util/Map;

    .line 57794
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Nd;
    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Ljava/util/Map;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 57795
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 57796
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Ljava/util/Map;

    .line 57797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 57798
    monitor-exit p0

    return-void

    .line 57799
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Nd;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Ljava/lang/String;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
