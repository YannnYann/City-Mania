###### Class com.facebook.ads.redexgen.X.C3171ra (com.facebook.ads.redexgen.X.ra)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/ra;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FS;
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

    .line 3633
    invoke-static {}, Lcom/facebook/ads/redexgen/X/hS;->values()[Lcom/facebook/ads/redexgen/X/hS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/ra;->A00:[I

    :try_start_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/ra;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/hS;->A04:Lcom/facebook/ads/redexgen/X/hS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hS;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/ra;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/hS;->A03:Lcom/facebook/ads/redexgen/X/hS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hS;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
