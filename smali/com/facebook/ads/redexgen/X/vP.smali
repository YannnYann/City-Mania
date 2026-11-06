###### Class com.facebook.ads.redexgen.X.C3408vP (com.facebook.ads.redexgen.X.vP)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/vP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/vU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic A00:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/vO;->values()[Lcom/facebook/ads/redexgen/X/vO;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [I

    :try_start_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/vO;->A06:Lcom/facebook/ads/redexgen/X/vO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/vO;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v0, Lcom/facebook/ads/redexgen/X/vO;->A04:Lcom/facebook/ads/redexgen/X/vO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/vO;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v0, Lcom/facebook/ads/redexgen/X/vO;->A05:Lcom/facebook/ads/redexgen/X/vO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/vO;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v2, Lcom/facebook/ads/redexgen/X/vP;->A00:[I

    return-void
.end method
