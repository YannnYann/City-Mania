###### Class com.facebook.ads.redexgen.X.C2987oZ (com.facebook.ads.redexgen.X.oZ)
.class public final Lcom/facebook/ads/redexgen/X/oZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1i;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oZ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/oa;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 106682
    if-nez p1, :cond_5

    .line 106683
    sget-object v0, Lcom/facebook/ads/redexgen/X/oa;->A07:Lcom/facebook/ads/redexgen/X/oa;

    .line 106684
    :goto_4
    return-object v0

    .line 106685
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/oa;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/oa;

    move-result-object v0

    goto :goto_4
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_a

    .line 106686
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    sget-object v0, Lcom/facebook/ads/redexgen/X/oa;->A07:Lcom/facebook/ads/redexgen/X/oa;

    goto :goto_4
.end method
