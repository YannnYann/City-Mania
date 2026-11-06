###### Class io.bidmachine.analytics.internal.D.d (io.bidmachine.analytics.internal.D.d)
.class public final Lio/bidmachine/analytics/internal/D/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/C/a$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/t/e;

.field private final b:Lio/bidmachine/analytics/internal/t/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/t/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/D/d;->a:Lio/bidmachine/analytics/internal/t/e;

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/t/a;

    invoke-direct {p1}, Lio/bidmachine/analytics/internal/t/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/D/d;->b:Lio/bidmachine/analytics/internal/t/a;

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/g/e$a;)Lcom/explorestack/protobuf/BytesValue;
    .registers 8

    .line 1
    instance-of v0, p1, Lio/bidmachine/analytics/internal/g/e$a$a;

    if-eqz v0, :cond_b1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/D/d;->a:Lio/bidmachine/analytics/internal/t/e;

    check-cast p1, Lio/bidmachine/analytics/internal/g/e$a$a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/t/e;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 4
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    :try_start_25
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 39
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 41
    iget-object v2, p0, Lio/bidmachine/analytics/internal/D/d;->b:Lio/bidmachine/analytics/internal/t/a;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/bidmachine/analytics/internal/t/a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/t/a$b;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 44
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/t/a$b;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/bidmachine/analytics/internal/I/d;->a(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/t/a$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setTag(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/t/a$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setLevel(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/t/a$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setMessage(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v2

    .line 50
    const-string v3, ""

    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->setSource(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lio/bidmachine/protobuf/sdk/OSLog$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog$Record;

    move-result-object v2

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :catchall_77
    move-exception v0

    goto :goto_80

    .line 64
    :cond_79
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7b
    .catchall {:try_start_25 .. :try_end_7b} :catchall_77

    const/4 v1, 0x0

    .line 80
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_86

    :goto_80
    :try_start_80
    throw v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a9

    .line 84
    invoke-static {}, Lcom/explorestack/protobuf/BytesValue;->newBuilder()Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/bidmachine/protobuf/sdk/OSLog;->newBuilder()Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->addAllRecords(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/sdk/OSLog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/OSLog$Builder;->build()Lio/bidmachine/protobuf/sdk/OSLog;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/BytesValue$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/BytesValue$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/explorestack/protobuf/BytesValue$Builder;->build()Lcom/explorestack/protobuf/BytesValue;

    move-result-object p1

    return-object p1

    .line 97
    :cond_a9
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "No records found"

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_b1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
