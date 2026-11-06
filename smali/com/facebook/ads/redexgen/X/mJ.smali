###### Class com.facebook.ads.redexgen.X.C2850mJ (com.facebook.ads.redexgen.X.mJ)
.class public final Lcom/facebook/ads/redexgen/X/mJ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/mJ;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2965
    new-instance v0, Lcom/facebook/ads/redexgen/X/mJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/mJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/mJ;->A00:Lcom/facebook/ads/redexgen/X/mJ;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 103013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/mJ;
    .registers 1

    .line 103014
    sget-object v0, Lcom/facebook/ads/redexgen/X/mJ;->A00:Lcom/facebook/ads/redexgen/X/mJ;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/lA;Z)Lcom/facebook/ads/redexgen/X/HD;
    .registers 5

    .line 103015
    new-instance v1, Lcom/facebook/ads/redexgen/X/kp;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/kp;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/HD;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/HD;-><init>(Lcom/facebook/ads/redexgen/X/lA;ZLcom/facebook/ads/redexgen/X/kp;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/lA;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/lA;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103016
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/mJ;->A01(Lcom/facebook/ads/redexgen/X/lA;Z)Lcom/facebook/ads/redexgen/X/HD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HD;->A06()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_a

    .line 103017
    :catchall_a
    move-exception v1

    .line 103018
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/lA;->A08()Lcom/facebook/ads/redexgen/X/le;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/le;->A4j(Ljava/lang/Throwable;)V

    .line 103019
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/mB;->A01(Lcom/facebook/ads/redexgen/X/lA;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
