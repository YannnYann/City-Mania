###### Class io.bidmachine.analytics.internal.t.d (io.bidmachine.analytics.internal.t.d)
.class public final Lio/bidmachine/analytics/internal/t/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/t/d$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/t/e;

.field private final b:Lio/bidmachine/analytics/internal/t/b$a;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/t/e;Lio/bidmachine/analytics/internal/t/b$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/d;->a:Lio/bidmachine/analytics/internal/t/e;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/t/d;->b:Lio/bidmachine/analytics/internal/t/b$a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/t/e;Lio/bidmachine/analytics/internal/t/b$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_9

    .line 4
    new-instance p2, Lio/bidmachine/analytics/internal/t/d$a;

    invoke-direct {p2, p1}, Lio/bidmachine/analytics/internal/t/d$a;-><init>(Lio/bidmachine/analytics/internal/t/e;)V

    .line 5
    :cond_9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/t/d;-><init>(Lio/bidmachine/analytics/internal/t/e;Lio/bidmachine/analytics/internal/t/b$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/lang/String;
    .registers 3

    .line 270
    instance-of v0, p1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    if-eqz v0, :cond_19

    .line 271
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/d;->a:Lio/bidmachine/analytics/internal/t/e;

    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/t/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    return-object p1

    :cond_13
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    .line 272
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .registers 3

    .line 218
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_22

    .line 267
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/analytics/internal/t/b;

    .line 269
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/t/b;->a()V

    goto :goto_c

    :cond_22
    return-void
.end method

.method public final a(Lio/bidmachine/analytics/internal/r/a$a;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/r/a$a;->c()Ljava/util/List;

    move-result-object p1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 50
    instance-of v2, v1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    if-eqz v2, :cond_20

    check-cast v1, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_d

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 100
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;

    .line 103
    invoke-virtual {v2}, Lio/bidmachine/analytics/ReaderConfig$Rule$GeneralRule;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 156
    :cond_4a
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 159
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lio/bidmachine/analytics/internal/t/d;->b:Lio/bidmachine/analytics/internal/t/b$a;

    invoke-interface {v2}, Lio/bidmachine/analytics/internal/t/b$a;->a()Lio/bidmachine/analytics/internal/t/b;

    move-result-object v2

    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 216
    :cond_78
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 217
    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/d;->c:Ljava/util/Map;

    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/t/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_28

    .line 54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/analytics/internal/t/b;

    .line 56
    invoke-virtual {v1, v2}, Lio/bidmachine/analytics/internal/t/b;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_28
    return-void
.end method

###### Class io.bidmachine.analytics.internal.t.d.a (io.bidmachine.analytics.internal.t.d$a)
.class final Lio/bidmachine/analytics/internal/t/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/t/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/t/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/t/e;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/t/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/t/d$a;->a:Lio/bidmachine/analytics/internal/t/e;

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/analytics/internal/t/b;
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/t/f;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/t/f;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 3
    new-instance v2, Lio/bidmachine/analytics/internal/t/b;

    iget-object v3, p0, Lio/bidmachine/analytics/internal/t/d$a;->a:Lio/bidmachine/analytics/internal/t/e;

    invoke-direct {v2, v3, v0, v1}, Lio/bidmachine/analytics/internal/t/b;-><init>(Lio/bidmachine/analytics/internal/t/e;Lio/bidmachine/analytics/internal/t/f;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v2
.end method
