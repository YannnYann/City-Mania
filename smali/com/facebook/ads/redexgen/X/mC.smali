###### Class com.facebook.ads.redexgen.X.CallableC2843mC (com.facebook.ads.redexgen.X.mC)
.class public final Lcom/facebook/ads/redexgen/X/mC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/mE;->A09(Lcom/facebook/ads/redexgen/X/lA;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/p1;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/p1;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102908
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:Lcom/facebook/ads/redexgen/X/p1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/mC;->A01:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:Lcom/facebook/ads/redexgen/X/p1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/p1;->A05()V

    .line 102910
    invoke-static {}, Lcom/facebook/ads/redexgen/X/mE;->A03()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 102911
    :try_start_a
    invoke-static {}, Lcom/facebook/ads/redexgen/X/mE;->A03()Ljava/util/Map;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mC;->A01:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102912
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1f

    .line 102913
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 102914
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102915
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/mC;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
