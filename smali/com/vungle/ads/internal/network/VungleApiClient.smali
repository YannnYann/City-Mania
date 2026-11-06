###### Class com.vungle.ads.internal.network.VungleApiClient (com.vungle.ads.internal.network.VungleApiClient)
.class public final Lcom/vungle/ads/internal/network/VungleApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://config.ads.vungle.com/"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static final interceptorEnabled:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private static final logInterceptors:Ljava/util/Set;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lkotlinx/serialization/json/Json;

.field private static final networkInterceptors:Ljava/util/Set;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/platform/f;

.field public final c:Lcom/vungle/ads/internal/persistence/FilePreferences;

.field public d:Lcom/vungle/ads/internal/network/e0;

.field public e:Lcom/vungle/ads/internal/network/e0;

.field public f:Lcom/vungle/ads/internal/model/c3;

.field public g:Lcom/vungle/ads/internal/model/j0;

.field public h:Lcom/vungle/ads/internal/model/m0;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;

.field public final k:Lkotlin/Lazy;

.field public l:Ljava/util/concurrent/ConcurrentHashMap;

.field public m:Lokhttp3/Interceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->networkInterceptors:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->logInterceptors:Ljava/util/Set;

    .line 11
    sget-object v0, Lcom/vungle/ads/internal/network/s;->a:Lcom/vungle/ads/internal/network/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->n:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/platform/f;Lcom/vungle/ads/internal/persistence/FilePreferences;)V
    .registers 6

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePreferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->c:Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 39
    const-string p2, "http.agent"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    .line 40
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/vungle/ads/internal/network/a0;

    invoke-direct {p3, p1}, Lcom/vungle/ads/internal/network/a0;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->k:Lkotlin/Lazy;

    .line 42
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance p1, Lcom/vungle/ads/internal/network/VungleApiClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/network/VungleApiClient$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->m:Lokhttp3/Interceptor;

    .line 44
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 45
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0, v1, p2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->m:Lokhttp3/Interceptor;

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/vungle/ads/internal/network/v;

    invoke-direct {p2}, Lcom/vungle/ads/internal/network/v;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 65
    sget-boolean p2, Lcom/vungle/ads/internal/network/VungleApiClient;->interceptorEnabled:Z

    if-eqz p2, :cond_8b

    .line 66
    sget-object p2, Lcom/vungle/ads/internal/network/VungleApiClient;->logInterceptors:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/Interceptor;

    .line 67
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_65

    .line 69
    :cond_75
    sget-object p2, Lcom/vungle/ads/internal/network/VungleApiClient;->networkInterceptors:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lokhttp3/Interceptor;

    .line 70
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_7b

    .line 73
    :cond_8b
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 74
    new-instance p3, Lcom/vungle/ads/internal/network/u;

    invoke-direct {p3}, Lcom/vungle/ads/internal/network/u;-><init>()V

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 76
    new-instance p3, Lcom/vungle/ads/internal/network/e0;

    invoke-direct {p3, p2}, Lcom/vungle/ads/internal/network/e0;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object p3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    .line 77
    new-instance p2, Lcom/vungle/ads/internal/network/e0;

    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/network/e0;-><init>(Lokhttp3/OkHttpClient;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->d:Lcom/vungle/ads/internal/network/e0;

    return-void
.end method

.method public static a(Lokhttp3/RequestBody;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 373
    :try_start_2
    sget-object v1, Lcom/vungle/ads/internal/network/VungleApiClient;->n:Lkotlinx/serialization/json/Json;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_44

    .line 374
    :try_start_4
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    if-eqz p0, :cond_13

    .line 376
    invoke-virtual {p0, v2}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 378
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    :cond_13
    move-object p0, v0

    .line 383
    :goto_14
    :try_start_14
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 384
    const-class v3, Lcom/vungle/ads/internal/model/u1;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 385
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-interface {v1, v2, p0}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 387
    check-cast p0, Lcom/vungle/ads/internal/model/u1;

    .line 388
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/u1;->c()Lcom/vungle/ads/internal/model/q1;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/q1;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_44

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_40} :catch_44

    if-nez p0, :cond_43

    goto :goto_44

    :cond_43
    move-object v0, p0

    :catch_44
    :cond_44
    :goto_44
    return-object v0
.end method

.method public static final a(Lcom/vungle/ads/internal/network/VungleApiClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 12

    const-string v0, "VungleApiClient"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "chain"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :try_start_14
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    const-string v6, "Retry-After"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10f

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_28} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_75

    if-nez v6, :cond_2c

    goto/16 :goto_10f

    .line 8
    :cond_2c
    :try_start_2c
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_10f

    .line 10
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v5, v8

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 12
    const-string v8, "ads"

    const/4 v9, 0x2

    invoke-static {v7, v8, v4, v9, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 13
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Lokhttp3/RequestBody;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_10f

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_6a} :catch_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_6a} :catch_cd

    goto/16 :goto_10f

    .line 20
    :catch_6c
    :try_start_6c
    sget-boolean v5, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v5, "Retry-After value is not an valid value"

    invoke-static {v0, v5}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6c .. :try_end_73} :catch_cd
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_75

    goto/16 :goto_10f

    :catch_75
    move-exception p1

    .line 27
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 28
    const-string v3, "Exception: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    new-instance p0, Lokhttp3/Response$Builder;

    invoke-direct {p0}, Lokhttp3/Response$Builder;-><init>()V

    .line 190
    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 191
    invoke-virtual {p0, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 192
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 193
    const-string p1, "Server is busy"

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 194
    sget-object p1, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "{\"Error\":\"Server is busy\"}"

    invoke-virtual {p1, v1, v0}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    goto :goto_10f

    .line 196
    :catch_cd
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 197
    const-string p1, "OOM for "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 353
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    sget-object p0, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    new-array p1, v4, [B

    invoke-virtual {p0, p1, v3}, Lokhttp3/ResponseBody$Companion;->create([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object p0

    .line 356
    new-instance p1, Lokhttp3/Response$Builder;

    invoke-direct {p1}, Lokhttp3/Response$Builder;-><init>()V

    .line 357
    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 359
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 360
    const-string v0, "OOM"

    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1, p0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    :cond_10f
    :goto_10f
    return-object p1
.end method

.method public static c(Z)Lcom/vungle/ads/internal/model/t1;
    .registers 10

    .line 42
    new-instance v0, Lcom/vungle/ads/internal/model/t1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/model/t1;-><init>(Lcom/vungle/ads/internal/model/h1;Lcom/vungle/ads/internal/model/x0;Lcom/vungle/ads/internal/model/a1;Lcom/vungle/ads/fpd/FirstPartyData;Lcom/vungle/ads/internal/model/k1;)V

    .line 44
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b()Ljava/lang/String;

    move-result-object v5

    .line 45
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e:Ljava/lang/String;

    if-nez v1, :cond_19

    const-string v1, "no_interaction"

    :cond_19
    move-object v6, v1

    .line 46
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f:Ljava/lang/String;

    const-string v8, ""

    if-nez v1, :cond_22

    move-object v7, v8

    goto :goto_23

    :cond_22
    move-object v7, v1

    .line 47
    :goto_23
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->g:Ljava/lang/Long;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2b
    move-wide v3, v1

    goto :goto_30

    :cond_2d
    const-wide/16 v1, 0x0

    goto :goto_2b

    .line 48
    :goto_30
    new-instance v2, Lcom/vungle/ads/internal/model/h1;

    invoke-direct/range {v2 .. v7}, Lcom/vungle/ads/internal/model/h1;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object v2, v0, Lcom/vungle/ads/internal/model/t1;->a:Lcom/vungle/ads/internal/model/h1;

    .line 50
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->h:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_47

    :cond_41
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->UNKNOWN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_47
    new-instance v2, Lcom/vungle/ads/internal/model/x0;

    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/model/x0;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object v2, v0, Lcom/vungle/ads/internal/model/t1;->b:Lcom/vungle/ads/internal/model/x0;

    .line 53
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->c()Lcom/vungle/ads/internal/privacy/COPPA;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    if-eq v1, v2, :cond_65

    .line 55
    new-instance v1, Lcom/vungle/ads/internal/model/a1;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->c()Lcom/vungle/ads/internal/privacy/COPPA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/COPPA;->getValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/model/a1;-><init>(Ljava/lang/Boolean;)V

    .line 56
    iput-object v1, v0, Lcom/vungle/ads/internal/model/t1;->c:Lcom/vungle/ads/internal/model/a1;

    .line 57
    :cond_65
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->f()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 58
    new-instance v1, Lcom/vungle/ads/internal/model/k1;

    .line 59
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->j:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_78

    const-string v3, "IABTCF_TCString"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    :goto_79
    if-nez v2, :cond_7c

    goto :goto_7d

    :cond_7c
    move-object v8, v2

    .line 60
    :goto_7d
    invoke-direct {v1, v8}, Lcom/vungle/ads/internal/model/k1;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object v1, v0, Lcom/vungle/ads/internal/model/t1;->e:Lcom/vungle/ads/internal/model/k1;

    :cond_82
    if-eqz p0, :cond_88

    .line 62
    sget-object p0, Lcom/vungle/ads/VungleAds;->firstPartyData:Lcom/vungle/ads/fpd/FirstPartyData;

    .line 63
    iput-object p0, v0, Lcom/vungle/ads/internal/model/t1;->d:Lcom/vungle/ads/fpd/FirstPartyData;

    :cond_88
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/vungle/ads/internal/model/c3;
    .registers 13

    .line 4168
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4169
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    .line 4170
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4171
    :cond_1b
    new-instance v2, Lcom/vungle/ads/internal/model/c3;

    .line 4172
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4173
    invoke-static {p1}, Lcom/vungle/ads/internal/platform/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 4174
    const-string p1, "Amazon"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "amazon"

    :goto_40
    move-object v7, p1

    goto :goto_45

    :cond_42
    const-string p1, "android"

    goto :goto_40

    .line 4175
    :goto_45
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v10, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    .line 4176
    invoke-direct/range {v2 .. v10}, Lcom/vungle/ads/internal/model/c3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 4185
    :try_start_4e
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    .line 4186
    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/model/c3;->b(Ljava/lang/String;)V

    .line 4187
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->USER_AGENT_LOAD_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 4188
    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 4189
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    new-instance v1, Lcom/vungle/ads/internal/network/w;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/network/w;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/k2;)V

    check-cast v0, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/platform/c;->a(Lcom/vungle/ads/internal/network/w;)V

    .line 4190
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->g:Lcom/vungle/ads/internal/model/j0;

    if-nez p1, :cond_81

    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->a()Lcom/vungle/ads/internal/model/j0;

    move-result-object p1

    goto :goto_81

    :catch_7e
    move-exception v0

    move-object p1, v0

    goto :goto_84

    :cond_81
    :goto_81
    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->g:Lcom/vungle/ads/internal/model/j0;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_83} :catch_7e

    return-object v2

    .line 4193
    :goto_84
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 4194
    const-string v0, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4918
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4919
    const-string v0, "VungleApiClient"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final declared-synchronized a(Z)Lcom/vungle/ads/internal/model/c3;
    .registers 11

    monitor-enter p0

    .line 4930
    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->f:Lcom/vungle/ads/internal/model/c3;

    if-nez v0, :cond_11

    .line 4932
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/model/c3;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->f:Lcom/vungle/ads/internal/model/c3;

    goto :goto_11

    :catchall_e
    move-exception p1

    goto/16 :goto_248

    .line 4935
    :cond_11
    :goto_11
    invoke-static {v0}, Lcom/vungle/ads/internal/model/c3;->a(Lcom/vungle/ads/internal/model/c3;)Lcom/vungle/ads/internal/model/c3;

    move-result-object v0

    .line 4936
    new-instance v1, Lcom/vungle/ads/internal/model/b3;

    invoke-direct {v1}, Lcom/vungle/ads/internal/model/b3;-><init>()V

    .line 4939
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4941
    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/WindowManager;

    .line 4942
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4943
    :cond_37
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/model/c3;->a(I)V

    .line 4944
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/model/c3;->b(I)V

    .line 4947
    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->g:Lcom/vungle/ads/internal/model/j0;

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast v2, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/platform/c;->a()Lcom/vungle/ads/internal/model/j0;

    move-result-object v2

    :cond_4d
    iput-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->g:Lcom/vungle/ads/internal/model/j0;

    .line 4949
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j0;->a()Ljava/lang/String;

    move-result-object v2

    .line 4950
    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->g:Lcom/vungle/ads/internal/model/j0;

    const/4 v4, 0x0

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j0;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_62

    :cond_61
    move-object v3, v4

    .line 4952
    :goto_62
    sget-object v5, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e()Z

    move-result v5

    if-eqz v5, :cond_89

    if-eqz v2, :cond_84

    .line 4954
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Amazon"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 4955
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/model/b3;->a(Ljava/lang/String;)V

    goto :goto_80

    .line 4957
    :cond_7d
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/model/b3;->f(Ljava/lang/String;)V

    .line 4959
    :goto_80
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/model/c3;->a(Ljava/lang/String;)V

    goto :goto_89

    .line 4961
    :cond_84
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/model/c3;->a(Ljava/lang/String;)V

    :cond_89
    :goto_89
    if-nez p1, :cond_91

    .line 4967
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->e()Z

    move-result p1

    if-nez p1, :cond_9a

    .line 4968
    :cond_91
    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/model/c3;->a(Ljava/lang/String;)V

    .line 4969
    invoke-virtual {v1, v4}, Lcom/vungle/ads/internal/model/b3;->f(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {v1, v4}, Lcom/vungle/ads/internal/model/b3;->a(Ljava/lang/String;)V

    .line 4974
    :cond_9a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_ad

    :cond_a9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_ad
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/model/c3;->a(Ljava/lang/Integer;)V

    .line 4975
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;

    if-nez p1, :cond_be

    .line 4976
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->c:Lcom/vungle/ads/internal/persistence/FilePreferences;

    const-string v5, "isPlaySvcAvailable"

    invoke-virtual {p1, v5}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 4977
    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;

    .line 4979
    :cond_be
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;

    if-nez p1, :cond_c8

    .line 4980
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->d()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;

    .line 4986
    :cond_c8
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;

    if-eqz p1, :cond_d1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_d2

    :cond_d1
    move p1, v2

    .line 4987
    :goto_d2
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->a(Z)V

    .line 4989
    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a()I

    move-result p1

    const/4 v5, 0x2

    if-eq p1, v5, :cond_fe

    .line 4991
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e9

    .line 4992
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->b(Ljava/lang/String;)V

    .line 4994
    :cond_e9
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->c()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_fe

    .line 4995
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->a(Ljava/lang/Integer;)V

    .line 4999
    :cond_fe
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    .line 5001
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5002
    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v4, 0x4

    if-eqz p1, :cond_150

    .line 5008
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 5009
    const-string v8, "scale"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-lez v6, :cond_125

    if-lez v8, :cond_125

    int-to-float v6, v6

    int-to-float v8, v8

    div-float/2addr v6, v8

    .line 5011
    invoke-virtual {v1, v6}, Lcom/vungle/ads/internal/model/b3;->a(F)V

    .line 5013
    :cond_125
    const-string v6, "status"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_14d

    if-eq v6, v5, :cond_135

    const/4 v8, 0x5

    if-eq v6, v8, :cond_135

    .line 5029
    const-string p1, "NOT_CHARGING"

    goto :goto_152

    .line 5030
    :cond_135
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_14a

    if-eq p1, v5, :cond_147

    if-eq p1, v4, :cond_144

    .line 5034
    const-string p1, "BATTERY_PLUGGED_OTHERS"

    goto :goto_152

    .line 5035
    :cond_144
    const-string p1, "BATTERY_PLUGGED_WIRELESS"

    goto :goto_152

    .line 5036
    :cond_147
    const-string p1, "BATTERY_PLUGGED_USB"

    goto :goto_152

    .line 5037
    :cond_14a
    const-string p1, "BATTERY_PLUGGED_AC"

    goto :goto_152

    .line 5038
    :cond_14d
    const-string p1, "UNKNOWN"

    goto :goto_152

    .line 5055
    :cond_150
    const-string p1, "UNKNOWN"

    .line 5057
    :goto_152
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->c(Ljava/lang/String;)V

    .line 5060
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->l()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->a(I)V

    .line 5063
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_169

    .line 5064
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->d(Ljava/lang/String;)V

    .line 5066
    :cond_169
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_172

    .line 5067
    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->e(Ljava/lang/String;)V

    .line 5071
    :cond_172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->i(Ljava/lang/String;)V

    .line 5072
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->h(Ljava/lang/String;)V

    .line 5073
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->j(Ljava/lang/String;)V

    .line 5076
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->k()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->b(F)V

    .line 5077
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->o()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->c(I)V

    .line 5080
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "Amazon"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c0

    .line 5081
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "amazon.hardware.fire_tv"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1d6

    .line 5087
    :cond_1c0
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    const-string v5, "uimode"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v5, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/UiModeManager;

    .line 5088
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p1

    if-ne p1, v4, :cond_1d6

    move v2, v3

    .line 5093
    :cond_1d6
    :goto_1d6
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/model/b3;->b(Z)V

    .line 5110
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/b3;->a()V

    .line 5112
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->m()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->b(I)V

    .line 5114
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->r()Z

    move-result p1

    if-eqz p1, :cond_233

    .line 5115
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->d(Ljava/lang/Long;)V

    .line 5116
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->b(Ljava/lang/Long;)V

    .line 5117
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->c(Ljava/lang/Long;)V

    .line 5118
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->a(Ljava/lang/Long;)V

    .line 5120
    :cond_233
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->b:Lcom/vungle/ads/internal/platform/f;

    check-cast p1, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/platform/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/model/b3;->g(Ljava/lang/String;)V

    .line 5121
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/model/c3;->b(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/model/c3;->a(Lcom/vungle/ads/internal/model/b3;)V
    :try_end_246
    .catchall {:try_start_1 .. :try_end_246} :catchall_e

    monitor-exit p0

    return-object v0

    :goto_248
    :try_start_248
    monitor-exit p0
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_e

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/vungle/ads/internal/network/g;Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/model/d3;
    .registers 18

    move-object v0, p3

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestType"

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    invoke-static {p1}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_1e

    .line 1834
    new-instance v0, Lcom/vungle/ads/internal/model/d3;

    const-string v1, "Invalid URL"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/vungle/ads/internal/model/d3;-><init>(Ljava/lang/String;ZZI)V

    return-object v0

    .line 1841
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_27} :catch_107

    .line 1850
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v2

    .line 1851
    invoke-virtual {v2, v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 1857
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1858
    new-instance v0, Lcom/vungle/ads/internal/model/d3;

    const-string v1, "Clear Text Traffic is blocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/vungle/ads/internal/model/d3;-><init>(Ljava/lang/String;ZZI)V

    return-object v0

    :cond_40
    const/4 v10, 0x2

    .line 1863
    :try_start_41
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->i:Ljava/lang/String;

    if-nez v1, :cond_47

    const-string v1, ""

    :cond_47
    move-object v2, v1

    goto :goto_4c

    :catchall_49
    move-exception v0

    goto/16 :goto_f9

    :goto_4c
    const/4 v11, 0x0

    if-eqz v0, :cond_5f

    .line 1864
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v6, "application/json"

    invoke-virtual {v5, v6}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v1, p3, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    move-object v6, v0

    goto :goto_60

    :cond_5f
    move-object v6, v11

    .line 1865
    :goto_60
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/network/e0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/network/g;Ljava/util/Map;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/m;->a()Lcom/vungle/ads/internal/network/o;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 1867
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/o;->c()Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_76

    :cond_75
    return-object v11

    :cond_76
    :goto_76
    if-eqz v0, :cond_87

    .line 1868
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/o;->e()Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_88

    :cond_87
    move-object v1, v11

    :goto_88
    const/16 v2, 0x12d

    .line 1869
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x133

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x134

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 1870
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 1871
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->NOTIFICATION_REDIRECT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    const-wide/16 v3, 0x0

    const/4 v7, 0x2

    move-object v6, p1

    move-object/from16 v5, p5

    .line 1872
    invoke-static/range {v1 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    return-object v11

    .line 1879
    :cond_bc
    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0x1f4

    const/16 v4, 0x257

    invoke-direct {v2, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v1, :cond_d3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_d3

    move v2, v8

    goto :goto_d4

    :cond_d3
    move v2, v9

    .line 1880
    :goto_d4
    new-instance v3, Lcom/vungle/ads/internal/model/d3;

    .line 1881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsuccessful response, error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/o;->d()Ljava/lang/String;

    move-result-object v11

    :cond_ee
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1882
    invoke-direct {v3, v0, v9, v2, v10}, Lcom/vungle/ads/internal/model/d3;-><init>(Ljava/lang/String;ZZI)V
    :try_end_f8
    .catchall {:try_start_41 .. :try_end_f8} :catchall_49

    return-object v3

    .line 1888
    :goto_f9
    new-instance v1, Lcom/vungle/ads/internal/model/d3;

    .line 1889
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_103

    const-string v0, "IOException"

    .line 1890
    :cond_103
    invoke-direct {v1, v0, v9, v8, v10}, Lcom/vungle/ads/internal/model/d3;-><init>(Ljava/lang/String;ZZI)V

    return-object v1

    :catch_107
    move-exception v0

    .line 1891
    new-instance v1, Lcom/vungle/ads/internal/model/d3;

    .line 1892
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_112

    const-string v0, "MalformedURLException"

    .line 1893
    :cond_112
    invoke-direct {v1, v0, v8, v9, v2}, Lcom/vungle/ads/internal/model/d3;-><init>(Ljava/lang/String;ZZI)V

    return-object v1
.end method

.method public final a(ZZ)Lcom/vungle/ads/internal/model/u1;
    .registers 10

    const/4 v0, 0x0

    .line 4924
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Z)Lcom/vungle/ads/internal/model/c3;

    move-result-object v2

    .line 4925
    invoke-static {p2}, Lcom/vungle/ads/internal/network/VungleApiClient;->c(Z)Lcom/vungle/ads/internal/model/t1;

    move-result-object v4

    .line 4926
    new-instance v1, Lcom/vungle/ads/internal/model/u1;

    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->h:Lcom/vungle/ads/internal/model/m0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4927
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/model/u1;-><init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;Lcom/vungle/ads/internal/model/n1;Lcom/vungle/ads/internal/model/q1;)V

    .line 4928
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->b(Z)Lcom/vungle/ads/internal/model/n1;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 4929
    iput-object p1, v1, Lcom/vungle/ads/internal/model/u1;->d:Lcom/vungle/ads/internal/model/n1;

    :cond_1a
    return-object v1
.end method

.method public final a()Lcom/vungle/ads/internal/network/m;
    .registers 7

    .line 397
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->h:Lcom/vungle/ads/internal/model/m0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 399
    :cond_6
    new-instance v2, Lcom/vungle/ads/internal/model/u1;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Z)Lcom/vungle/ads/internal/model/c3;

    move-result-object v3

    const/4 v4, 0x0

    .line 400
    invoke-static {v4}, Lcom/vungle/ads/internal/network/VungleApiClient;->c(Z)Lcom/vungle/ads/internal/model/t1;

    move-result-object v5

    .line 401
    invoke-direct {v2, v3, v0, v5}, Lcom/vungle/ads/internal/model/u1;-><init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;)V

    .line 402
    invoke-virtual {p0, v4}, Lcom/vungle/ads/internal/network/VungleApiClient;->b(Z)Lcom/vungle/ads/internal/model/n1;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 403
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/model/u1;->a(Lcom/vungle/ads/internal/model/n1;)V

    .line 406
    :cond_1e
    sget-object v0, Lcom/vungle/ads/internal/util/o;->a:Lcom/vungle/ads/internal/util/n;

    sget-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->BASE_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2b

    :cond_29
    const-string v0, "https://config.ads.vungle.com/"

    .line 407
    :goto_2b
    const-string v3, "/"

    const/4 v5, 0x2

    invoke-static {v0, v3, v4, v5, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_45
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "config"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v2}, Lcom/vungle/ads/internal/network/e0;->b(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/ads/internal/model/q1;)Lcom/vungle/ads/internal/network/m;
    .registers 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1820
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 1821
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    goto :goto_42

    .line 1824
    :cond_18
    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->h:Lcom/vungle/ads/internal/model/m0;

    if-nez v2, :cond_1d

    return-object v1

    :cond_1d
    const/4 v1, 0x0

    .line 1825
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Z)Lcom/vungle/ads/internal/model/c3;

    move-result-object v3

    .line 1826
    invoke-static {v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->c(Z)Lcom/vungle/ads/internal/model/t1;

    move-result-object v4

    .line 1827
    new-instance v5, Lcom/vungle/ads/internal/model/u1;

    invoke-direct {v5, v3, v2, v4}, Lcom/vungle/ads/internal/model/u1;-><init>(Lcom/vungle/ads/internal/model/c3;Lcom/vungle/ads/internal/model/m0;Lcom/vungle/ads/internal/model/t1;)V

    .line 1828
    invoke-virtual {v5, p1}, Lcom/vungle/ads/internal/model/u1;->a(Lcom/vungle/ads/internal/model/q1;)V

    .line 1829
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->b(Z)Lcom/vungle/ads/internal/model/n1;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 1830
    invoke-virtual {v5, p1}, Lcom/vungle/ads/internal/model/u1;->a(Lcom/vungle/ads/internal/model/n1;)V

    .line 1832
    :cond_37
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5}, Lcom/vungle/ads/internal/network/e0;->c(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;

    move-result-object p1

    return-object p1

    :cond_42
    :goto_42
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/VungleCSBData;Ljava/lang/String;)Lcom/vungle/ads/internal/network/m;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "placement"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->e()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->t()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->d()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(ZZ)Lcom/vungle/ads/internal/model/u1;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p3, :cond_8c

    .line 444
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getExtras()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_65

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_30

    goto :goto_31

    :cond_30
    move-object v5, v4

    :goto_31
    if-eqz v5, :cond_65

    .line 1109
    new-instance v6, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v6}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1111
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1112
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1113
    invoke-static {v7}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_40

    .line 1779
    :cond_60
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v5

    goto :goto_66

    :cond_65
    move-object v5, v4

    .line 1780
    :goto_66
    new-instance v6, Lcom/vungle/ads/internal/model/d1;

    .line 1781
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getBidFloor()D

    move-result-wide v7

    .line 1782
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getPhase()I

    move-result v9

    .line 1783
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->isVXWinner()Z

    move-result v10

    .line 1784
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getAuctionId()Ljava/lang/String;

    move-result-object v11

    .line 1785
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getCreativeId()Ljava/lang/String;

    move-result-object v12

    .line 1786
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/ads/VungleCSBData;->getAdUnitId()Ljava/lang/String;

    move-result-object v13

    if-eqz v5, :cond_86

    .line 1787
    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_86
    move-object v14, v4

    .line 1788
    invoke-direct/range {v6 .. v14}, Lcom/vungle/ads/internal/model/d1;-><init>(DIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v6

    goto :goto_8d

    :cond_8c
    move-object v14, v4

    .line 1801
    :goto_8d
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 1802
    new-instance v7, Lcom/vungle/ads/internal/model/q1;

    const/4 v13, 0x0

    const/16 v15, 0x7a

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p4

    invoke-direct/range {v7 .. v15}, Lcom/vungle/ads/internal/model/q1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;I)V

    if-eqz p2, :cond_b0

    .line 1808
    new-instance v2, Lcom/vungle/ads/internal/model/u0;

    .line 1809
    invoke-virtual/range {p2 .. p2}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result v4

    .line 1810
    invoke-virtual/range {p2 .. p2}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v5

    .line 1811
    invoke-direct {v2, v4, v5}, Lcom/vungle/ads/internal/model/u0;-><init>(II)V

    invoke-virtual {v7, v2}, Lcom/vungle/ads/internal/model/q1;->a(Lcom/vungle/ads/internal/model/u0;)V

    .line 1817
    :cond_b0
    invoke-virtual {v3, v7}, Lcom/vungle/ads/internal/model/u1;->a(Lcom/vungle/ads/internal/model/q1;)V

    .line 1819
    iget-object v2, v0, Lcom/vungle/ads/internal/network/VungleApiClient;->d:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1, v3}, Lcom/vungle/ads/internal/network/e0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;Ljava/lang/String;)Lcom/vungle/ads/internal/network/m;
    .registers 15

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->t()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->d()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(ZZ)Lcom/vungle/ads/internal/model/u1;

    move-result-object v1

    .line 419
    new-instance v2, Lcom/vungle/ads/internal/model/q1;

    .line 420
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    const/16 v10, 0xfa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p3

    .line 421
    invoke-direct/range {v2 .. v10}, Lcom/vungle/ads/internal/model/q1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;I)V

    if-eqz p2, :cond_3c

    .line 426
    new-instance p1, Lcom/vungle/ads/internal/model/u0;

    .line 427
    invoke-virtual {p2}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result p3

    .line 428
    invoke-virtual {p2}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result p2

    .line 429
    invoke-direct {p1, p3, p2}, Lcom/vungle/ads/internal/model/u0;-><init>(II)V

    invoke-virtual {v2, p1}, Lcom/vungle/ads/internal/model/q1;->a(Lcom/vungle/ads/internal/model/u0;)V

    .line 435
    :cond_3c
    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/model/u1;->a(Lcom/vungle/ads/internal/model/q1;)V

    .line 437
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->d:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/vungle/ads/internal/network/e0;->a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vungle/ads/internal/w;)V
    .registers 8

    const-string v0, "errors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3024
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->h()Ljava/lang/String;

    move-result-object v0

    .line 3025
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 3026
    invoke-virtual {p2}, Lcom/vungle/ads/internal/w;->a()V

    return-void

    .line 3031
    :cond_1d
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 3522
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 3523
    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->k:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/signals/j;

    .line 3524
    invoke-virtual {v3}, Lcom/vungle/ads/internal/signals/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setSessionId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 3525
    sget-object v3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->getPlacementReferenceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/model/j3;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 3526
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j3;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_58

    const-string v3, ""

    :cond_58
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setPlacementType(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 3528
    :cond_5b
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 3529
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setConnectionType(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 3531
    :cond_64
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 3532
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;->setConnectionTypeDetail(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;

    .line 3536
    :cond_6d
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError;

    .line 3537
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3538
    const-string v3, "Sending Error: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4142
    invoke-virtual {v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError;->getReason()Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VungleApiClient"

    invoke-static {v4, v3}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 4148
    :cond_8f
    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$Builder;->addAllErrors(Ljava/lang/Iterable;)Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$SDKErrorBatch;

    .line 4151
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 4152
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    const-string v3, "batch.toByteArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4154
    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/x-protobuf"

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 4156
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    array-length p1, p1

    const/4 v4, 0x0

    .line 4157
    invoke-virtual {v1, v2, v3, v4, p1}, Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;

    move-result-object p1

    .line 4163
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/vungle/ads/internal/network/e0;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;

    move-result-object p1

    .line 4164
    new-instance v0, Lcom/vungle/ads/internal/network/x;

    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/network/x;-><init>(Lcom/vungle/ads/internal/w;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/a;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vungle/ads/internal/x;)V
    .registers 11

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1894
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 1895
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1896
    invoke-virtual {p2}, Lcom/vungle/ads/internal/x;->a()V

    return-void

    .line 1901
    :cond_1d
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 2439
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 2440
    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->k:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/signals/j;

    .line 2441
    invoke-virtual {v3}, Lcom/vungle/ads/internal/signals/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setSessionId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 2442
    sget-object v3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->getPlacementReferenceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vungle/ads/internal/ConfigManager;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/model/j3;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 2443
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j3;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_58

    const-string v3, ""

    :cond_58
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setPlacementType(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 2445
    :cond_5b
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 2446
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setConnectionType(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 2448
    :cond_64
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 2449
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;->setConnectionTypeDetail(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;

    .line 2452
    :cond_6d
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;

    .line 2453
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 2454
    const-string v3, "Sending Metric: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3008
    invoke-virtual {v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;->getType()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VungleApiClient"

    invoke-static {v4, v3}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 3014
    :cond_8f
    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$Builder;->addAllMetrics(Ljava/lang/Iterable;)Lcom/vungle/ads/internal/protos/Sdk$MetricBatch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/protos/Sdk$MetricBatch;

    .line 3017
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/x-protobuf"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v3

    const-string p1, "batch.toByteArray()"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;Lokhttp3/MediaType;[BIIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 3019
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Lcom/vungle/ads/internal/network/e0;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;

    move-result-object p1

    .line 3020
    new-instance v0, Lcom/vungle/ads/internal/network/y;

    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/network/y;-><init>(Lcom/vungle/ads/internal/x;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    const-string v0, "placementID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    .line 392
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    const/4 p1, 0x1

    return p1

    .line 396
    :cond_20
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)J
    .registers 4

    const-string v0, "placementID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Z)Lcom/vungle/ads/internal/model/n1;
    .registers 6

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getConfigExtension()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->c:Lcom/vungle/ads/internal/persistence/FilePreferences;

    const-string v1, "config_extension"

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const/4 v1, 0x0

    if-nez p1, :cond_1b

    :goto_19
    move-object p1, v1

    goto :goto_42

    .line 5
    :cond_1b
    :try_start_1b
    iget-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->k:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/signals/j;

    .line 6
    invoke-virtual {p1}, Lcom/vungle/ads/internal/signals/j;->a()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_28

    goto :goto_42

    :catch_28
    move-exception p1

    .line 8
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 9
    const-string v2, "Couldn\'t convert signals for sending. Error: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 953
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VungleApiClient"

    invoke-static {v2, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :goto_42
    if-eqz v0, :cond_4a

    .line 957
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_53

    :cond_4a
    if-eqz p1, :cond_65

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_53

    goto :goto_65

    .line 961
    :cond_53
    new-instance v1, Lcom/vungle/ads/internal/model/n1;

    .line 964
    sget-object v2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 965
    invoke-direct {v1, v0, p1, v2}, Lcom/vungle/ads/internal/model/n1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_65
    :goto_65
    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 969
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    .line 970
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_44

    .line 976
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 977
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 979
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_38

    const/16 v1, 0x9

    if-eq v0, v1, :cond_35

    .line 987
    const-string v0, "UNKNOWN"

    return-object v0

    .line 988
    :cond_35
    const-string v0, "ETHERNET"

    return-object v0

    .line 989
    :cond_38
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 995
    :cond_3b
    const-string v0, "WIFI"

    return-object v0

    .line 996
    :cond_3e
    const-string v0, "MOBILE"

    return-object v0

    .line 1004
    :cond_41
    const-string v0, "NONE"

    return-object v0

    :cond_44
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    .line 65
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5b

    .line 71
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "unknown"

    if-eqz v0, :cond_5a

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_57

    const/4 v2, 0x2

    if-eq v0, v2, :cond_54

    const/16 v2, 0x14

    if-eq v0, v2, :cond_51

    packed-switch v0, :pswitch_data_5e

    packed-switch v0, :pswitch_data_6e

    return-object v1

    .line 77
    :pswitch_36
    const-string v0, "hrpd"

    return-object v0

    .line 84
    :pswitch_39
    const-string v0, "lte"

    return-object v0

    .line 85
    :pswitch_3c
    const-string v0, "cdma_evdo_b"

    return-object v0

    .line 88
    :pswitch_3f
    const-string v0, "hsupa"

    return-object v0

    .line 89
    :pswitch_42
    const-string v0, "hsdpa"

    return-object v0

    .line 90
    :pswitch_45
    const-string v0, "cdma_1xrtt"

    return-object v0

    .line 95
    :pswitch_48
    const-string v0, "cdma_evdo_a"

    return-object v0

    .line 96
    :pswitch_4b
    const-string v0, "cdma_evdo_0"

    return-object v0

    .line 97
    :pswitch_4e
    const-string v0, "wcdma"

    return-object v0

    .line 76
    :cond_51
    const-string v0, "5g"

    return-object v0

    .line 98
    :cond_54
    const-string v0, "edge"

    return-object v0

    .line 103
    :cond_57
    const-string v0, "gprs"

    return-object v0

    :cond_5a
    return-object v1

    :cond_5b
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x4
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0xc
        :pswitch_3c
        :pswitch_39
        :pswitch_36
    .end packed-switch
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/internal/network/f0;->a(Ljava/lang/String;)V

    .line 4
    const-string v0, "1.0"
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2d

    .line 7
    :try_start_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2f

    .line 8
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 10
    invoke-static {v3, v4}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline4;->m(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 11
    invoke-static {v1, v2, v3}, Lads_mobile_sdk/o21$$ExternalSyntheticApiModelOutline5;->m(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 12
    const-string v2, "{\n                    ap\u2026      )\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_45

    :catchall_2d
    move-exception p1

    goto :goto_72

    .line 18
    :cond_2f
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 21
    const-string v2, "{\n                    ap\u2026      )\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :goto_45
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "packageInfo.versionName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4c} :catch_4d
    .catchall {:try_start_b .. :try_end_4c} :catchall_2d

    move-object v0, v1

    .line 30
    :catch_4d
    :try_start_4d
    invoke-static {v0}, Lcom/vungle/ads/internal/network/f0;->b(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/model/c3;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->f:Lcom/vungle/ads/internal/model/c3;

    .line 36
    new-instance v1, Lcom/vungle/ads/internal/model/m0;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applicationContext.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, p1}, Lcom/vungle/ads/internal/model/m0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object v1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->h:Lcom/vungle/ads/internal/model/m0;

    .line 41
    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient;->d()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->j:Ljava/lang/Boolean;
    :try_end_70
    .catchall {:try_start_4d .. :try_end_70} :catchall_2d

    monitor-exit p0

    return-void

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_2d

    throw p1
.end method

.method public final d()Ljava/lang/Boolean;
    .registers 7

    const-string v0, "isPlaySvcAvailable"

    const-string v1, "VungleApiClient"

    const/4 v2, 0x0

    .line 3
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    const-string v4, "getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_1d} :catch_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_27

    .line 7
    :try_start_1d
    iget-object v5, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->c:Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {v5, v3, v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(ZLjava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V
    :try_end_26
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1d .. :try_end_26} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_28

    return-object v4

    :catch_27
    const/4 v4, 0x0

    .line 8
    :catch_28
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "Unexpected exception from Play services lib."

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 9
    :catch_30
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "Play services Not available"

    invoke-static {v1, v3}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    :try_start_39
    iget-object v3, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->c:Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {v3, v2, v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->a(ZLjava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->b()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_4a

    .line 14
    :catch_43
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "Failure to write GPS availability to DB"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    return-object v4
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    const-string v0, "adMarkup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://events.ads.vungle.com/rtadebugging"

    const-string v1, "endpoint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient;->e:Lcom/vungle/ads/internal/network/e0;

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/e0;->a(Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/network/z;

    invoke-direct {v0}, Lcom/vungle/ads/internal/network/z;-><init>()V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/a;)V

    return-void
.end method

###### Class com.vungle.ads.internal.network.VungleApiClient$$ExternalSyntheticLambda0 (com.vungle.ads.internal.network.VungleApiClient$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/network/VungleApiClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/VungleApiClient$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/VungleApiClient$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Lcom/vungle/ads/internal/network/VungleApiClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
