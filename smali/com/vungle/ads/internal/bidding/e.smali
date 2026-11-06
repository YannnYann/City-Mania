###### Class com.vungle.ads.internal.bidding.e (com.vungle.ads.internal.bidding.e)
.class public final Lcom/vungle/ads/internal/bidding/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/vungle/ads/internal/j2;

.field public c:I

.field public final d:Lkotlinx/serialization/json/Json;

.field public e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/e;->a:Landroid/content/Context;

    .line 6
    new-instance p1, Lcom/vungle/ads/internal/j2;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BID_TOKEN_REQUESTED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/e;->b:Lcom/vungle/ads/internal/j2;

    .line 12
    sget-object p1, Lcom/vungle/ads/internal/bidding/d;->a:Lcom/vungle/ads/internal/bidding/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/e;->d:Lkotlinx/serialization/json/Json;

    .line 28
    sget-object p1, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    new-instance p1, Lcom/vungle/ads/internal/bidding/a;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/bidding/a;-><init>(Lcom/vungle/ads/internal/bidding/e;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/a;->a(Lcom/vungle/ads/internal/util/b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/e;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/bidding/c;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/bidding/c;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 4
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->t()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->d()Z

    move-result v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(ZZ)Lcom/vungle/ads/internal/model/u1;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/vungle/ads/internal/model/p3;

    .line 11
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/u1;->a()Lcom/vungle/ads/internal/model/c3;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/u1;->d()Lcom/vungle/ads/internal/model/t1;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/u1;->b()Lcom/vungle/ads/internal/model/n1;

    move-result-object v4

    .line 14
    new-instance v5, Lcom/vungle/ads/internal/model/m3;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vungle/ads/internal/model/m3;-><init>(Ljava/lang/String;)V

    .line 15
    iget v6, p0, Lcom/vungle/ads/internal/bidding/e;->c:I

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/p3;-><init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/m3;I)V

    .line 23
    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/e;->d:Lkotlinx/serialization/json/Json;

    .line 29
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 30
    const-class v3, Lcom/vungle/ads/internal/model/p3;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 31
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v2, v1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/vungle/ads/internal/bidding/b;
    .registers 6

    .line 1
    const-string v0, ""

    iget v1, p0, Lcom/vungle/ads/internal/bidding/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vungle/ads/internal/bidding/e;->c:I

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/internal/bidding/e;->b:Lcom/vungle/ads/internal/j2;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 4
    :try_start_11
    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/e;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_7c

    .line 11
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BidToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BidTokenEncoder"

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_2d
    invoke-static {v1}, Lcom/vungle/ads/internal/util/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "6:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After conversion: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v2, Lcom/vungle/ads/internal/bidding/b;

    invoke-direct {v2, v1, v0}, Lcom/vungle/ads/internal/bidding/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_2d .. :try_end_5b} :catchall_5c

    return-object v2

    :catchall_5c
    move-exception v1

    .line 18
    const-string v2, "Fail to gzip token data. "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/vungle/ads/GzipEncodeError;

    invoke-direct {v2, v1}, Lcom/vungle/ads/GzipEncodeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 21
    new-instance v2, Lcom/vungle/ads/internal/bidding/b;

    invoke-direct {v2, v0, v1}, Lcom/vungle/ads/internal/bidding/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    :catchall_7c
    move-exception v1

    .line 22
    const-string v2, "Failed to encode TokenParameters. "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/vungle/ads/JsonEncodeError;

    invoke-direct {v2, v1}, Lcom/vungle/ads/JsonEncodeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 25
    new-instance v2, Lcom/vungle/ads/internal/bidding/b;

    invoke-direct {v2, v0, v1}, Lcom/vungle/ads/internal/bidding/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9b
    return-object v2
.end method
