###### Class com.facebook.ads.redexgen.X.C2968oF (com.facebook.ads.redexgen.X.oF)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/oF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oG;
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

    .line 3241
    invoke-static {}, Lcom/facebook/ads/redexgen/X/nx;->values()[Lcom/facebook/ads/redexgen/X/nx;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/oF;->A00:[I

    :try_start_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/oF;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/nx;->A0D:Lcom/facebook/ads/redexgen/X/nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nx;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/oF;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/nx;->A0E:Lcom/facebook/ads/redexgen/X/nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nx;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/oF;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/nx;->A0F:Lcom/facebook/ads/redexgen/X/nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nx;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/oF;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/nx;->A0C:Lcom/facebook/ads/redexgen/X/nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nx;->ordinal()I

    move-result v1

    const/4 v0, 0x4

    aput v0, v2, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
