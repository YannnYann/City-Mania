###### Class ads_mobile_sdk.vy (ads_mobile_sdk.vy)
.class public abstract Lads_mobile_sdk/vy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lads_mobile_sdk/bn1;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/nd1;Lads_mobile_sdk/ex0;)Lads_mobile_sdk/bn1;
    .registers 17

    move-object v4, p3

    move-object v0, p4

    move-object/from16 v10, p5

    .line 1
    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adRequest"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestId"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "inspectorAdLifecycleMonitorFactory"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "flags"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const-string v6, "of(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v9

    const-string v6, "empty(...)"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "baseRequest"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "signalRequest"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v1, v0, Lads_mobile_sdk/nd1;->a:Lads_mobile_sdk/if1;

    .line 315
    iget-object v6, v0, Lads_mobile_sdk/nd1;->b:Lads_mobile_sdk/tx;

    .line 316
    iget-object v7, v0, Lads_mobile_sdk/nd1;->c:Lcom/google/gson/Gson;

    .line 317
    iget-object v8, v0, Lads_mobile_sdk/nd1;->d:Lads_mobile_sdk/ex0;

    .line 318
    new-instance v0, Lads_mobile_sdk/md1;

    move-object v3, v5

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lads_mobile_sdk/md1;-><init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/j53;Ljava/util/Optional;Ljava/lang/String;ZLads_mobile_sdk/tx;Lcom/google/gson/Gson;Lads_mobile_sdk/ex0;Ljava/util/Optional;)V

    .line 319
    invoke-interface/range {p0 .. p1}, Lads_mobile_sdk/bn1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bn1;

    .line 320
    invoke-interface {v1, p2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bn1;

    .line 321
    new-instance v2, Lads_mobile_sdk/n03;

    invoke-direct {v2}, Lads_mobile_sdk/n03;-><init>()V

    invoke-interface {v1, v2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bn1;

    .line 322
    new-instance v2, Lads_mobile_sdk/tn1;

    invoke-direct {v2}, Lads_mobile_sdk/tn1;-><init>()V

    invoke-interface {v1, v2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/bn1;

    .line 323
    invoke-interface {v1, v0}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    const/4 v1, 0x0

    .line 324
    invoke-interface {v0, v1}, Lads_mobile_sdk/bn1;->a(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    .line 325
    new-instance v2, Lads_mobile_sdk/m13;

    invoke-direct {v2}, Lads_mobile_sdk/m13;-><init>()V

    invoke-interface {v0, v2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/m13;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    .line 326
    invoke-interface {v0, v1}, Lads_mobile_sdk/bn1;->b(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    const/4 v1, 0x1

    .line 327
    invoke-interface {v0, v1}, Lads_mobile_sdk/bn1;->c(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    .line 328
    new-instance v1, Lads_mobile_sdk/pb;

    invoke-direct {v1, v10}, Lads_mobile_sdk/pb;-><init>(Lads_mobile_sdk/ex0;)V

    invoke-interface {v0, v1}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/pb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/bn1;

    return-object v0
.end method
