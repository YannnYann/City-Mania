###### Class com.vungle.ads.internal.j0 (com.vungle.ads.internal.j0)
.class public final Lcom/vungle/ads/internal/j0;
.super Lcom/vungle/ads/internal/r;
.source "SourceFile"


# instance fields
.field public final q:Lcom/vungle/ads/VungleAdSize;

.field public volatile r:Lcom/vungle/ads/VungleAdSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/VungleAdSize;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/r;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/presenter/b;)Lcom/vungle/ads/internal/i0;
    .registers 3

    const-string v0, "adPlayCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/i0;

    invoke-direct {v0, p1, p0}, Lcom/vungle/ads/internal/i0;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/j0;)V

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/model/i0;)V
    .registers 8

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/model/i0;)V

    .line 5
    const-string v0, "req="

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v1}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adaptW="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveWidth$vungle_ads_release()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " adaptH="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveWidth$vungle_ads_release()Z

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 152
    :cond_6b
    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->d()Landroid/content/Context;

    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " device="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v4, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v4}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveWidth$vungle_ads_release()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->d()I

    move-result v4

    goto :goto_b4

    :cond_ae
    iget-object v4, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v4}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v4

    .line 159
    :goto_b4
    iget-object v5, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v5}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->a()I

    move-result p1

    goto :goto_c7

    :cond_c1
    iget-object p1, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result p1

    .line 160
    :goto_c7
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 161
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 162
    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v2

    if-lez v2, :cond_e9

    .line 165
    iget-object v2, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    invoke-virtual {v2}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 168
    :cond_e9
    new-instance v2, Lcom/vungle/ads/VungleAdSize;

    invoke-direct {v2, v3, p1}, Lcom/vungle/ads/VungleAdSize;-><init>(II)V

    iput-object v2, p0, Lcom/vungle/ads/internal/j0;->r:Lcom/vungle/ads/VungleAdSize;

    .line 171
    :cond_f0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/j0;->k()Lcom/vungle/ads/VungleAdSize;

    move-result-object p1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " final="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 174
    new-instance v1, Lcom/vungle/ads/internal/j2;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BANNER_SIZE_NEGOTIATED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 175
    invoke-virtual {p0}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/vungle/ads/VungleAdSize;)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1}, Lcom/vungle/ads/VungleAdSize;->isValidSize$vungle_ads_release()Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/vungle/ads/internal/model/j3;)Z
    .registers 3

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->h()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/j3;->f()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/vungle/ads/VungleAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    return-object v0
.end method

.method public final k()Lcom/vungle/ads/VungleAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/j0;->r:Lcom/vungle/ads/VungleAdSize;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vungle/ads/internal/j0;->q:Lcom/vungle/ads/VungleAdSize;

    :cond_6
    return-object v0
.end method
