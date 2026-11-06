###### Class ads_mobile_sdk.r41 (ads_mobile_sdk.r41)
.class public interface abstract Lads_mobile_sdk/r41;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()Lads_mobile_sdk/r41;
    .registers 1

    .line 0
    return-object p0
.end method

.method public abstract g()Lads_mobile_sdk/u11;
.end method

.method public i()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
