###### Class com.facebook.ads.redexgen.X.InterfaceC2072Yz (com.facebook.ads.redexgen.X.Yz)
.class public interface abstract Lcom/facebook/ads/redexgen/X/Yz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/Yz;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1777
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Q7;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Yz;->A00:Lcom/facebook/ads/redexgen/X/Yz;

    return-void
.end method


# virtual methods
.method public abstract A5w()[Lcom/facebook/ads/redexgen/X/Yv;
.end method

.method public abstract A5x(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/Yv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/facebook/ads/redexgen/X/Yv;"
        }
    .end annotation
.end method

###### Class com.facebook.ads.redexgen.X.Q7 (com.facebook.ads.redexgen.X.Q7)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Q7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yz;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 65903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5w()[Lcom/facebook/ads/redexgen/X/Yv;
    .registers 2

    .line 65904
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yy;->A00()[Lcom/facebook/ads/redexgen/X/Yv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic A5x(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/Yv;
    .registers 4

    .line 65905
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Yy;->A01(Lcom/facebook/ads/redexgen/X/Yz;Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/Yv;

    move-result-object v0

    return-object v0
.end method
