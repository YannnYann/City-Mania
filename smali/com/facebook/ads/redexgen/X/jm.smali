###### Class com.facebook.ads.redexgen.X.AbstractC2697jm (com.facebook.ads.redexgen.X.jm)
.class public abstract Lcom/facebook/ads/redexgen/X/jm;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2658
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/jm;->A00:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kz;
    .registers 2

    .line 99120
    sget-object v0, Lcom/facebook/ads/redexgen/X/jm;->A00:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kz;

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)V
    .registers 2

    .line 99121
    sget-object v0, Lcom/facebook/ads/redexgen/X/jm;->A00:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99122
    return-void
.end method

.method public static A02(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Kz;)V
    .registers 3

    .line 99123
    sget-object v0, Lcom/facebook/ads/redexgen/X/jm;->A00:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99124
    return-void
.end method
