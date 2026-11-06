###### Class com.facebook.ads.redexgen.X.C2333dn (com.facebook.ads.redexgen.X.dn)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/dn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/51;
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

    .line 2349
    invoke-static {}, Lcom/facebook/ads/redexgen/X/cC;->values()[Lcom/facebook/ads/redexgen/X/cC;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    :try_start_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/cC;->A07:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/cC;->A04:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/cC;->A05:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/cC;->A06:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v1

    const/4 v0, 0x4

    aput v0, v2, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v2, Lcom/facebook/ads/redexgen/X/dn;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/cC;->A0A:Lcom/facebook/ads/redexgen/X/cC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cC;->ordinal()I

    move-result v1

    const/4 v0, 0x5

    aput v0, v2, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    return-void
.end method
