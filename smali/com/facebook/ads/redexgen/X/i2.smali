###### Class com.facebook.ads.redexgen.X.C2591i2 (com.facebook.ads.redexgen.X.i2)
.class public final Lcom/facebook/ads/redexgen/X/i2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/i1;,
        Lcom/facebook/ads/redexgen/X/7T;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;,
        Lcom/facebook/ads/redexgen/X/JD;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/i1;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2607
    new-instance v0, Lcom/facebook/ads/redexgen/X/7T;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7T;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/i2;->A01:Lcom/facebook/ads/redexgen/X/i1;

    .line 2608
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 95555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95556
    sget-object v0, Lcom/facebook/ads/redexgen/X/i2;->A01:Lcom/facebook/ads/redexgen/X/i1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/i1;->ADS(Lcom/facebook/ads/redexgen/X/i2;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/i2;->A00:Ljava/lang/Object;

    .line 95557
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 95558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/i2;->A00:Ljava/lang/Object;

    .line 95560
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/i0;
    .registers 3

    .line 95561
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/i0;
    .registers 3

    .line 95562
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .registers 2

    .line 95563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i2;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/i0;",
            ">;"
        }
    .end annotation

    .line 95564
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .registers 5

    .line 95565
    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C7T (com.facebook.ads.redexgen.X.7T)
.class public final Lcom/facebook/ads/redexgen/X/7T;
.super Lcom/facebook/ads/redexgen/X/JD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeProviderKitKatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21632
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JD;-><init>()V

    .line 21633
    return-void
.end method


# virtual methods
.method public final ADS(Lcom/facebook/ads/redexgen/X/i2;)Ljava/lang/Object;
    .registers 3

    .line 21634
    new-instance v0, Lcom/facebook/ads/redexgen/X/JE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/JE;-><init>(Lcom/facebook/ads/redexgen/X/7T;Lcom/facebook/ads/redexgen/X/i2;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i8;->A00(Lcom/facebook/ads/redexgen/X/i7;)Lcom/facebook/ads/redexgen/X/i6;

    move-result-object v0

    return-object v0
.end method
