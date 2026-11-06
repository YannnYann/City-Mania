###### Class ads_mobile_sdk.r60 (ads_mobile_sdk.r60)
.class public final Lads_mobile_sdk/r60;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public final b:Ljava/nio/channels/WritableByteChannel;

.field public final c:Ljava/nio/ByteBuffer;

.field public d:Z

.field public e:Lkotlinx/coroutines/CompletableDeferred;

.field public f:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic g:Lads_mobile_sdk/k70;

.field public final synthetic h:Z

.field public final synthetic i:Lads_mobile_sdk/rr3;

.field public final synthetic j:Lads_mobile_sdk/f81;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lads_mobile_sdk/k70;ZLads_mobile_sdk/rr3;Lads_mobile_sdk/f81;)V
    .registers 6

    .line 1
    iput-object p2, p0, Lads_mobile_sdk/r60;->g:Lads_mobile_sdk/k70;

    iput-boolean p3, p0, Lads_mobile_sdk/r60;->h:Z

    iput-object p4, p0, Lads_mobile_sdk/r60;->i:Lads_mobile_sdk/rr3;

    iput-object p5, p0, Lads_mobile_sdk/r60;->j:Lads_mobile_sdk/f81;

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 3
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p2, p0, Lads_mobile_sdk/r60;->a:Ljava/io/ByteArrayOutputStream;

    .line 4
    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/r60;->b:Ljava/nio/channels/WritableByteChannel;

    const p2, 0x8000

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lads_mobile_sdk/r60;->c:Ljava/nio/ByteBuffer;

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/r60;->f:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 405
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/r60;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    .line 407
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v1, Lads_mobile_sdk/p60;

    invoke-direct {v1, v0}, Lads_mobile_sdk/p60;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lads_mobile_sdk/f01;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/v01;)V
    .registers 4

    .line 798
    iget-boolean v0, p0, Lads_mobile_sdk/r60;->d:Z

    if-nez v0, :cond_7

    .line 799
    invoke-virtual {p0}, Lads_mobile_sdk/r60;->a()V

    .line 802
    :cond_7
    iget-object v0, p0, Lads_mobile_sdk/r60;->f:Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_18

    .line 803
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 804
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_18
    const/4 p1, 0x0

    .line 807
    iput-object p1, p0, Lads_mobile_sdk/r60;->f:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method

.method public final onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 518
    iget-boolean p1, p0, Lads_mobile_sdk/r60;->d:Z

    const-string p2, "Request was cancelled"

    if-eqz p1, :cond_16

    .line 519
    iget-object p1, p0, Lads_mobile_sdk/r60;->e:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_12

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 520
    :cond_12
    invoke-virtual {p0}, Lads_mobile_sdk/r60;->a()V

    return-void

    .line 524
    :cond_16
    new-instance p1, Lads_mobile_sdk/m01;

    sget-object v0, Lads_mobile_sdk/kk1;->k:Lads_mobile_sdk/kk1;

    invoke-direct {p1, p2, v0}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    invoke-virtual {p0, p1}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    return-void
.end method

.method public final onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .registers 6

    .line 1
    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iget-boolean p1, p0, Lads_mobile_sdk/r60;->d:Z

    if-eqz p1, :cond_19

    .line 500
    iget-object p1, p0, Lads_mobile_sdk/r60;->e:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_15

    invoke-interface {p1, p3}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 501
    :cond_15
    invoke-virtual {p0}, Lads_mobile_sdk/r60;->a()V

    return-void

    .line 505
    :cond_19
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    if-eqz p1, :cond_37

    move-object p1, p3

    check-cast p1, Lorg/chromium/net/NetworkException;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkException;->immediatelyRetryable()Z

    move-result p1

    if-nez p1, :cond_37

    .line 507
    new-instance p1, Lads_mobile_sdk/o01;

    .line 508
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_30

    const-string p2, "Non-retryable Cronet network error"

    .line 509
    :cond_30
    invoke-direct {p1, p2, p3}, Lads_mobile_sdk/o01;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    invoke-virtual {p0, p1}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    return-void

    .line 517
    :cond_37
    new-instance p1, Lads_mobile_sdk/j01;

    sget-object p2, Lads_mobile_sdk/kk1;->e:Lads_mobile_sdk/kk1;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p1, p3, p2, v0, v1}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    return-void
.end method

.method public final onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "byteBuffer"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 474
    iget-object p2, p0, Lads_mobile_sdk/r60;->b:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 475
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 476
    invoke-virtual {p1, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lads_mobile_sdk/g81;

    invoke-direct {v0}, Lads_mobile_sdk/g81;-><init>()V

    .line 418
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    .line 419
    iput v1, v0, Lads_mobile_sdk/g81;->a:I

    .line 420
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/g81;->a(Ljava/util/Map;)Lads_mobile_sdk/g81;

    move-result-object v0

    .line 421
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object p2

    .line 422
    iput-object p2, v0, Lads_mobile_sdk/g81;->b:Ljava/lang/String;

    .line 423
    iput-object p3, v0, Lads_mobile_sdk/g81;->f:Ljava/lang/String;

    .line 424
    invoke-virtual {v0}, Lads_mobile_sdk/g81;->a()Lads_mobile_sdk/h81;

    move-result-object p2

    .line 425
    new-instance p3, Lads_mobile_sdk/q01;

    invoke-direct {p3, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    .line 429
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    return-void
.end method

.method public final onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 11

    .line 1
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lads_mobile_sdk/r60;->g:Lads_mobile_sdk/k70;

    .line 434
    iget-object v1, v0, Lads_mobile_sdk/k70;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 435
    new-instance v0, Lads_mobile_sdk/q60;

    iget-object v2, p0, Lads_mobile_sdk/r60;->j:Lads_mobile_sdk/f81;

    const/4 v7, 0x0

    invoke-direct {v0, v2, p2, v7}, Lads_mobile_sdk/q60;-><init>(Lads_mobile_sdk/f81;Lorg/chromium/net/UrlResponseInfo;Lkotlin/coroutines/Continuation;)V

    .line 436
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 437
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 696
    iget-object v0, p0, Lads_mobile_sdk/r60;->g:Lads_mobile_sdk/k70;

    .line 697
    iget-object v0, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    const-string v1, "key"

    if-eqz v0, :cond_4f

    .line 699
    const-string v2, "gads:html_body_header"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    const-string v4, "X-Afma-Is-Html-Response"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    sget-object v3, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v0, v2, v4, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_50

    :cond_4f
    move-object v0, v7

    :goto_50
    if-eqz v0, :cond_fc

    .line 742
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5a

    goto/16 :goto_fc

    .line 743
    :cond_5a
    iget-boolean v2, p0, Lads_mobile_sdk/r60;->h:Z

    if-eqz v2, :cond_fc

    .line 744
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "getAllHeaders(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6f

    goto/16 :goto_fc

    .line 1125
    :cond_6f
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<get-value>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1129
    iget-object v0, p0, Lads_mobile_sdk/r60;->i:Lads_mobile_sdk/rr3;

    if-eqz v0, :cond_b1

    .line 1130
    iget-object v0, v0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 1131
    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    iput-boolean v5, v0, Lads_mobile_sdk/tn1;->g:Z

    .line 1133
    :cond_b1
    iget-object v0, p0, Lads_mobile_sdk/r60;->g:Lads_mobile_sdk/k70;

    .line 1134
    iget-object v0, v0, Lads_mobile_sdk/k70;->b:Lads_mobile_sdk/ex0;

    if-eqz v0, :cond_fc

    .line 1136
    const-string v2, "gads:enable_normalization_before_body"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1152
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_fc

    .line 1153
    iput-boolean v5, p0, Lads_mobile_sdk/r60;->d:Z

    .line 1154
    invoke-static {v7, v5, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/r60;->e:Lkotlinx/coroutines/CompletableDeferred;

    .line 1157
    new-instance v0, Lads_mobile_sdk/g81;

    invoke-direct {v0}, Lads_mobile_sdk/g81;-><init>()V

    .line 1159
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    .line 1160
    iput v1, v0, Lads_mobile_sdk/g81;->a:I

    .line 1161
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/g81;->a(Ljava/util/Map;)Lads_mobile_sdk/g81;

    .line 1162
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object p2

    .line 1163
    iput-object p2, v0, Lads_mobile_sdk/g81;->b:Ljava/lang/String;

    .line 1164
    iget-object p2, p0, Lads_mobile_sdk/r60;->e:Lkotlinx/coroutines/CompletableDeferred;

    .line 1165
    iput-object p2, v0, Lads_mobile_sdk/g81;->e:Lkotlinx/coroutines/Deferred;

    .line 1166
    invoke-virtual {v0}, Lads_mobile_sdk/g81;->a()Lads_mobile_sdk/h81;

    move-result-object p2

    .line 1168
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, p2}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    .line 1172
    :cond_fc
    :goto_fc
    iget-object p2, p0, Lads_mobile_sdk/r60;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .registers 4

    .line 1
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iget-boolean p1, p0, Lads_mobile_sdk/r60;->d:Z

    if-eqz p1, :cond_29

    .line 481
    new-instance p1, Lads_mobile_sdk/p53;

    iget-object p2, p0, Lads_mobile_sdk/r60;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "toByteArray(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lads_mobile_sdk/p53;-><init>([B)V

    .line 482
    iget-object p2, p0, Lads_mobile_sdk/r60;->e:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_25

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 483
    :cond_25
    invoke-virtual {p0}, Lads_mobile_sdk/r60;->a()V

    return-void

    .line 488
    :cond_29
    new-instance p1, Lads_mobile_sdk/g81;

    invoke-direct {p1}, Lads_mobile_sdk/g81;-><init>()V

    .line 489
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    .line 490
    iput v0, p1, Lads_mobile_sdk/g81;->a:I

    .line 491
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/g81;->a(Ljava/util/Map;)Lads_mobile_sdk/g81;

    move-result-object p1

    .line 492
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object p2

    .line 493
    iput-object p2, p1, Lads_mobile_sdk/g81;->b:Ljava/lang/String;

    .line 494
    iget-object p2, p0, Lads_mobile_sdk/r60;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    if-eqz p2, :cond_51

    .line 495
    new-instance v0, Lads_mobile_sdk/p53;

    invoke-direct {v0, p2}, Lads_mobile_sdk/p53;-><init>([B)V

    iput-object v0, p1, Lads_mobile_sdk/g81;->d:Lads_mobile_sdk/p53;

    .line 496
    :cond_51
    invoke-virtual {p1}, Lads_mobile_sdk/g81;->a()Lads_mobile_sdk/h81;

    move-result-object p1

    .line 498
    new-instance p2, Lads_mobile_sdk/q01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lads_mobile_sdk/r60;->a(Lads_mobile_sdk/v01;)V

    return-void
.end method
