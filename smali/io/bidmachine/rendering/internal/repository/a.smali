###### Class io.bidmachine.rendering.internal.repository.a (io.bidmachine.rendering.internal.repository.a)
.class public final Lio/bidmachine/rendering/internal/repository/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/Repository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/repository/a$a;,
        Lio/bidmachine/rendering/internal/repository/a$b;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function0;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lio/bidmachine/rendering/internal/j;

.field public final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V
    .registers 5

    const-string v0, "mediaFileCacheManagerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a;->a:Lkotlin/jvm/functions/Function0;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    .line 5
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$y;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/repository/a$y;-><init>(Lio/bidmachine/rendering/internal/repository/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;
    .registers 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/repository/a;->a()Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/rendering/internal/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/repository/a;->b()Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/repository/a;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/repository/a;->a:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    const-string v0, "base64"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/util/UtilsKt;->decodeBase64$default(Ljava/lang/String;IILjava/lang/Object;)[B

    move-result-object p1

    if-eqz p1, :cond_18

    .line 20
    invoke-static {p1, p2}, Lio/bidmachine/util/ImageUtils;->decodeBytesToBitmapSafely([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_18
    return-object v2
.end method

.method public final a()Ljava/lang/Exception;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unknown error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 50
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->d()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/repository/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lio/bidmachine/rendering/internal/repository/a$c;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 49
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->d()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/repository/a$d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lio/bidmachine/rendering/internal/repository/a$d;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$j;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$j;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$j;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$j;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$j;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    iget-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$k;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lio/bidmachine/rendering/internal/repository/a$k;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    .line 18
    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 42
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/repository/a$r;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lio/bidmachine/rendering/internal/repository/a$r;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15

    instance-of v0, p4, Lio/bidmachine/rendering/internal/repository/a$l;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$l;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$l;

    invoke-direct {v0, p0, p4}, Lio/bidmachine/rendering/internal/repository/a$l;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lio/bidmachine/rendering/internal/repository/a$l;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 8
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    iget-object p4, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    new-instance v4, Lio/bidmachine/rendering/internal/repository/a$m;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/rendering/internal/repository/a$m;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    invoke-static {p4, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4d

    return-object v1

    .line 13
    :cond_4d
    :goto_4d
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$x;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$x;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$x;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$x;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$x;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/UrlMediaSource;->getUrls()Ljava/util/List;

    move-result-object p3

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/UrlMediaSource;->getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object p1

    sget-object v2, Lio/bidmachine/rendering/internal/repository/a$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v3, :cond_60

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5a

    .line 28
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_5a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 30
    :cond_60
    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    invoke-virtual {p0, p3, p2, v0}, Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_69

    return-object v1

    :cond_69
    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p2, Lio/bidmachine/rendering/internal/repository/a$h;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$h;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$h;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/rendering/internal/repository/a$h;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/rendering/internal/repository/a$h;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lio/bidmachine/rendering/internal/repository/a$i;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_49

    return-object v1

    .line 7
    :cond_49
    :goto_49
    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    invoke-static {p1}, Lio/bidmachine/util/Utils;->getValidUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 38
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_2b

    .line 40
    :cond_14
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse video stream url - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_12

    .line 41
    :goto_2b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$v;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$v;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$v;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$v;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$v;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$w;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lio/bidmachine/rendering/internal/repository/a$w;-><init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    .line 35
    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;)V
    .registers 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    sget-object v1, Lio/bidmachine/rendering/utils/NetworkRequest$Method;->Get:Lio/bidmachine/rendering/utils/NetworkRequest$Method;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$Method;)V

    .line 44
    invoke-virtual {v0, p2}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->setResponseTransformer(Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    new-instance v1, Lio/bidmachine/rendering/internal/repository/a$z;

    invoke-direct {v1, p3, p4, p2, v0}, Lio/bidmachine/rendering/internal/repository/a$z;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V

    invoke-virtual {p1, v1}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->setListener(Lio/bidmachine/rendering/utils/NetworkRequest$Listener;)Lio/bidmachine/rendering/utils/NetworkRequest$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lio/bidmachine/rendering/utils/NetworkRequest$Builder;->send()Lio/bidmachine/rendering/utils/NetworkRequest;

    return-void
.end method

.method public final b()Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager;

    return-object v0
.end method

.method public getImage(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .registers 12

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$e;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/rendering/internal/repository/a$e;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getImage-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$f;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$f;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$f;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$f;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$f;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$g;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p0, p2, v4}, Lio/bidmachine/rendering/internal/repository/a$g;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    .line 5
    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$o;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$o;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$o;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$o;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$o;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$p;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lio/bidmachine/rendering/internal/repository/a$p;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    .line 5
    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .registers 10

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "resultCallback"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/bidmachine/rendering/internal/repository/a$q;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p3, p2}, Lio/bidmachine/rendering/internal/repository/a$q;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getVideo(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
    .registers 12

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$s;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/rendering/internal/repository/a$s;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p3, Lio/bidmachine/rendering/internal/repository/a$t;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lio/bidmachine/rendering/internal/repository/a$t;

    iget v1, v0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$t;

    invoke-direct {v0, p0, p3}, Lio/bidmachine/rendering/internal/repository/a$t;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lio/bidmachine/rendering/internal/repository/a$t;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lio/bidmachine/rendering/internal/repository/a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {p3}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    new-instance v2, Lio/bidmachine/rendering/internal/repository/a$u;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p0, p2, v4}, Lio/bidmachine/rendering/internal/repository/a$u;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_49

    return-object v1

    .line 5
    :cond_49
    :goto_49
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unholdMediaFiles(Ljava/lang/Object;)V
    .registers 9

    const-string v0, "mediaSourceHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lio/bidmachine/rendering/internal/repository/a$A;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/rendering/internal/repository/a$A;-><init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.rendering.internal.repository.a.A (io.bidmachine.rendering.internal.repository.a$A)
.class public final Lio/bidmachine/rendering/internal/repository/a$A;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->unholdMediaFiles(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$A;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$A;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$A;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$A;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$A;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$A;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$A;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$A;-><init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$A;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$A;->a:I

    if-nez v0, :cond_1a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$A;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$A;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->unholdMediaFiles(Ljava/lang/Object;)V

    .line 3
    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.AbstractC1202a (io.bidmachine.rendering.internal.repository.a$a)
.class public abstract Lio/bidmachine/rendering/internal/repository/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/NetworkRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/repository/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/Repository$ResultCallback;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lio/bidmachine/rendering/internal/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V
    .registers 5

    const-string v0, "resultCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$a;->a:Lio/bidmachine/rendering/Repository$ResultCallback;

    .line 4
    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$a;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$a;->c:Lio/bidmachine/rendering/internal/j;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/repository/a$a;)Lio/bidmachine/rendering/Repository$ResultCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/repository/a$a;->a:Lio/bidmachine/rendering/Repository$ResultCallback;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lio/bidmachine/util/Error;
.end method

.method public onError(Lio/bidmachine/util/Error;)V
    .registers 9

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$a;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->d()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lio/bidmachine/rendering/internal/repository/a$a$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/rendering/internal/repository/a$a$a;-><init>(Lio/bidmachine/rendering/internal/repository/a$a;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 8

    if-eqz p1, :cond_16

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a;->b:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$a;->c:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j;->d()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/bidmachine/rendering/internal/repository/a$a$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lio/bidmachine/rendering/internal/repository/a$a$b;-><init>(Lio/bidmachine/rendering/internal/repository/a$a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 5
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/repository/a$a;->a()Lio/bidmachine/util/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/repository/a$a;->onError(Lio/bidmachine/util/Error;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.repository.a.AbstractC1202a.C1203a (io.bidmachine.rendering.internal.repository.a$a$a)
.class public final Lio/bidmachine/rendering/internal/repository/a$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a$a;->onError(Lio/bidmachine/util/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a$a;

.field public final synthetic c:Lio/bidmachine/util/Error;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a$a;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->c:Lio/bidmachine/util/Error;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$a$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->c:Lio/bidmachine/util/Error;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$a;-><init>(Lio/bidmachine/rendering/internal/repository/a$a;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a$a;->a(Lio/bidmachine/rendering/internal/repository/a$a;)Lio/bidmachine/rendering/Repository$ResultCallback;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$a;->c:Lio/bidmachine/util/Error;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/Repository$ResultCallback;->onError(Lio/bidmachine/util/Error;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.AbstractC1202a.b (io.bidmachine.rendering.internal.repository.a$a$b)
.class public final Lio/bidmachine/rendering/internal/repository/a$a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a$a;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a$a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a$a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$a$b;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$b;-><init>(Lio/bidmachine/rendering/internal/repository/a$a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$a$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->b:Lio/bidmachine/rendering/internal/repository/a$a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a$a;->a(Lio/bidmachine/rendering/internal/repository/a$a;)Lio/bidmachine/rendering/Repository$ResultCallback;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$a$b;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/Repository$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.b (io.bidmachine.rendering.internal.repository.a$b)
.class public abstract synthetic Lio/bidmachine/rendering/internal/repository/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/repository/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->values()[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/bidmachine/rendering/internal/repository/a$b;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.internal.repository.a.c (io.bidmachine.rendering.internal.repository.a$c)
.class public final Lio/bidmachine/rendering/internal/repository/a$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/Repository$ResultCallback;

.field public final synthetic c:Lio/bidmachine/util/Error;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$c;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$c;->c:Lio/bidmachine/util/Error;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$c;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$c;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$c;->c:Lio/bidmachine/util/Error;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$c;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$c;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$c;->a:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$c;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$c;->c:Lio/bidmachine/util/Error;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/Repository$ResultCallback;->onError(Lio/bidmachine/util/Error;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.d (io.bidmachine.rendering.internal.repository.a$d)
.class public final Lio/bidmachine/rendering/internal/repository/a$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/Repository$ResultCallback;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$d;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$d;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$d;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$d;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$d;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$d;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$d;->a:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$d;->b:Lio/bidmachine/rendering/Repository$ResultCallback;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$d;->c:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/Repository$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.e (io.bidmachine.rendering.internal.repository.a$e)
.class public final Lio/bidmachine/rendering/internal/repository/a$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getImage(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lio/bidmachine/rendering/Repository$ResultCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$e;->c:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$e;->d:Ljava/lang/Object;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/repository/a$e;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$e;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$e;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$e;->d:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/repository/a$e;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/repository/a$e;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v4, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3a

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/repository/a$e;->d:Ljava/lang/Object;

    iput v4, p0, Lio/bidmachine/rendering/internal/repository/a$e;->a:I

    invoke-virtual {p1, v1, v5, p0}, Lio/bidmachine/rendering/internal/repository/a;->getImage-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3a

    goto :goto_71

    .line 3
    :cond_3a
    :goto_3a
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    goto :goto_43

    :cond_42
    move-object v1, p1

    :goto_43
    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_54

    .line 5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$e;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput v3, p0, Lio/bidmachine/rendering/internal/repository/a$e;->a:I

    invoke-static {p1, v2, v1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    goto :goto_71

    .line 7
    :cond_54
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$e;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    new-instance v4, Lio/bidmachine/util/Error;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$e;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;

    move-result-object p1

    :cond_66
    invoke-direct {v4, p1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$e;->a:I

    invoke-static {v1, v3, v4, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    :goto_71
    return-object v0

    .line 9
    :cond_72
    :goto_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.f (io.bidmachine.rendering.internal.repository.a$f)
.class public final Lio/bidmachine/rendering/internal/repository/a$f;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getImage-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$f;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$f;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$f;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$f;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->getImage-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.g (io.bidmachine.rendering.internal.repository.a$g)
.class public final Lio/bidmachine/rendering/internal/repository/a$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getImage-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic c:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$g;->b:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$g;->c:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$g;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$g;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$g;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$g;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$g;->b:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$g;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$g;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$g;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$g;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$g;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_f

    goto :goto_17

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_51

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lio/bidmachine/util/ImageUtils;->createDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$g;->b:Lio/bidmachine/rendering/model/MediaSource;

    .line 6
    instance-of v4, v1, Lio/bidmachine/rendering/model/UrlMediaSource;

    if-eqz v4, :cond_40

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$g;->c:Lio/bidmachine/rendering/internal/repository/a;

    check-cast v1, Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/repository/a$g;->d:Ljava/lang/Object;

    iput v3, p0, Lio/bidmachine/rendering/internal/repository/a$g;->a:I

    invoke-virtual {v2, v1, v4, p1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    goto :goto_50

    .line 7
    :cond_40
    instance-of v3, v1, Lio/bidmachine/rendering/model/Base64MediaSource;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$g;->c:Lio/bidmachine/rendering/internal/repository/a;

    check-cast v1, Lio/bidmachine/rendering/model/Base64MediaSource;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$g;->a:I

    invoke-virtual {v3, v1, p1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_51

    :goto_50
    return-object v0

    .line 8
    :cond_51
    :goto_51
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 9
    :cond_56
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.h (io.bidmachine.rendering.internal.repository.a$h)
.class public final Lio/bidmachine/rendering/internal/repository/a$h;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$h;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$h;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$h;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$h;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.i (io.bidmachine.rendering.internal.repository.a$i)
.class public final Lio/bidmachine/rendering/internal/repository/a$i;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/UrlMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$i;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$i;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$i;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$i;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$i;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$i;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$i;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$i;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$i;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$i;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_49

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$i;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "`MediaFileCacheManager` not found, check initialization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_49

    .line 7
    :cond_3a
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$i;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/UrlMediaSource;->getUrls()Ljava/util/List;

    move-result-object v1

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$i;->a:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_49

    return-object v0

    .line 8
    :cond_49
    :goto_49
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.j (io.bidmachine.rendering.internal.repository.a$j)
.class public final Lio/bidmachine/rendering/internal/repository/a$j;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$j;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$j;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$j;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$j;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.k (io.bidmachine.rendering.internal.repository.a$k)
.class public final Lio/bidmachine/rendering/internal/repository/a$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/Base64MediaSource;

.field public final synthetic d:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$k;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$k;->c:Lio/bidmachine/rendering/model/Base64MediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$k;->d:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$k;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$k;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$k;->c:Lio/bidmachine/rendering/model/Base64MediaSource;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$k;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$k;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/Base64MediaSource;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$k;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$k;->a:I

    if-nez v0, :cond_35

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$k;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$k;->c:Lio/bidmachine/rendering/model/Base64MediaSource;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/Base64MediaSource;->getBase64()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$k;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_30

    .line 6
    :cond_1f
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Can\'t decode image from base64"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_30
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 7
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.l (io.bidmachine.rendering.internal.repository.a$l)
.class public final Lio/bidmachine/rendering/internal/repository/a$l;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$l;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$l;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$l;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$l;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.m (io.bidmachine.rendering.internal.repository.a$m)
.class public final Lio/bidmachine/rendering/internal/repository/a$m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic e:Lio/bidmachine/rendering/model/UrlMediaSource;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$m;->e:Lio/bidmachine/rendering/model/UrlMediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$m;->f:Ljava/lang/Object;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/repository/a$m;->g:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$m;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$m;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$m;->e:Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$m;->f:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/repository/a$m;->g:Landroid/graphics/BitmapFactory$Options;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/repository/a$m;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->a:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_29
    move-object v1, p1

    goto :goto_3b

    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->e:Lio/bidmachine/rendering/model/UrlMediaSource;

    iput v3, p0, Lio/bidmachine/rendering/internal/repository/a$m;->c:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    goto :goto_64

    .line 3
    :goto_3b
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_44

    move-object p1, v3

    goto :goto_45

    :cond_44
    move-object p1, v1

    :goto_45
    check-cast p1, Ljava/io/File;

    .line 4
    iget-object v4, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {v4}, Lio/bidmachine/rendering/internal/repository/a;->b(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/rendering/internal/j;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lio/bidmachine/rendering/internal/repository/a$m$a;

    iget-object v6, p0, Lio/bidmachine/rendering/internal/repository/a$m;->g:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5, p1, v6, v3}, Lio/bidmachine/rendering/internal/repository/a$m$a;-><init>(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->a:Ljava/lang/Object;

    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->b:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$m;->c:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_65

    :goto_64
    return-object v0

    :cond_65
    move-object v0, p1

    move-object p1, v2

    .line 5
    :goto_67
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7f

    if-eqz p1, :cond_7f

    .line 12
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/repository/a;->c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$m;->f:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/bidmachine/util/cache/MediaFileCacheManager;->holdMediaFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 13
    :cond_7a
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_93

    .line 15
    :cond_7f
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m;->d:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;

    move-result-object p1

    :cond_8b
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_93
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.m.C1204a (io.bidmachine.rendering.internal.repository.a$m$a)
.class public final Lio/bidmachine/rendering/internal/repository/a$m$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->b:Ljava/io/File;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->c:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$m$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$m$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->b:Ljava/io/File;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->c:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/repository/a$m$a;-><init>(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$m$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->a:I

    if-nez v0, :cond_17

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->b:Ljava/io/File;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$m$a;->c:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0}, Lio/bidmachine/util/ImageUtilsKt;->decodeToBitmapSafely(Ljava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.o (io.bidmachine.rendering.internal.repository.a$o)
.class public final Lio/bidmachine/rendering/internal/repository/a$o;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$o;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$o;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$o;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$o;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.p (io.bidmachine.rendering.internal.repository.a$p)
.class public final Lio/bidmachine/rendering/internal/repository/a$p;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/UrlMediaSource;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$p;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$p;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$p;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$p;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$p;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$p;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$p;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$p;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$p;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2d

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->c:Lio/bidmachine/rendering/model/UrlMediaSource;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$p;->a:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    .line 3
    :cond_2d
    :goto_2d
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    move-object v0, p1

    :goto_36
    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_50

    .line 5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->d:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->holdMediaFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 6
    :cond_47
    invoke-static {v0}, Lio/bidmachine/util/file/FileUtilsKt;->toUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_64

    .line 8
    :cond_50
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5c

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$p;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;

    move-result-object p1

    :cond_5c
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_64
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.q (io.bidmachine.rendering.internal.repository.a$q)
.class public final Lio/bidmachine/rendering/internal/repository/a$q;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getString(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic d:Lio/bidmachine/rendering/Repository$ResultCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$q;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$q;->c:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$q;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$q;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$q;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$q;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$q;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$q;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$q;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$q;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$q;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$q;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_29

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$q;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$q;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$q;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$q;->a:I

    invoke-virtual {p1, v1, v3, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_29

    return-object v0

    .line 3
    :cond_29
    :goto_29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.r (io.bidmachine.rendering.internal.repository.a$r)
.class public final Lio/bidmachine/rendering/internal/repository/a$r;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic c:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic d:Lio/bidmachine/rendering/Repository$ResultCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->b:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$r;->c:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$r;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$r;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$r;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$r;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$r;->b:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$r;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$r;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$r;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1b

    if-eq v1, v2, :cond_17

    if-ne v1, v3, :cond_f

    goto :goto_17

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_77

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->b:Lio/bidmachine/rendering/model/MediaSource;

    .line 3
    instance-of v1, p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    if-eqz v1, :cond_44

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$r;->c:Lio/bidmachine/rendering/internal/repository/a;

    .line 5
    check-cast p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/UrlMediaSource;->getUrls()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    new-instance v1, Lio/bidmachine/rendering/utils/NetworkRequest$StringProcessor;

    invoke-direct {v1}, Lio/bidmachine/rendering/utils/NetworkRequest$StringProcessor;-><init>()V

    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$r;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    .line 8
    new-instance v3, Lio/bidmachine/util/Error;

    const-string v4, "Uri is null"

    invoke-direct {v3, v4}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1, v1, v2, v3}, Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;)V

    goto :goto_77

    .line 17
    :cond_44
    instance-of v1, p1, Lio/bidmachine/rendering/model/Base64MediaSource;

    if-eqz v1, :cond_77

    .line 18
    check-cast p1, Lio/bidmachine/rendering/model/Base64MediaSource;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Base64MediaSource;->getBase64()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4}, Lio/bidmachine/util/Utils;->decodeBase64ToString$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 20
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$r;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$r;->a:I

    invoke-static {v1, v3, p1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_77

    goto :goto_76

    .line 22
    :cond_63
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$r;->d:Lio/bidmachine/rendering/Repository$ResultCallback;

    new-instance v2, Lio/bidmachine/util/Error;

    const-string v4, "Can\'t decode string from base64"

    invoke-direct {v2, v4}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    iput v3, p0, Lio/bidmachine/rendering/internal/repository/a$r;->a:I

    invoke-static {p1, v1, v2, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_77

    :goto_76
    return-object v0

    .line 26
    :cond_77
    :goto_77
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.s (io.bidmachine.rendering.internal.repository.a$s)
.class public final Lio/bidmachine/rendering/internal/repository/a$s;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getVideo(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic c:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lio/bidmachine/rendering/Repository$ResultCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$s;->c:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$s;->d:Ljava/lang/Object;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/repository/a$s;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$s;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$s;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/repository/a$s;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$s;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$s;->d:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/repository/a$s;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/rendering/internal/repository/a$s;-><init>(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$s;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v4, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3a

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->c:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/repository/a$s;->d:Ljava/lang/Object;

    iput v4, p0, Lio/bidmachine/rendering/internal/repository/a$s;->a:I

    invoke-virtual {p1, v1, v5, p0}, Lio/bidmachine/rendering/internal/repository/a;->getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3a

    goto :goto_71

    .line 3
    :cond_3a
    :goto_3a
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    goto :goto_43

    :cond_42
    move-object v1, p1

    :goto_43
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_54

    .line 5
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$s;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    iput v3, p0, Lio/bidmachine/rendering/internal/repository/a$s;->a:I

    invoke-static {p1, v2, v1, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    goto :goto_71

    .line 7
    :cond_54
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$s;->e:Lio/bidmachine/rendering/Repository$ResultCallback;

    new-instance v4, Lio/bidmachine/util/Error;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$s;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;

    move-result-object p1

    :cond_66
    invoke-direct {v4, p1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/Throwable;)V

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$s;->a:I

    invoke-static {v1, v3, v4, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_72

    :goto_71
    return-object v0

    .line 9
    :cond_72
    :goto_72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.t (io.bidmachine.rendering.internal.repository.a$t)
.class public final Lio/bidmachine/rendering/internal/repository/a$t;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$t;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$t;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$t;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$t;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.u (io.bidmachine.rendering.internal.repository.a$u)
.class public final Lio/bidmachine/rendering/internal/repository/a$u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->getVideo-0E7RQCE(Lio/bidmachine/rendering/model/MediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/model/MediaSource;

.field public final synthetic c:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->b:Lio/bidmachine/rendering/model/MediaSource;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$u;->c:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$u;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$u;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$u;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$u;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$u;->b:Lio/bidmachine/rendering/model/MediaSource;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$u;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$u;-><init>(Lio/bidmachine/rendering/model/MediaSource;Lio/bidmachine/rendering/internal/repository/a;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$u;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_57

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->b:Lio/bidmachine/rendering/model/MediaSource;

    .line 3
    instance-of v1, p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->c:Lio/bidmachine/rendering/internal/repository/a;

    check-cast p1, Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/repository/a$u;->d:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$u;->a:I

    invoke-virtual {v1, p1, v3, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_57

    return-object v0

    .line 4
    :cond_35
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported media source type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$u;->b:Lio/bidmachine/rendering/model/MediaSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_57
    :goto_57
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.v (io.bidmachine.rendering.internal.repository.a$v)
.class public final Lio/bidmachine/rendering/internal/repository/a$v;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$v;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$v;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$v;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$v;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.w (io.bidmachine.rendering.internal.repository.a$w)
.class public final Lio/bidmachine/rendering/internal/repository/a$w;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/bidmachine/rendering/internal/repository/a;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->c:Lio/bidmachine/rendering/internal/repository/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$w;->d:Ljava/util/List;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/repository/a$w;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$w;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/repository/a$w;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/repository/a$w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/repository/a$w;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$w;->c:Lio/bidmachine/rendering/internal/repository/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->d:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/repository/a$w;->e:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/repository/a$w;-><init>(Lio/bidmachine/rendering/internal/repository/a;Ljava/util/List;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/repository/a$w;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    if-ne v1, v2, :cond_19

    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$w;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_51

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->c:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->c(Lio/bidmachine/rendering/internal/repository/a;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p1

    if-nez p1, :cond_42

    .line 3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "`MediaFileCacheManager` not found, check initialization"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    .line 4
    :cond_42
    iget-object v1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->d:Ljava/util/List;

    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->a:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/rendering/internal/repository/a$w;->b:I

    invoke-virtual {p1, v1, p0}, Lio/bidmachine/util/cache/MediaFileCacheManager;->getMediaFile-gIAlu-s(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4f

    return-object v0

    :cond_4f
    move-object v0, p1

    move-object p1, v1

    .line 5
    :goto_51
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    move-object v1, v2

    goto :goto_5b

    :cond_5a
    move-object v1, p1

    :goto_5b
    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_63

    .line 6
    invoke-static {v1}, Lio/bidmachine/util/file/FileUtilsKt;->toUriSafely(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :cond_63
    if-eqz v2, :cond_6f

    .line 8
    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->holdMediaFile(Ljava/io/File;Ljava/lang/Object;)V

    .line 9
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_83

    .line 11
    :cond_6f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7b

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$w;->c:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/internal/repository/a;)Ljava/lang/Exception;

    move-result-object p1

    :cond_7b
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_83
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.x (io.bidmachine.rendering.internal.repository.a$x)
.class public final Lio/bidmachine/rendering/internal/repository/a$x;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/rendering/internal/repository/a;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$x;->b:Lio/bidmachine/rendering/internal/repository/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$x;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/rendering/internal/repository/a$x;->c:I

    iget-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$x;->b:Lio/bidmachine/rendering/internal/repository/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lio/bidmachine/rendering/internal/repository/a;->a(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.repository.a.y (io.bidmachine.rendering.internal.repository.a$y)
.class public final Lio/bidmachine/rendering/internal/repository/a$y;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/repository/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/repository/a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/repository/a$y;->a:Lio/bidmachine/rendering/internal/repository/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$y;->a:Lio/bidmachine/rendering/internal/repository/a;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/repository/a;->d(Lio/bidmachine/rendering/internal/repository/a;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/repository/a$y;->a()Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.repository.a.z (io.bidmachine.rendering.internal.repository.a$z)
.class public final Lio/bidmachine/rendering/internal/repository/a$z;
.super Lio/bidmachine/rendering/internal/repository/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/repository/a;->a(Ljava/lang/String;Lio/bidmachine/rendering/utils/NetworkRequest$ResponseProcessor;Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lio/bidmachine/util/Error;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lio/bidmachine/util/Error;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V
    .registers 5

    iput-object p2, p0, Lio/bidmachine/rendering/internal/repository/a$z;->d:Lio/bidmachine/util/Error;

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lio/bidmachine/rendering/internal/repository/a$a;-><init>(Lio/bidmachine/rendering/Repository$ResultCallback;Lkotlinx/coroutines/CoroutineScope;Lio/bidmachine/rendering/internal/j;)V

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/util/Error;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/repository/a$z;->d:Lio/bidmachine/util/Error;

    return-object v0
.end method
