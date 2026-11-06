###### Class ads_mobile_sdk.fg3 (ads_mobile_sdk.fg3)
.class public final Lads_mobile_sdk/fg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/p70;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/p70;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)V
    .registers 5

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalRequest"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lads_mobile_sdk/fg3;->a:Lads_mobile_sdk/p70;

    .line 20
    iput-object p3, p0, Lads_mobile_sdk/fg3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 23
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->U()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/fg3;->c:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->D0()Z

    move-result p2

    iput-boolean p2, p0, Lads_mobile_sdk/fg3;->d:Z

    .line 25
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->P()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fg3;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->g:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 30
    iget-boolean p1, p0, Lads_mobile_sdk/fg3;->d:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 31
    iget-object p1, p0, Lads_mobile_sdk/fg3;->e:Ljava/util/List;

    goto :goto_a

    .line 33
    :cond_8
    iget-object p1, p0, Lads_mobile_sdk/fg3;->c:Ljava/util/List;

    .line 35
    :goto_a
    iget-object v0, p0, Lads_mobile_sdk/fg3;->b:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;->a()Lads_mobile_sdk/x11;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/x11;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 36
    new-instance p1, Lads_mobile_sdk/q01;

    new-instance v0, Lads_mobile_sdk/eg3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lads_mobile_sdk/eg3;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 40
    :cond_2a
    iget-object p1, p0, Lads_mobile_sdk/fg3;->a:Lads_mobile_sdk/p70;

    invoke-virtual {p1}, Lads_mobile_sdk/p70;->g()Lads_mobile_sdk/v01;

    move-result-object p1

    .line 55
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_37

    check-cast p1, Lads_mobile_sdk/i01;

    return-object p1

    .line 56
    :cond_37
    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lads_mobile_sdk/q01;

    .line 57
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 61
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/eg3;

    invoke-direct {v1, p1}, Lads_mobile_sdk/eg3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
