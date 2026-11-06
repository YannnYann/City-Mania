###### Class ads_mobile_sdk.l52 (ads_mobile_sdk.l52)
.class public final Lads_mobile_sdk/l52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/v3;

.field public final b:Lads_mobile_sdk/d63;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v3;Lads_mobile_sdk/d63;)V
    .registers 4

    .line 1
    const-string v0, "adEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryingUrlPinger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/l52;->a:Lads_mobile_sdk/v3;

    .line 20
    iput-object p2, p0, Lads_mobile_sdk/l52;->b:Lads_mobile_sdk/d63;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 26
    const-string p1, "u"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5b

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_11

    goto :goto_5b

    .line 31
    :cond_11
    iget-object p2, p0, Lads_mobile_sdk/l52;->b:Lads_mobile_sdk/d63;

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    iget-object v4, p0, Lads_mobile_sdk/l52;->a:Lads_mobile_sdk/v3;

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 43
    new-instance p1, Lads_mobile_sdk/n03;

    invoke-direct {p1}, Lads_mobile_sdk/n03;-><init>()V

    .line 44
    new-instance p3, Lads_mobile_sdk/tn1;

    invoke-direct {p3}, Lads_mobile_sdk/tn1;-><init>()V

    .line 45
    new-instance v0, Lads_mobile_sdk/m33;

    invoke-direct {v0}, Lads_mobile_sdk/m33;-><init>()V

    .line 46
    new-instance v2, Lads_mobile_sdk/zb;

    invoke-direct {v2}, Lads_mobile_sdk/zb;-><init>()V

    .line 47
    const-string v3, "publisherRequestTraceMeta"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "internalRequestTraceMeta"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renderTraceMeta"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adTraceMeta"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "uri"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p2, Lads_mobile_sdk/d63;->c:Lads_mobile_sdk/c63;

    .line 51
    iget-object v2, p2, Lads_mobile_sdk/d63;->a:Lads_mobile_sdk/i2;

    .line 52
    iget-object v3, p2, Lads_mobile_sdk/d63;->b:Lads_mobile_sdk/zy;

    const/4 v6, 0x0

    .line 53
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/v3;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;)V

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    const/4 p2, 0x6

    .line 55
    const-string p3, "Impression URL in native GMSG is null or empty"

    invoke-static {p3, p1, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->c0:Lads_mobile_sdk/u11;

    return-object v0
.end method
