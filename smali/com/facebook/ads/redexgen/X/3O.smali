###### Class com.facebook.ads.redexgen.X.C3O (com.facebook.ads.redexgen.X.3O)
.class public Lcom/facebook/ads/redexgen/X/3O;
.super Lcom/facebook/ads/redexgen/X/3V;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5820
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3V;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(IIIIZZ)Ljava/lang/Object;
    .registers 13

    .line 5821
    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A01(IIZI)Ljava/lang/Object;
    .registers 6

    .line 5822
    invoke-static {p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C3V (com.facebook.ads.redexgen.X.3V)
.class public abstract Lcom/facebook/ads/redexgen/X/3V;
.super Lcom/facebook/ads/redexgen/X/3v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi19Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5977
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3v;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .registers 3

    .line 5978
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 5979
    return-void
.end method

.method public final A04(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V
    .registers 3

    .line 5980
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 5981
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C13103v (com.facebook.ads.redexgen.X.3v)
.class public abstract Lcom/facebook/ads/redexgen/X/3v;
.super Lcom/facebook/ads/redexgen/X/7U;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi18Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7U;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .registers 3

    .line 7548
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C7U (com.facebook.ads.redexgen.X.7U)
.class public abstract Lcom/facebook/ads/redexgen/X/7U;
.super Lcom/facebook/ads/redexgen/X/JG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityNodeInfoApi17Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21635
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JG;-><init>()V

    return-void
.end method
