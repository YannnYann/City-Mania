###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/NetworkRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;,
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;,
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequestPermissionRequest(Ljava/lang/String;Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/bidmachine/util/network/NetworkRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/model/EventType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskBucketParams;",
            ">;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "*>;"
        }
    .end annotation

    const-string v0, "sourceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTaskBucketParamsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/util/network/NetworkRequest$Builder;

    sget-object v1, Lio/bidmachine/util/network/Method;->Post:Lio/bidmachine/util/network/Method;

    invoke-direct {v0, p5, v1}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;)V

    .line 3
    new-instance p5, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;

    invoke-direct {p5, p2, p1, p3, p4}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;-><init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0, p5}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setRequestProcessor(Lio/bidmachine/util/network/RequestProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 12
    new-instance p2, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;

    invoke-direct {p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;-><init>()V

    invoke-virtual {p1, p2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setResponseProcessor(Lio/bidmachine/util/network/ResponseProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 13
    new-instance p2, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;

    invoke-direct {p2, p6}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/bidmachine/util/network/NetworkRequest$Builder;->setListener(Lio/bidmachine/util/network/NetworkRequest$Listener;)Lio/bidmachine/util/network/NetworkRequest$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/util/network/NetworkRequest$Builder;->build()Lio/bidmachine/util/network/NetworkRequest;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder.a (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder$a)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/network/NetworkRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 1
    :try_start_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->getResponse()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Response;->getTaskBucketsList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-static {p1}, Lio/bidmachine/internal/h;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    :cond_13
    const/4 p1, 0x0

    .line 3
    :goto_14
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onError(Lio/bidmachine/util/network/NetworkError;)V
    .registers 3

    const-string v0, "networkError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;->a:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$a;->a(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder.b (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder$b)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/network/ProtoRequestProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/EventType;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTaskBucketParamsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->a:Lio/bidmachine/rendering/model/EventType;

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request;->newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->a:Lio/bidmachine/rendering/model/EventType;

    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Lio/bidmachine/rendering/model/EventType;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setEventName(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setEventSource(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->d:Ljava/util/List;

    invoke-static {v1}, Lio/bidmachine/internal/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->addAllTaskBuckets(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    move-result-object v0

    const-string v1, "newBuilder()\n           \u2026pToEventTaskBucketList())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$b;->c:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 6
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;->setEventValue(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;

    .line 8
    :cond_2a
    invoke-static {}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->newBuilder()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->setRequest(Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Request$Builder;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission$Builder;->build()Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder.c (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingNetworkRequestBuilder$c)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/network/ResponseProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/util/network/ByteResponseProcessor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/util/network/ByteResponseProcessor;

    invoke-direct {v0}, Lio/bidmachine/util/network/ByteResponseProcessor;-><init>()V

    iput-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;->a:Lio/bidmachine/util/network/ByteResponseProcessor;

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URLConnection;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;
    .registers 3

    const-string v0, "urlConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;->a:Lio/bidmachine/util/network/ByteResponseProcessor;

    invoke-virtual {v0, p1}, Lio/bidmachine/util/network/ByteResponseProcessor;->process(Ljava/net/URLConnection;)[B

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;->parseFrom([B)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object p1

    const-string v0, "parseFrom(byteResponsePr\u2026r.process(urlConnection))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic process(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder$c;->a(Ljava/net/URLConnection;)Lio/bidmachine/protobuf/rendering/RenderingTaskPermission;

    move-result-object p1

    return-object p1
.end method
