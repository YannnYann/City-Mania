###### Class ads_mobile_sdk.q71 (ads_mobile_sdk.q71)
.class public final Lads_mobile_sdk/q71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/n71;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;J)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lads_mobile_sdk/q71;->a:Ljava/util/concurrent/ExecutorService;

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/q71;->b:Ljava/lang/String;

    .line 39
    iput-wide p3, p0, Lads_mobile_sdk/q71;->c:J

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;I)[B
    .registers 6

    const/16 v0, 0x190

    if-ge p1, v0, :cond_9

    .line 262
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 263
    :goto_d
    :try_start_d
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_20

    const/4 v0, 0x0

    if-nez p0, :cond_24

    .line 265
    :try_start_15
    new-array v0, v0, [B
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_22

    .line 273
    :try_start_17
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_20

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1f
    return-object v0

    :catchall_20
    move-exception p1

    goto :goto_47

    :catchall_22
    move-exception v0

    goto :goto_3e

    :cond_24
    const/16 v1, 0x1000

    .line 274
    :try_start_26
    new-array v1, v1, [B

    .line 276
    :goto_28
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 277
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_28

    .line 279
    :cond_33
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_22

    .line 280
    :try_start_37
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_20

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 281
    :goto_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    :try_start_43
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_20

    :goto_47
    if-eqz p0, :cond_51

    :try_start_49
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z[BLjava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 11

    .line 57
    new-instance v0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/q71;Ljava/lang/String;ZLjava/lang/String;[B)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;ZLjava/lang/String;[BLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 14

    .line 223
    iget-object v0, p0, Lads_mobile_sdk/q71;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v7}, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/q71;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 260
    const-string p1, ""

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V
    .registers 9

    .line 118
    const-string v0, "Timeout: "

    const/4 v1, 0x0

    .line 120
    :try_start_3
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_11} :catch_7a
    .catchall {:try_start_3 .. :try_end_11} :catchall_78

    .line 122
    :try_start_11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;-><init>(Ljava/net/HttpURLConnection;)V

    iget-object v2, p0, Lads_mobile_sdk/q71;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->addCancellationListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 123
    const-string v1, "User-Agent"

    iget-object v2, p0, Lads_mobile_sdk/q71;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-wide v1, p0, Lads_mobile_sdk/q71;->c:J

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 125
    iget-wide v1, p0, Lads_mobile_sdk/q71;->c:J

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    if-eqz p3, :cond_64

    const/4 p3, 0x1

    .line 128
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 129
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p4, :cond_4a

    .line 131
    const-string p3, "Content-Type"

    invoke-virtual {p1, p3, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :catchall_44
    move-exception p3

    move-object v1, p1

    goto :goto_7c

    :catch_47
    move-exception p3

    move-object v1, p1

    goto :goto_84

    .line 133
    :cond_4a
    :goto_4a
    new-instance p3, Ljava/io/BufferedOutputStream;

    .line 134
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_53
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_53} :catch_47
    .catchall {:try_start_11 .. :try_end_53} :catchall_44

    .line 135
    :try_start_53
    invoke-virtual {p3, p5}, Ljava/io/OutputStream;->write([B)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    .line 136
    :try_start_56
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/net/SocketTimeoutException; {:try_start_56 .. :try_end_59} :catch_47
    .catchall {:try_start_56 .. :try_end_59} :catchall_44

    goto :goto_64

    :catchall_5a
    move-exception p4

    .line 137
    :try_start_5b
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception p3

    :try_start_60
    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_63
    throw p4

    .line 142
    :cond_64
    :goto_64
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    .line 143
    invoke-static {p1, p3}, Lads_mobile_sdk/q71;->a(Ljava/net/HttpURLConnection;I)[B

    move-result-object p4

    .line 144
    new-instance p5, Lads_mobile_sdk/p71;

    invoke-direct {p5, p4, p3}, Lads_mobile_sdk/p71;-><init>([BI)V

    invoke-virtual {p2, p5}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/net/SocketTimeoutException; {:try_start_60 .. :try_end_74} :catch_47
    .catchall {:try_start_60 .. :try_end_74} :catchall_44

    .line 152
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_78
    move-exception p3

    goto :goto_7c

    :catch_7a
    move-exception p3

    goto :goto_84

    .line 153
    :goto_7c
    :try_start_7c
    invoke-virtual {p2, p3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    if-eqz v1, :cond_a1

    goto :goto_9e

    :catchall_82
    move-exception p1

    goto :goto_a2

    .line 157
    :goto_84
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_9c
    .catchall {:try_start_7c .. :try_end_9c} :catchall_82

    if-eqz v1, :cond_a1

    .line 156
    :goto_9e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a1
    return-void

    :goto_a2
    if-eqz v1, :cond_a7

    .line 162
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_a7
    throw p1
.end method

###### Class ads_mobile_sdk.q71$$ExternalSyntheticLambda0 (ads_mobile_sdk.q71$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/q71;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/q71;Ljava/lang/String;ZLjava/lang/String;[B)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/q71;

    iput-object p2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$4:[B

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/q71;

    iget-object v1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda0;->f$4:[B

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/q71;->a(Ljava/lang/String;ZLjava/lang/String;[BLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class ads_mobile_sdk.q71$$ExternalSyntheticLambda1 (ads_mobile_sdk.q71$$ExternalSyntheticLambda1)
.class public final synthetic Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/q71;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[B


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/q71;Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/q71;

    iput-object p2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-boolean p4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$5:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$0:Lads_mobile_sdk/q71;

    iget-object v1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-boolean v3, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$3:Z

    iget-object v4, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda1;->f$5:[B

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/q71;->a(Ljava/lang/String;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;ZLjava/lang/String;[B)V

    return-void
.end method

###### Class ads_mobile_sdk.q71$$ExternalSyntheticLambda2 (ads_mobile_sdk.q71$$ExternalSyntheticLambda2)
.class public final synthetic Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/net/HttpURLConnection;


# direct methods
.method public synthetic constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$0:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/q71$$ExternalSyntheticLambda2;->f$0:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
