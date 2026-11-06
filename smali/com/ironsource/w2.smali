###### Class com.ironsource.C3903w2 (com.ironsource.w2)
.class public final Lcom/ironsource/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x2;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuctionResponseFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuctionResponseFetcher.kt\ncom/unity3d/ironsourceads/internal/auction/AuctionResponseFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/Jd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/Jd;)V
    .registers 4

    const-string v0, "encryptedAuctionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/w2;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/w2;->b:Lcom/ironsource/Jd;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lcom/ironsource/p5;->b()Lcom/ironsource/p5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p5;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMediationKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/ironsource/xa;

    new-instance v2, Lcom/ironsource/J4;

    iget-object v3, p0, Lcom/ironsource/w2;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/ironsource/J4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ironsource/xa;-><init>(Lcom/ironsource/Te;)V

    .line 7
    :try_start_19
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lcom/ironsource/xa;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_24

    goto :goto_2f

    :catchall_24
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    :goto_2f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_44

    check-cast v0, Lorg/json/JSONObject;

    .line 17
    sget-object v1, Lcom/ironsource/u2;->h:Lcom/ironsource/u2$b;

    iget-object v2, p0, Lcom/ironsource/w2;->b:Lcom/ironsource/Jd;

    invoke-interface {v2}, Lcom/ironsource/Jd;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/u2$b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 18
    :cond_44
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    instance-of v0, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_63

    .line 20
    new-instance v0, Lcom/ironsource/f8;

    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v1}, Lcom/ironsource/z5;->d()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 23
    :cond_63
    new-instance v0, Lcom/ironsource/f8;

    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v1}, Lcom/ironsource/z5;->h()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/f8;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
