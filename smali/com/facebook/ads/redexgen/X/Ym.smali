###### Class com.facebook.ads.redexgen.X.C2059Ym (com.facebook.ads.redexgen.X.Ym)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/Ym;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I

.field public static final synthetic A01:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1768
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zc;->values()[Lcom/facebook/ads/redexgen/X/Zc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ym;->A00:[I

    const/4 v3, 0x1

    :try_start_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A04:Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v2, 0x2

    :try_start_15
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zc;->A05:Lcom/facebook/ads/redexgen/X/Zc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zc;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    .line 1769
    :catch_1f
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YU;->values()[Lcom/facebook/ads/redexgen/X/YU;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ym;->A01:[I

    :try_start_28
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/YU;->A03:Lcom/facebook/ads/redexgen/X/YU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YU;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ym;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/YU;->A04:Lcom/facebook/ads/redexgen/X/YU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YU;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method
