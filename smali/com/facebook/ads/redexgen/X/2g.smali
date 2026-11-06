###### Class com.facebook.ads.redexgen.X.C2g (com.facebook.ads.redexgen.X.2g)
.class public final Lcom/facebook/ads/redexgen/X/2g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/14;
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

    .line 5588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1i;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2g;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/14;
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5589
    new-instance v0, Lcom/facebook/ads/redexgen/X/14;

    .line 5590
    new-instance v1, Lcom/facebook/ads/redexgen/X/13;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/13;-><init>(ZZZILcom/facebook/ads/redexgen/X/1i;)V

    .line 5591
    new-instance v2, Lcom/facebook/ads/redexgen/X/0Q;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/0Q;-><init>()V

    check-cast v2, Lcom/facebook/ads/redexgen/X/0e;

    .line 5592
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/14;-><init>(Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/0e;Lcom/facebook/ads/redexgen/X/2h;Lcom/facebook/ads/redexgen/X/30;ILcom/facebook/ads/redexgen/X/1i;)V

    .line 5593
    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C0Q (com.facebook.ads.redexgen.X.0Q)
.class public final Lcom/facebook/ads/redexgen/X/0Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/0e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultClipRegionsProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/33;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:Ljava/util/List;

    .line 3910
    return-void
.end method


# virtual methods
.method public final A7I(I)Lcom/facebook/ads/redexgen/X/33;
    .registers 3

    .line 3911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/facebook/ads/redexgen/X/33;",
            ">;"
        }
    .end annotation

    .line 3912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 3913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0Q;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
