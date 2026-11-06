###### Class io.bidmachine.displays.mapper.DisclaimerDataMapper (io.bidmachine.displays.mapper.DisclaimerDataMapper)
.class public final Lio/bidmachine/displays/mapper/DisclaimerDataMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lio/bidmachine/internal/k;
    .registers 8

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->hasDisclaimer()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getDisclaimer()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DisclaimerAsset;

    move-result-object p1

    .line 3
    new-instance v1, Lio/bidmachine/internal/k;

    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DisclaimerAsset;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.text"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DisclaimerAsset;->getPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {p1, v5, v3, v4, v0}, Lio/bidmachine/util/UtilsKt;->toRatio$default(Ljava/lang/Number;FFILjava/lang/Object;)F

    move-result p1

    .line 6
    invoke-direct {v1, v2, p1}, Lio/bidmachine/internal/k;-><init>(Ljava/lang/String;F)V
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-object v1

    :catchall_2f
    :cond_2f
    return-object v0
.end method
