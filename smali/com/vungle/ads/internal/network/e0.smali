###### Class com.vungle.ads.internal.network.e0 (com.vungle.ads.internal.network.e0)
.class public final Lcom/vungle/ads/internal/network/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lkotlinx/serialization/json/Json;

.field public static final d:Lkotlin/text/Regex;


# instance fields
.field public final a:Lokhttp3/Call$Factory;

.field public final b:Lcom/vungle/ads/internal/network/converters/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/network/b0;->a:Lcom/vungle/ads/internal/network/b0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/network/e0;->c:Lkotlinx/serialization/json/Json;

    .line 11
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^\\t\\x20-\\x7E]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/ads/internal/network/e0;->d:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 3

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    .line 2
    new-instance p1, Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {p1}, Lcom/vungle/ads/internal/network/converters/b;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    return-void
.end method

.method public static final synthetic a()Lkotlin/text/Regex;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/network/e0;->d:Lkotlin/text/Regex;

    return-object v0
.end method

.method public static a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;
    .registers 8

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object p3, v1

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    move-object p4, v1

    .line 2
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 5
    invoke-static {p1}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "User-Agent"

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 6
    const-string p1, "Vungle-Version"

    const-string p2, "7.1.0"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 7
    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    if-eqz p4, :cond_71

    .line 8
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 152
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 155
    :try_start_58
    invoke-static {p4}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p5, p4}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_40

    .line 157
    :catch_60
    sget-boolean p4, Lcom/vungle/ads/internal/util/v;->a:Z

    sget-object p4, Lcom/vungle/ads/internal/network/d0;->a:Lcom/vungle/ads/internal/network/d0;

    const-string p5, "VungleApiImpl"

    invoke-static {p5, p4}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_40

    .line 160
    :cond_6a
    invoke-virtual {p1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    :cond_71
    if-eqz p3, :cond_7c

    .line 161
    invoke-static {p3}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Vungle-Placement-Ref-Id"

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 162
    :cond_7c
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8b

    .line 163
    invoke-static {p1}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-VUNGLE-APP-VERSION"

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 164
    :cond_8b
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 165
    invoke-static {p1}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Vungle-App-Id"

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_9a
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;
    .registers 12

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 166
    :try_start_10
    sget-object v1, Lcom/vungle/ads/internal/network/e0;->c:Lkotlinx/serialization/json/Json;

    .line 247
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 248
    const-class v3, Lcom/vungle/ads/internal/model/u1;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 249
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-interface {v1, v2, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/u1;->c()Lcom/vungle/ads/internal/model/q1;

    move-result-object p3

    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/q1;->a()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3f

    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_3d

    move-object v5, p3

    goto :goto_40

    :catch_3d
    move-object v2, p0

    goto :goto_6f

    :cond_3f
    move-object v5, v0

    :goto_40
    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 253
    :try_start_46
    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/internal/network/e0;->a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 254
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p2, v1, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 257
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, v2, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p3, Lcom/vungle/ads/internal/network/converters/d;

    const-class v1, Lcom/vungle/ads/internal/model/i0;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/vungle/ads/internal/network/converters/d;-><init>(Lkotlin/reflect/KType;)V

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6e} :catch_6f

    return-object p2

    :catch_6f
    :goto_6f
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/network/g;Ljava/util/Map;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;
    .registers 15

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 258
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/network/e0;->a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 259
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_41

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3b

    if-nez p5, :cond_32

    .line 266
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 p2, 0x0

    new-array v3, p2, [B

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p5

    .line 267
    :cond_32
    invoke-virtual {p1, p5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    goto :goto_49

    :cond_3b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 268
    :cond_41
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 277
    :goto_49
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, v1, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p3, v1, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V

    return-object p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;
    .registers 5

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    .line 279
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    .line 280
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 281
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 282
    invoke-static {p1}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 283
    const-string p2, "Vungle-Version"

    const-string v0, "7.1.0"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 284
    const-string p2, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 285
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 286
    invoke-static {p2}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Vungle-App-Id"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 287
    :cond_4f
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5e

    .line 288
    invoke-static {p2}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-VUNGLE-APP-VERSION"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 289
    :cond_5e
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 291
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, p0, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p3, p0, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V

    return-object p2
.end method

.method public final a(Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;
    .registers 9

    const-string v0, "path"

    const-string v1, "https://events.ads.vungle.com/rtadebugging"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0xc

    const-string v2, "debug"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/network/e0;->a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 297
    new-instance v0, Lcom/vungle/ads/internal/network/m;

    iget-object v2, v1, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {v2, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object v2, v1, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {v0, p1, v2}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;
    .registers 11

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_10
    sget-object v1, Lcom/vungle/ads/internal/network/e0;->c:Lkotlinx/serialization/json/Json;

    .line 93
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 94
    const-class v3, Lcom/vungle/ads/internal/model/u1;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 95
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {v1, v2, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_59

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 97
    :try_start_30
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/network/e0;->a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 98
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p2, p3, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 101
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, v1, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p3, Lcom/vungle/ads/internal/network/converters/d;

    const-class v2, Lcom/vungle/ads/internal/model/w2;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-direct {p3, v2}, Lcom/vungle/ads/internal/network/converters/d;-><init>(Lkotlin/reflect/KType;)V

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_58} :catch_5a

    return-object p2

    :catch_59
    move-object v1, p0

    :catch_5a
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lcom/vungle/ads/internal/network/m;
    .registers 5

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    .line 104
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 105
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 106
    invoke-static {p1}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "User-Agent"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 107
    const-string p2, "Vungle-Version"

    const-string v0, "7.1.0"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 108
    const-string p2, "Content-Type"

    const-string v0, "application/x-protobuf"

    invoke-virtual {p1, p2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 109
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 110
    invoke-static {p2}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Vungle-App-Id"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 111
    :cond_4f
    invoke-static {}, Lcom/vungle/ads/internal/network/f0;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5e

    .line 112
    invoke-static {p2}, Lcom/vungle/ads/internal/network/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-VUNGLE-APP-VERSION"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 113
    :cond_5e
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 115
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, p0, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p3, p0, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/u1;)Lcom/vungle/ads/internal/network/m;
    .registers 11

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_10
    sget-object v1, Lcom/vungle/ads/internal/network/e0;->c:Lkotlinx/serialization/json/Json;

    .line 70
    invoke-interface {v1}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 71
    const-class v3, Lcom/vungle/ads/internal/model/u1;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 72
    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {v1, v2, p3}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_50

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 74
    :try_start_30
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/network/e0;->a(Lcom/vungle/ads/internal/network/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 75
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p2, p3, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/vungle/ads/internal/network/m;

    iget-object p3, v1, Lcom/vungle/ads/internal/network/e0;->a:Lokhttp3/Call$Factory;

    invoke-interface {p3, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iget-object p3, v1, Lcom/vungle/ads/internal/network/e0;->b:Lcom/vungle/ads/internal/network/converters/b;

    invoke-direct {p2, p1, p3}, Lcom/vungle/ads/internal/network/m;-><init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4f} :catch_51

    return-object p2

    :catch_50
    move-object v1, p0

    :catch_51
    return-object v0
.end method
