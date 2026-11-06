###### Class ads_mobile_sdk.cc2 (ads_mobile_sdk.cc2)
.class public final Lads_mobile_sdk/cc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/e01;


# instance fields
.field public final a:Lads_mobile_sdk/k70;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k70;)V
    .registers 3

    .line 1
    const-string v0, "cronetHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    return-void
.end method


# virtual methods
.method public final a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;
    .registers 6

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0, p1, p2, p3, p4}, Lads_mobile_sdk/k70;->a(IJLads_mobile_sdk/m8;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Lads_mobile_sdk/ja2;)Ljava/lang/Object;
    .registers 10

    .line 7
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/16 v5, 0x14

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 12
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/f81;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/k70;->a(Lads_mobile_sdk/sl1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/k70;->a(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/k70;->a(Ljava/net/URL;Lads_mobile_sdk/ss0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/net/URL;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/k70;->a(Ljava/net/URL;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 13
    iget-object v0, p0, Lads_mobile_sdk/cc2;->a:Lads_mobile_sdk/k70;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/k70;->a(Ljava/net/URL;Lkotlin/time/Duration;Ljava/util/Map;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/uv;)V
    .registers 3

    .line 14
    const-string v0, "chromeVariationsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/vk0;)V
    .registers 3

    .line 15
    const-string v0, "debugModeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
