###### Class ads_mobile_sdk.e81 (ads_mobile_sdk.e81)
.class public final Lads_mobile_sdk/e81;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/URL;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/LinkedHashMap;

.field public d:[B

.field public final e:Lads_mobile_sdk/ss0;

.field public f:Lads_mobile_sdk/g9;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "GET"

    iput-object v0, p0, Lads_mobile_sdk/e81;->b:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/e81;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/f81;)V
    .registers 4

    .line 42
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "GET"

    iput-object v0, p0, Lads_mobile_sdk/e81;->b:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lads_mobile_sdk/e81;->g:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->f()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    .line 90
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lads_mobile_sdk/e81;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 92
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->a()[B

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/e81;->d:[B

    .line 93
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->b()Lads_mobile_sdk/ss0;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/e81;->e:Lads_mobile_sdk/ss0;

    .line 94
    invoke-virtual {p1}, Lads_mobile_sdk/f81;->d()Lads_mobile_sdk/g9;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/e81;->f:Lads_mobile_sdk/g9;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;
    .registers 6

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_17

    goto :goto_2b

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2b
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;[B)Lads_mobile_sdk/e81;
    .registers 4

    .line 277
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4b

    if-nez p2, :cond_46

    .line 390
    const-string v0, "POST"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "PUT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "PATCH"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_46

    .line 391
    :cond_26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 396
    :cond_46
    :goto_46
    iput-object p1, p0, Lads_mobile_sdk/e81;->b:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Lads_mobile_sdk/e81;->d:[B

    return-object p0

    .line 398
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP method must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lads_mobile_sdk/f81;
    .registers 10

    .line 217
    iget-object v0, p0, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    if-eqz v0, :cond_63

    .line 218
    iget-object v1, p0, Lads_mobile_sdk/e81;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 219
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lads_mobile_sdk/e81;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 264
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_23

    .line 266
    :cond_3f
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_4f

    :cond_4e
    move-object v3, v0

    .line 268
    :goto_4f
    new-instance v2, Lads_mobile_sdk/f81;

    .line 270
    iget-object v4, p0, Lads_mobile_sdk/e81;->b:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 272
    iget-object v6, p0, Lads_mobile_sdk/e81;->d:[B

    .line 273
    iget-object v7, p0, Lads_mobile_sdk/e81;->e:Lads_mobile_sdk/ss0;

    .line 274
    iget-object v8, p0, Lads_mobile_sdk/e81;->f:Lads_mobile_sdk/g9;

    .line 275
    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/f81;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BLads_mobile_sdk/ss0;Lads_mobile_sdk/g9;)V

    return-object v2

    .line 276
    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HttpRequest.Builder: URL must be set before calling build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 399
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/net/URL;)V
    .registers 3

    .line 401
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iput-object p1, p0, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    return-void
.end method

.method public final b()Lads_mobile_sdk/e81;
    .registers 3

    .line 162
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lads_mobile_sdk/e81;
    .registers 3

    .line 243
    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lads_mobile_sdk/e81;->a:Ljava/net/URL;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;
    .registers 4

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/e81;->g:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;
    .registers 5

    .line 163
    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const-string v0, "POST"

    invoke-virtual {p0, v0, p2}, Lads_mobile_sdk/e81;->a(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p2

    .line 165
    const-string v0, "name"

    const-string v1, "Content-Type"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p2, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lads_mobile_sdk/e81;
    .registers 4

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lads_mobile_sdk/e81;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
