###### Class com.vungle.ads.internal.network.m (com.vungle.ads.internal.network.m)
.class public final Lcom/vungle/ads/internal/network/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lokhttp3/Call;

.field public final b:Lcom/vungle/ads/internal/network/converters/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/network/h;

    .line 1
    invoke-direct {v0}, Lcom/vungle/ads/internal/network/h;-><init>()V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V
    .registers 4

    const-string v0, "rawCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/network/m;->a:Lokhttp3/Call;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/network/m;->b:Lcom/vungle/ads/internal/network/converters/a;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/network/m;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/network/m;->a(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/network/o;
    .registers 4

    .line 10
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/m;->a:Lokhttp3/Call;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_48

    monitor-exit p0

    .line 14
    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/m;->a(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    goto :goto_20

    :catchall_15
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    :goto_20
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3e

    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 16
    const-string v2, "[execute] Failed to parse response:  "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OkHttpCall"

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v0, 0x0

    :cond_45
    check-cast v0, Lcom/vungle/ads/internal/network/o;

    return-object v0

    :catchall_48
    move-exception v0

    .line 107
    monitor-exit p0

    throw v0
.end method

.method public final a(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;
    .registers 9

    .line 115
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 118
    :cond_8
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    .line 119
    new-instance v2, Lcom/vungle/ads/internal/network/k;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/vungle/ads/internal/network/k;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_53

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2e

    goto :goto_53

    :cond_2e
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_4b

    const/16 v3, 0xcd

    if-eq v2, v3, :cond_4b

    .line 133
    new-instance v1, Lcom/vungle/ads/internal/network/j;

    invoke-direct {v1, v0}, Lcom/vungle/ads/internal/network/j;-><init>(Lokhttp3/ResponseBody;)V

    .line 135
    :try_start_3b
    iget-object v0, p0, Lcom/vungle/ads/internal/network/m;->b:Lcom/vungle/ads/internal/network/converters/a;

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/converters/a;->a(Lcom/vungle/ads/internal/network/j;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/n;->a(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_46

    return-object p1

    :catchall_46
    move-exception p1

    .line 140
    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/j;->a()V

    .line 141
    throw p1

    .line 142
    :cond_4b
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 143
    invoke-static {v1, p1}, Lcom/vungle/ads/internal/network/n;->a(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object p1

    return-object p1

    .line 144
    :cond_53
    :goto_53
    :try_start_53
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 145
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3, v2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 146
    sget-object v3, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    invoke-virtual {v3, v2, v4, v5, v6}, Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    .line 147
    invoke-static {p1}, Lcom/vungle/ads/internal/network/n;->a(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/o;

    move-result-object p1
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_74

    .line 148
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_74
    move-exception p1

    :try_start_75
    throw p1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/vungle/ads/internal/network/a;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/vungle/ads/internal/network/m;->a:Lokhttp3/Call;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_14

    monitor-exit p0

    .line 7
    new-instance v1, Lcom/vungle/ads/internal/network/l;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/network/l;-><init>(Lcom/vungle/ads/internal/network/m;Lcom/vungle/ads/internal/network/a;)V

    .line 8
    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :catchall_14
    move-exception p1

    .line 9
    monitor-exit p0

    throw p1
.end method
