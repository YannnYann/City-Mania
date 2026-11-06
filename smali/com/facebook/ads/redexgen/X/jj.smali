###### Class com.facebook.ads.redexgen.X.C2694jj (com.facebook.ads.redexgen.X.jj)
.class public abstract synthetic Lcom/facebook/ads/redexgen/X/jj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jk;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oW;->values()[Lcom/facebook/ads/redexgen/X/oW;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [I

    :try_start_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/oW;->A04:Lcom/facebook/ads/redexgen/X/oW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oW;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v0, Lcom/facebook/ads/redexgen/X/oW;->A03:Lcom/facebook/ads/redexgen/X/oW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oW;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v0, Lcom/facebook/ads/redexgen/X/oW;->A05:Lcom/facebook/ads/redexgen/X/oW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/oW;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v2, Lcom/facebook/ads/redexgen/X/jj;->A00:[I

    return-void
.end method
