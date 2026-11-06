###### Class com.facebook.ads.redexgen.X.C2724kD (com.facebook.ads.redexgen.X.kD)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/kD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 2670
    invoke-static {}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->values()[Lcom/facebook/ads/NativeAdOptionsViewPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/kD;->A00:[I

    :try_start_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/kD;->A00:[I

    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/kD;->A00:[I

    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/kD;->A00:[I

    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->BOTTOM_LEFT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/kD;->A00:[I

    sget-object v0, Lcom/facebook/ads/NativeAdOptionsViewPosition;->TOP_RIGHT:Lcom/facebook/ads/NativeAdOptionsViewPosition;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdOptionsViewPosition;->ordinal()I

    move-result v1

    const/4 v0, 0x4

    aput v0, v2, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
