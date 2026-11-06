###### Class io.bidmachine.internal.M (io.bidmachine.internal.M)
.class public abstract Lio/bidmachine/internal/M;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/explorestack/protobuf/adcom/Context$App$Builder;Lio/bidmachine/TargetingParams$Data;)V
    .registers 3

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setStoreurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 4
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->isPaid()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

.method public static final a(Lcom/explorestack/protobuf/adcom/Context$App$Builder;Lio/bidmachine/TargetingParams;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams;->getData$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/TargetingParams$Data;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/internal/M;->a(Lcom/explorestack/protobuf/adcom/Context$App$Builder;Lio/bidmachine/TargetingParams$Data;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/protobuf/sdk/App$Builder;Lio/bidmachine/TargetingParams$Data;)V
    .registers 4

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->getStoreCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setStorecat(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 6
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->getStoreSubCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v1}, Lio/bidmachine/protobuf/sdk/App$Builder;->addStoresubcat(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    goto :goto_13

    .line 13
    :cond_23
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams$Data;->getFramework()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/App$Builder;->setFmwname(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    :cond_2c
    return-void
.end method

.method public static final a(Lio/bidmachine/protobuf/sdk/App$Builder;Lio/bidmachine/TargetingParams;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/TargetingParams;->getData$bidmachine_android_sdk_ba_3_8_0()Lio/bidmachine/TargetingParams$Data;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/internal/M;->a(Lio/bidmachine/protobuf/sdk/App$Builder;Lio/bidmachine/TargetingParams$Data;)V

    return-void
.end method
