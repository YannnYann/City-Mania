###### Class com.facebook.ads.redexgen.X.InterfaceC2365eK (com.facebook.ads.redexgen.X.eK)
.class public interface abstract Lcom/facebook/ads/redexgen/X/eK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/eK;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2403
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/eK;->A00:Lcom/facebook/ads/redexgen/X/eK;

    return-void
.end method


# virtual methods
.method public abstract A5H(Lcom/facebook/ads/redexgen/X/NX;)Ljava/lang/String;
.end method

###### Class com.facebook.ads.redexgen.X.C1767Mi (com.facebook.ads.redexgen.X.Mi)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Mi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eK;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 54834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5H(Lcom/facebook/ads/redexgen/X/NX;)Ljava/lang/String;
    .registers 3

    .line 54835
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/eJ;->A00(Lcom/facebook/ads/redexgen/X/NX;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
