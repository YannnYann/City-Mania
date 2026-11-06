###### Class ads_mobile_sdk.kp2 (ads_mobile_sdk.kp2)
.class public final Lads_mobile_sdk/kp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/r41;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/r41;)V
    .registers 4

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmsgHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/kp2;->a:Lads_mobile_sdk/r41;

    .line 43
    iget-object p1, p1, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lads_mobile_sdk/vc1;->e:Ljava/lang/String;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lads_mobile_sdk/kp2;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/kp2;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/r41;->a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 2
    const-string v0, "adKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lads_mobile_sdk/kp2;->b:Ljava/lang/String;

    return-void
.end method

.method public final f()Lads_mobile_sdk/r41;
    .registers 2

    .line 45
    iget-object v0, p0, Lads_mobile_sdk/kp2;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->f()Lads_mobile_sdk/r41;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/kp2;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->g()Lads_mobile_sdk/u11;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/kp2;->a:Lads_mobile_sdk/r41;

    invoke-interface {v0}, Lads_mobile_sdk/r41;->i()Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/kp2;->b:Ljava/lang/String;

    return-object v0
.end method
