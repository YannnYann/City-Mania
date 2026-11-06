###### Class com.facebook.ads.redexgen.X.C2626ib (com.facebook.ads.redexgen.X.ib)
.class public final Lcom/facebook/ads/redexgen/X/ib;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/jE;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A0B:Z

    .line 96190
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A02:I

    .line 96191
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A0A:Z

    .line 96192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    return-void
.end method

.method private A00()Landroid/view/View;
    .registers 7

    .line 96193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 96194
    .local v0, "size":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v4, v5, :cond_2e

    .line 96195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jE;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/jE;->A0H:Landroid/view/View;

    .line 96196
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ix;

    .line 96197
    .local v3, "lp":Lcom/facebook/ads/redexgen/X/ix;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ix;->A02()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 96198
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Lcom/facebook/ads/redexgen/X/ix;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 96199
    :cond_22
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ix;->A00()I

    move-result v0

    if-ne v1, v0, :cond_1f

    .line 96200
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/ib;->A02(Landroid/view/View;)V

    .line 96201
    return-object v3

    .line 96202
    .end local v1    # "i":I
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A01(Landroid/view/View;)Landroid/view/View;
    .registers 9

    .line 96203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 96204
    .local v0, "size":I
    const/4 v5, 0x0

    .line 96205
    .local v1, "closest":Landroid/view/View;
    const v4, 0x7fffffff

    .line 96206
    .local v2, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v6, :cond_3b

    .line 96207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/jE;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/jE;->A0H:Landroid/view/View;

    .line 96208
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ix;

    .line 96209
    .local v5, "lp":Lcom/facebook/ads/redexgen/X/ix;
    if-eq v2, p1, :cond_25

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ix;->A02()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 96210
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "lp":Lcom/facebook/ads/redexgen/X/ix;
    .end local v6
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 96211
    :cond_28
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ix;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A03:I

    mul-int/2addr v1, v0

    .line 96212
    .local v6, "distance":I
    if-gez v1, :cond_35

    goto :goto_25

    .line 96213
    :cond_35
    if-ge v1, v4, :cond_25

    .line 96214
    move-object v5, v2

    .line 96215
    move v4, v1

    .line 96216
    if-nez v1, :cond_25

    .line 96217
    .end local v3    # "i":I
    :cond_3b
    return-object v5
.end method

.method private final A02(Landroid/view/View;)V
    .registers 3

    .line 96218
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ib;->A01(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 96219
    .local v0, "closest":Landroid/view/View;
    if-nez v0, :cond_a

    .line 96220
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    .line 96221
    :goto_9
    return-void

    .line 96222
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ix;

    .line 96223
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ix;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    goto :goto_9
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/j4;)Landroid/view/View;
    .registers 5

    .line 96224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A08:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 96225
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ib;->A00()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 96226
    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/j4;->A0H(I)Landroid/view/View;

    move-result-object v2

    .line 96227
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A03:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    .line 96228
    return-object v2
.end method

.method public final A04()V
    .registers 2

    .line 96229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ib;->A02(Landroid/view/View;)V

    .line 96230
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/jB;)Z
    .registers 4

    .line 96231
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    if-ltz v0, :cond_e

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ib;->A01:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jB;->A03()I

    move-result v0

    if-ge v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
