###### Class com.facebook.ads.redexgen.X.AbstractC2583hu (com.facebook.ads.redexgen.X.hu)
.class public abstract Lcom/facebook/ads/redexgen/X/hu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ht;,
        Lcom/facebook/ads/redexgen/X/7V;,
        Lcom/facebook/ads/redexgen/X/JH;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/ht;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 2595
    new-instance v0, Lcom/facebook/ads/redexgen/X/7V;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7V;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/hu;->A00:Lcom/facebook/ads/redexgen/X/ht;

    .line 2596
    return-void
.end method

.method public static A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 2

    .line 95369
    sget-object v0, Lcom/facebook/ads/redexgen/X/hu;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/ht;->A00(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    .line 95370
    sget-object v0, Lcom/facebook/ads/redexgen/X/hu;->A00:Lcom/facebook/ads/redexgen/X/ht;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ht;->A01(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 95371
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C7V (com.facebook.ads.redexgen.X.7V)
.class public final Lcom/facebook/ads/redexgen/X/7V;
.super Lcom/facebook/ads/redexgen/X/JH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityEventCompatApi19Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21636
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JH;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 3

    .line 21637
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public final A01(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 3

    .line 21638
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 21639
    return-void
.end method
