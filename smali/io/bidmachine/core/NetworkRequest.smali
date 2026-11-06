###### Class io.bidmachine.core.NetworkRequest (io.bidmachine.core.NetworkRequest)
.class public abstract Lio/bidmachine/core/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/NetworkRequest$State;,
        Lio/bidmachine/core/NetworkRequest$Callback;,
        Lio/bidmachine/core/NetworkRequest$Method;,
        Lio/bidmachine/core/NetworkRequest$RequestDataBinder;,
        Lio/bidmachine/core/NetworkRequest$CancelCallback;,
        Lio/bidmachine/core/NetworkRequest$c;,
        Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;,
        Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

.field private contentEncoders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private currentConnection:Ljava/net/URLConnection;

.field private currentState:Lio/bidmachine/core/NetworkRequest$State;

.field private dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private dataEncoders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private errorResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErrorResultType;"
        }
    .end annotation
.end field

.field private final method:Lio/bidmachine/core/NetworkRequest$Method;

.field private final path:Ljava/lang/String;

.field private final requestData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private requestResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestResultType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/core/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "Ljava/lang/String;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Idle:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 7
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 8
    iput-object p2, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/core/NetworkRequest;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest;->process()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    return-object p0
.end method

.method private obtainErrorStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .registers 3

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private obtainResponseCode(Ljava/net/URLConnection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method private process()V
    .registers 9

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Running:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    const/4 v0, 0x0

    .line 5
    :try_start_5
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 6
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_36

    :catchall_29
    move-exception v1

    move-object v2, v0

    goto/16 :goto_124

    .line 7
    :cond_2d
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_36
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_29

    :try_start_3a
    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 10
    iget-object v2, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {v2, v1}, Lio/bidmachine/core/NetworkRequest$Method;->apply(Ljava/net/URLConnection;)V

    .line 11
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 13
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainRequestData(Ljava/net/URLConnection;)[B

    move-result-object v2

    if-eqz v2, :cond_76

    .line 16
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/core/NetworkRequest;->encodeRequestData(Ljava/net/URLConnection;[B)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_65

    .line 21
    :try_start_52
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_6d

    .line 22
    :try_start_5b
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6b

    .line 24
    :try_start_5e
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 25
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_76

    :catchall_65
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_124

    :catchall_6b
    move-exception v2

    goto :goto_6f

    :catchall_6d
    move-exception v2

    move-object v3, v0

    .line 26
    :goto_6f
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 27
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 28
    throw v2
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_65

    .line 35
    :cond_76
    :goto_76
    :try_start_76
    invoke-direct {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainResponseCode(Ljava/net/URLConnection;)I

    move-result v2

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v3
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_b3

    if-eqz v3, :cond_a6

    .line 65
    :try_start_80
    invoke-static {v0}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 66
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_65

    .line 74
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_92

    .line 75
    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    :cond_92
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_149

    .line 79
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_a1

    .line 80
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_a3

    .line 81
    :cond_a1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_a3
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    return-void

    :cond_a6
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_b6

    .line 82
    :try_start_aa
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    move-object v2, v0

    move-object v3, v2

    goto :goto_f4

    :catchall_b3
    move-exception v2

    move-object v3, v0

    goto :goto_117

    .line 84
    :cond_b6
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_ba
    .catchall {:try_start_aa .. :try_end_ba} :catchall_b3

    .line 85
    :try_start_ba
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_113

    const/16 v4, 0x400

    .line 86
    :try_start_c1
    new-array v4, v4, [B

    .line 88
    :goto_c3
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d1

    const/4 v6, 0x0

    .line 89
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_c3

    :catchall_cf
    move-exception v4

    goto :goto_11a

    .line 91
    :cond_d1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    if-eqz v4, :cond_db

    .line 93
    invoke-virtual {p0, v1, v4}, Lio/bidmachine/core/NetworkRequest;->decodeResponseData(Ljava/net/URLConnection;[B)[B

    move-result-object v4

    :cond_db
    if-eqz v4, :cond_f4

    .line 95
    array-length v5, v4

    if-lez v5, :cond_f4

    iget-object v5, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    if-eqz v5, :cond_f4

    .line 96
    invoke-virtual {v5, p0, v1, v4}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    if-nez v5, :cond_f4

    .line 100
    iget-object v5, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    invoke-virtual {v5, p0, v1, v4}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->createFailResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_f4
    .catchall {:try_start_c1 .. :try_end_f4} :catchall_cf

    .line 107
    :cond_f4
    :goto_f4
    :try_start_f4
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 108
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 110
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V
    :try_end_fd
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_65

    .line 116
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_106

    .line 117
    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 119
    :cond_106
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 120
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_149

    .line 121
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_145

    goto :goto_142

    :catchall_113
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_117
    move-object v4, v2

    move-object v2, v3

    move-object v3, v0

    .line 124
    :goto_11a
    :try_start_11a
    invoke-static {v3}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 125
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 128
    throw v4
    :try_end_124
    .catchall {:try_start_11a .. :try_end_124} :catchall_65

    .line 130
    :goto_124
    :try_start_124
    invoke-static {v1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {p0, v2, v1}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_12d
    .catchall {:try_start_124 .. :try_end_12d} :catchall_14a

    .line 133
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_136

    .line 134
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_136
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 137
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_149

    .line 138
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_145

    .line 122
    :goto_142
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_147

    .line 123
    :cond_145
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_147
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    :cond_149
    return-void

    :catchall_14a
    move-exception v1

    .line 139
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_154

    .line 140
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 142
    :cond_154
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 143
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_167

    .line 144
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_163

    .line 145
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_165

    .line 146
    :cond_163
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_165
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 148
    :cond_167
    throw v1
.end method


# virtual methods
.method public addContentEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    if-eqz v0, :cond_b

    .line 3
    invoke-interface {v0}, Lio/bidmachine/core/NetworkRequest$CancelCallback;->onCanceled()V

    :cond_b
    return-void
.end method

.method public decodeResponseData(Ljava/net/URLConnection;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 4
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_8

    .line 7
    :cond_19
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 10
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_21

    :cond_32
    return-object p2
.end method

.method public encodeRequestData(Ljava/net/URLConnection;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 4
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 5
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_8

    .line 8
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 11
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 12
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_24

    :cond_38
    return-object p2
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "TODO: implement url"

    return-object v0
.end method

.method public getMethod()Lio/bidmachine/core/NetworkRequest$Method;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public abstract obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "I)TErrorResultType;"
        }
    .end annotation
.end method

.method public abstract obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/lang/Throwable;",
            ")TErrorResultType;"
        }
    .end annotation
.end method

.method public obtainRequestData(Ljava/net/URLConnection;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->prepareRequest(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareRequestParams(Ljava/net/URLConnection;)V
    .registers 3

    const v0, 0x9c40

    .line 1
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public request()V
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-virtual {p0, v0}, Lio/bidmachine/core/NetworkRequest;->request(Lio/bidmachine/util/taskmanager/TaskManager;)V

    return-void
.end method

.method public request(Lio/bidmachine/util/taskmanager/TaskManager;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Lio/bidmachine/core/NetworkRequest$c;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/core/NetworkRequest$c;-><init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$a;)V

    invoke-interface {p1, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception p1

    .line 4
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    if-eqz v1, :cond_19

    .line 6
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/bidmachine/core/NetworkRequest$Callback;->onFail(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-void
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    return-void
.end method

.method public setDataBinder(Lio/bidmachine/core/NetworkRequest$RequestDataBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    return-void
.end method

###### Class io.bidmachine.core.NetworkRequest.Callback (io.bidmachine.core.NetworkRequest$Callback)
.class public interface abstract Lio/bidmachine/core/NetworkRequest$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TErrorResultType;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestResultType;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.core.NetworkRequest.CancelCallback (io.bidmachine.core.NetworkRequest$CancelCallback)
.class public interface abstract Lio/bidmachine/core/NetworkRequest$CancelCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CancelCallback"
.end annotation


# virtual methods
.method public abstract onCanceled()V
.end method

###### Class io.bidmachine.core.NetworkRequest.GZIPRequestDataEncoder (io.bidmachine.core.NetworkRequest$GZIPRequestDataEncoder)
.class public Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;
.super Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GZIPRequestDataEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
        "TRequestDataType;TRequestResultType;TErrorResultType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gzip"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    const/4 p1, 0x0

    .line 6
    :try_start_d
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_48

    .line 7
    :try_start_12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_45

    .line 8
    :try_start_17
    new-instance p3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_43

    const/16 p1, 0x400

    .line 9
    :try_start_1e
    new-array p1, p1, [B

    .line 11
    :goto_20
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_20

    :catchall_2c
    move-exception p1

    goto :goto_3f

    .line 14
    :cond_2e
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_2c

    .line 16
    invoke-static {p2}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 17
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 19
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 20
    invoke-static {p3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object p1

    :goto_3f
    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_4c

    :catchall_43
    move-exception p3

    goto :goto_4c

    :catchall_45
    move-exception p3

    move-object v0, p1

    goto :goto_4c

    :catchall_48
    move-exception p2

    move-object v0, p1

    move-object p3, p2

    move-object p2, v0

    .line 21
    :goto_4c
    invoke-static {p2}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 22
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 24
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 25
    invoke-static {p1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 26
    throw p3

    :cond_59
    return-object p3
.end method

.method public encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28

    .line 2
    :try_start_6
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_22

    .line 3
    :try_start_b
    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_24

    .line 7
    :try_start_11
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_22

    .line 9
    invoke-static {p2}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 10
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 12
    invoke-static {p1}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 13
    invoke-static {p1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object p3

    :catchall_22
    move-exception p3

    goto :goto_2b

    :catchall_24
    move-exception p1

    move-object p3, p1

    move-object p1, v0

    goto :goto_2b

    :catchall_28
    move-exception p2

    move-object p3, p2

    move-object p2, p1

    .line 14
    :goto_2b
    invoke-static {p2}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 15
    invoke-static {p2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 17
    invoke-static {p1}, Lio/bidmachine/core/Utils;->flush(Ljava/io/Flushable;)V

    .line 18
    invoke-static {p1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 19
    throw p3
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "Accept-Encoding"

    const-string v0, "gzip"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p1, "Content-Encoding"

    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.core.NetworkRequest.Method (io.bidmachine.core.NetworkRequest$Method)
.class public final enum Lio/bidmachine/core/NetworkRequest$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/NetworkRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Get:Lio/bidmachine/core/NetworkRequest$Method;

.field public static final enum Post:Lio/bidmachine/core/NetworkRequest$Method;


# instance fields
.field public final methodString:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/core/NetworkRequest$Method;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    sget-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    filled-new-array {v0, v1}, [Lio/bidmachine/core/NetworkRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v1, 0x0

    const-string v2, "GET"

    const-string v3, "Get"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    new-instance v0, Lio/bidmachine/core/NetworkRequest$Method;

    const/4 v1, 0x1

    const-string v2, "POST"

    const-string v3, "Post"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/core/NetworkRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 3
    invoke-static {}, Lio/bidmachine/core/NetworkRequest$Method;->$values()[Lio/bidmachine/core/NetworkRequest$Method;

    move-result-object v0

    sput-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
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
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest$Method;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/core/NetworkRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/core/NetworkRequest$Method;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/NetworkRequest$Method;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->$VALUES:[Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {v0}, [Lio/bidmachine/core/NetworkRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/core/NetworkRequest$Method;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/net/URLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$Method;->methodString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

###### Class io.bidmachine.core.NetworkRequest.RequestDataBinder (io.bidmachine.core.NetworkRequest$RequestDataBinder)
.class public abstract Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public createFailResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)TErrorResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)TRequestResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "TRequestDataType;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation
.end method

.method public prepareRequest(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class io.bidmachine.core.NetworkRequest.RequestDataEncoder (io.bidmachine.core.NetworkRequest$RequestDataEncoder)
.class public abstract Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestDataEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public abstract decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class io.bidmachine.core.NetworkRequest.State (io.bidmachine.core.NetworkRequest$State)
.class public final enum Lio/bidmachine/core/NetworkRequest$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/core/NetworkRequest$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/core/NetworkRequest$State;

.field public static final enum Canceled:Lio/bidmachine/core/NetworkRequest$State;

.field public static final enum Fail:Lio/bidmachine/core/NetworkRequest$State;

.field public static final enum Idle:Lio/bidmachine/core/NetworkRequest$State;

.field public static final enum Running:Lio/bidmachine/core/NetworkRequest$State;

.field public static final enum Success:Lio/bidmachine/core/NetworkRequest$State;


# direct methods
.method public static synthetic $values()[Lio/bidmachine/core/NetworkRequest$State;
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Idle:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Running:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v2, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v3, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v4, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/bidmachine/core/NetworkRequest$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/core/NetworkRequest$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/NetworkRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->Idle:Lio/bidmachine/core/NetworkRequest$State;

    new-instance v0, Lio/bidmachine/core/NetworkRequest$State;

    const-string v1, "Running"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/NetworkRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->Running:Lio/bidmachine/core/NetworkRequest$State;

    new-instance v0, Lio/bidmachine/core/NetworkRequest$State;

    const-string v1, "Success"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/NetworkRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    new-instance v0, Lio/bidmachine/core/NetworkRequest$State;

    const-string v1, "Fail"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/NetworkRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    new-instance v0, Lio/bidmachine/core/NetworkRequest$State;

    const-string v1, "Canceled"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/core/NetworkRequest$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    .line 2
    invoke-static {}, Lio/bidmachine/core/NetworkRequest$State;->$values()[Lio/bidmachine/core/NetworkRequest$State;

    move-result-object v0

    sput-object v0, Lio/bidmachine/core/NetworkRequest$State;->$VALUES:[Lio/bidmachine/core/NetworkRequest$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/core/NetworkRequest$State;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/core/NetworkRequest$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/core/NetworkRequest$State;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/core/NetworkRequest$State;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->$VALUES:[Lio/bidmachine/core/NetworkRequest$State;

    invoke-virtual {v0}, [Lio/bidmachine/core/NetworkRequest$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/core/NetworkRequest$State;

    return-object v0
.end method

###### Class io.bidmachine.core.NetworkRequest.a (io.bidmachine.core.NetworkRequest$a)
.class public abstract synthetic Lio/bidmachine/core/NetworkRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.core.NetworkRequest.c (io.bidmachine.core.NetworkRequest$c)
.class public final Lio/bidmachine/core/NetworkRequest$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/core/NetworkRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/core/NetworkRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/core/NetworkRequest$c;-><init>(Lio/bidmachine/core/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$100(Lio/bidmachine/core/NetworkRequest;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-virtual {v0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;

    move-result-object v0

    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    if-ne v0, v1, :cond_2f

    .line 4
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2f
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$c;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$Callback;->onFail(Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method
