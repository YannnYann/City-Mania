###### Class io.bidmachine.rendering.utils.NetworkRequest (io.bidmachine.rendering.utils.NetworkRequest)
.class public Lio/bidmachine/rendering/utils/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/utils/NetworkRequest$Method;,
        Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;,
        Lio/bidmachine/rendering/utils/NetworkRequest$UrlConnectionProcessor;,
        Lio/bidmachine/rendering/utils/NetworkRequest$DataRetriever;,
        Lio/bidmachine/rendering/utils/NetworkRequest$Listener;,
        Lio/bidmachine/rendering/utils/NetworkRequest$b;,
        Lio/bidmachine/rendering/utils/NetworkRequest$Builder;,
        Lio/bidmachine/rendering/utils/NetworkRequest$StringProcessor;,
        Lio/bidmachine/rendering/utils/NetworkRequest$ByteArrayProcessor;,
        Lio/bidmachine/rendering/utils/NetworkRequest$ResponseTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final m:Lio/bidmachine/util/taskmanager/TaskManager;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

.field public final j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

.field public k:Lio/bidmachine/util/taskmanager/TaskManager;

.field public l:Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/NetworkRequest;->m:Lio/bidmachine/util/taskmanager/TaskManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/utils/NetworkRequest$UrlConnectionProcessor;Lio/bidmachine/rendering/utils/NetworkRequest$DataRetriever;Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;Lio/bidmachine/rendering/utils/NetworkRequest$Listener;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "method",
            "headers",
            "queryParameters",
            "connectTimeout",
            "readTimeout",
            "urlConnectionProcessor",
            "requestDataRetriever",
            "responseProcessor",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$UrlConnectionProcessor;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$DataRetriever;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor<",
            "TResponseType;>;",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Listener<",
            "TResponseType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 4
    iput-object p5, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    .line 5
    iput-object p6, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    .line 6
    iput-object p9, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

    .line 7
    iput-object p3, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->c:Ljava/util/Map;

    .line 8
    iput-object p4, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->d:Ljava/util/Map;

    .line 11
    iput-object p10, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/utils/NetworkRequest;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :try_start_6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_90

    const/4 p1, 0x0

    .line 6
    :try_start_d
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 8
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    invoke-virtual {p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :catchall_42
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_91

    .line 20
    :cond_47
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_5a

    .line 21
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 23
    :cond_5a
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_6d

    .line 24
    iget-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 32
    :cond_6d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    packed-switch p1, :pswitch_data_96

    :pswitch_74
    goto :goto_8f

    .line 40
    :pswitch_75
    const-string p1, "Location"

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-static {p1}, Lio/bidmachine/util/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 42
    invoke-static {v0}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 43
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_8e
    .catchall {:try_start_d .. :try_end_8e} :catchall_42

    return-object p1

    :cond_8f
    :goto_8f
    return-object v0

    :catchall_90
    move-exception v0

    .line 49
    :goto_91
    invoke-static {p1}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 50
    throw v0

    nop

    :pswitch_data_96
    .packed-switch 0x12d
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_74
        :pswitch_75
        :pswitch_74
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->k:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 64
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->l:Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;

    return-void
.end method

.method public final a(Lio/bidmachine/util/Error;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

    if-eqz v0, :cond_7

    .line 62
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Listener;->onError(Lio/bidmachine/util/Error;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

    if-eqz v0, :cond_7

    .line 60
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Listener;->onSuccess(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final b()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->d:Ljava/util/Map;

    invoke-static {v1, v2}, Lio/bidmachine/util/network/NetworkUtils;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_65

    .line 4
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_34

    .line 6
    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

    if-nez v2, :cond_22

    .line 7
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    .line 24
    invoke-static {v1}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-void

    :catchall_20
    move-exception v0

    goto :goto_69

    .line 25
    :cond_22
    :try_start_22
    invoke-interface {v2, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;->process(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_61

    :catchall_2a
    move-exception v0

    .line 28
    :try_start_2b
    new-instance v2, Lio/bidmachine/util/Error;

    invoke-direct {v2, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Lio/bidmachine/util/Error;)V

    goto :goto_61

    :cond_34
    const/16 v3, 0xcc

    if-ne v2, v3, :cond_3c

    .line 31
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Ljava/lang/Object;)V

    goto :goto_61

    .line 33
    :cond_3c
    new-instance v0, Lio/bidmachine/util/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server response code - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Lio/bidmachine/util/Error;)V
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_20

    .line 38
    :goto_61
    invoke-static {v1}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    goto :goto_74

    :catchall_65
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 39
    :goto_69
    :try_start_69
    new-instance v2, Lio/bidmachine/util/Error;

    invoke-direct {v2, v0}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Lio/bidmachine/util/Error;)V
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_75

    .line 41
    invoke-static {v1}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    :goto_74
    return-void

    :catchall_75
    move-exception v0

    .line 42
    invoke-static {v1}, Lio/bidmachine/util/network/NetworkUtils;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 43
    throw v0
.end method

.method public cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->k:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->l:Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->cancel(Ljava/lang/Runnable;)V

    .line 6
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a()V

    return-void
.end method

.method public send()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/NetworkRequest;->m:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->send(Lio/bidmachine/util/taskmanager/TaskManager;)V

    return-void
.end method

.method public send(Lio/bidmachine/util/taskmanager/TaskManager;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskManager"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest;->cancel()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->k:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$b;-><init>(Lio/bidmachine/rendering/utils/NetworkRequest;Lio/bidmachine/rendering/utils/NetworkRequest$a;)V

    .line 5
    iput-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest;->l:Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;

    .line 7
    :try_start_d
    invoke-interface {p1, v0}, Lio/bidmachine/util/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p1

    .line 9
    new-instance v0, Lio/bidmachine/util/Error;

    invoke-direct {v0, p1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Lio/bidmachine/util/Error;)V

    return-void
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.Builder (io.bidmachine.rendering.utils.NetworkRequest$Builder)
.class public Lio/bidmachine/rendering/utils/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

.field public j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "method"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->c:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lio/bidmachine/rendering/utils/NetworkRequest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/rendering/utils/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest;

    iget-object v1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->b:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    iget-object v3, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->c:Ljava/util/Map;

    iget-object v4, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->d:Ljava/util/Map;

    iget-object v5, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->f:Ljava/lang/Integer;

    iget-object v9, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

    iget-object v10, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lio/bidmachine/rendering/utils/NetworkRequest;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/rendering/utils/NetworkRequest$UrlConnectionProcessor;Lio/bidmachine/rendering/utils/NetworkRequest$DataRetriever;Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;Lio/bidmachine/rendering/utils/NetworkRequest$Listener;)V

    return-object v0
.end method

.method public send()Lio/bidmachine/rendering/utils/NetworkRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/rendering/utils/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->build()Lio/bidmachine/rendering/utils/NetworkRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->send()V

    return-object v0
.end method

.method public setListener(Lio/bidmachine/rendering/utils/NetworkRequest$Listener;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Listener<",
            "TResponseType;>;)",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->j:Lio/bidmachine/rendering/utils/NetworkRequest$Listener;

    return-object p0
.end method

.method public setResponseTransformer(Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor<",
            "TResponseType;>;)",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->i:Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAgent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/rendering/utils/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    :cond_b
    return-object p0
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.ByteArrayProcessor (io.bidmachine.rendering.utils.NetworkRequest$ByteArrayProcessor)
.class public abstract Lio/bidmachine/rendering/utils/NetworkRequest$ByteArrayProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;
.implements Lio/bidmachine/rendering/utils/NetworkRequest$ResponseTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteArrayProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor<",
        "TT;>;",
        "Lio/bidmachine/rendering/utils/NetworkRequest$ResponseTransformer<",
        "[BTT;>;"
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
.method public process(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlConnection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2a

    .line 2
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_24

    .line 3
    :try_start_a
    invoke-static {p1, v1}, Lio/bidmachine/rendering/utils/Utils;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lio/bidmachine/rendering/utils/NetworkRequest$ResponseTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1f

    .line 6
    invoke-static {v1}, Lio/bidmachine/util/Utils;->flushSafely(Ljava/io/Flushable;)V

    .line 7
    invoke-static {v1}, Lio/bidmachine/util/Utils;->closeSafely(Ljava/io/Closeable;)V

    .line 8
    invoke-static {p1}, Lio/bidmachine/util/Utils;->closeSafely(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1f
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2c

    :catchall_24
    move-exception v1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v2

    goto :goto_2c

    :catchall_2a
    move-exception p1

    move-object v1, v0

    .line 9
    :goto_2c
    invoke-static {v1}, Lio/bidmachine/util/Utils;->flushSafely(Ljava/io/Flushable;)V

    .line 10
    invoke-static {v1}, Lio/bidmachine/util/Utils;->closeSafely(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v0}, Lio/bidmachine/util/Utils;->closeSafely(Ljava/io/Closeable;)V

    .line 12
    throw p1
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.DataRetriever (io.bidmachine.rendering.utils.NetworkRequest$DataRetriever)
.class public interface abstract Lio/bidmachine/rendering/utils/NetworkRequest$DataRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataRetriever"
.end annotation

###### Class io.bidmachine.rendering.utils.NetworkRequest.Listener (io.bidmachine.rendering.utils.NetworkRequest$Listener)
.class public interface abstract Lio/bidmachine/rendering/utils/NetworkRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lio/bidmachine/util/Error;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.Method (io.bidmachine.rendering.utils.NetworkRequest$Method)
.class public final enum Lio/bidmachine/rendering/utils/NetworkRequest$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/utils/NetworkRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

.field public static final enum Post:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

.field public static final synthetic b:[Lio/bidmachine/rendering/utils/NetworkRequest$Method;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "Get"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/utils/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    const/4 v1, 0x1

    const-string v2, "POST"

    const-string v3, "Post"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/utils/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Post:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    .line 3
    invoke-static {}, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->a()[Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->b:[Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "networkName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lio/bidmachine/rendering/utils/NetworkRequest$Method;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    sget-object v1, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Post:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/utils/NetworkRequest$Method;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/utils/NetworkRequest$Method;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->b:[Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    invoke-virtual {v0}, [Lio/bidmachine/rendering/utils/NetworkRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    return-object v0
.end method


# virtual methods
.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.ResponseProcessor (io.bidmachine.rendering.utils.NetworkRequest$ResponseProcessor)
.class public interface abstract Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract process(Ljava/net/URLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlConnection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")TResponseType;"
        }
    .end annotation
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.ResponseTransformer (io.bidmachine.rendering.utils.NetworkRequest$ResponseTransformer)
.class public interface abstract Lio/bidmachine/rendering/utils/NetworkRequest$ResponseTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)TTo;"
        }
    .end annotation
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.StringProcessor (io.bidmachine.rendering.utils.NetworkRequest$StringProcessor)
.class public Lio/bidmachine/rendering/utils/NetworkRequest$StringProcessor;
.super Lio/bidmachine/rendering/utils/NetworkRequest$ByteArrayProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/rendering/utils/NetworkRequest$ByteArrayProcessor<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/NetworkRequest$ByteArrayProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$StringProcessor;->transform([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

###### Class io.bidmachine.rendering.utils.NetworkRequest.UrlConnectionProcessor (io.bidmachine.rendering.utils.NetworkRequest$UrlConnectionProcessor)
.class public interface abstract Lio/bidmachine/rendering/utils/NetworkRequest$UrlConnectionProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UrlConnectionProcessor"
.end annotation

###### Class io.bidmachine.rendering.utils.NetworkRequest.a (io.bidmachine.rendering.utils.NetworkRequest$a)
.class public abstract synthetic Lio/bidmachine/rendering/utils/NetworkRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.rendering.utils.NetworkRequest.b (io.bidmachine.rendering.utils.NetworkRequest$b)
.class public Lio/bidmachine/rendering/utils/NetworkRequest$b;
.super Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/utils/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lio/bidmachine/rendering/utils/NetworkRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/utils/NetworkRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/utils/NetworkRequest$b;->b:Lio/bidmachine/rendering/utils/NetworkRequest;

    invoke-direct {p0}, Lio/bidmachine/rendering/utils/taskmanager/CancelableTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/utils/NetworkRequest;Lio/bidmachine/rendering/utils/NetworkRequest$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/utils/NetworkRequest$b;-><init>(Lio/bidmachine/rendering/utils/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/utils/NetworkRequest$b;->b:Lio/bidmachine/rendering/utils/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/rendering/utils/NetworkRequest;->a(Lio/bidmachine/rendering/utils/NetworkRequest;)V

    return-void
.end method
