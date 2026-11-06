###### Class ads_mobile_sdk.zk (ads_mobile_sdk.zk)
.class public final Lads_mobile_sdk/zk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/dn1;


# instance fields
.field public final a:Lads_mobile_sdk/cw2;

.field public final b:Lads_mobile_sdk/nd1;

.field public final c:Lads_mobile_sdk/f13;

.field public final d:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;Lads_mobile_sdk/nd1;Lads_mobile_sdk/f13;Lads_mobile_sdk/ex0;)V
    .registers 6

    .line 1
    const-string v0, "builderProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monitorFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomGenerator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/zk;->a:Lads_mobile_sdk/cw2;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/zk;->b:Lads_mobile_sdk/nd1;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/zk;->c:Lads_mobile_sdk/f13;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/zk;->d:Lads_mobile_sdk/ex0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;I)Lads_mobile_sdk/v01;
    .registers 9

    .line 1
    const-string p2, "adRequest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz p2, :cond_d

    move-object p2, p1

    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    if-nez p2, :cond_33

    .line 36
    new-instance p2, Lads_mobile_sdk/m01;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected AppOpenAdRequest but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-direct {p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 41
    :cond_33
    iget-object p2, p0, Lads_mobile_sdk/zk;->c:Lads_mobile_sdk/f13;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/f13;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance p2, Lads_mobile_sdk/q01;

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/zk;->a:Lads_mobile_sdk/cw2;

    .line 45
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/bn1;

    .line 48
    sget-object v2, Lads_mobile_sdk/j53;->e:Lads_mobile_sdk/j53;

    .line 50
    iget-object v4, p0, Lads_mobile_sdk/zk;->b:Lads_mobile_sdk/nd1;

    .line 51
    iget-object v5, p0, Lads_mobile_sdk/zk;->d:Lads_mobile_sdk/ex0;

    move-object v1, p1

    .line 52
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/vy;->a(Lads_mobile_sdk/bn1;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;Ljava/lang/String;Lads_mobile_sdk/nd1;Lads_mobile_sdk/ex0;)Lads_mobile_sdk/bn1;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wj1;

    .line 59
    check-cast p1, Lads_mobile_sdk/eg0;

    invoke-virtual {p1}, Lads_mobile_sdk/eg0;->a()Lads_mobile_sdk/fg0;

    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
