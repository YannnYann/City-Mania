###### Class io.bidmachine.analytics.internal.H.f (io.bidmachine.analytics.internal.H.f)
.class public final Lio/bidmachine/analytics/internal/H/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/H/e;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/H/f$a;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/H/f$a;-><init>(Lio/bidmachine/analytics/internal/H/f;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/f;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/H/f;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/H/f;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private final a()Lio/bidmachine/analytics/internal/F/c;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/F/c;

    return-object v0
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 263
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 264
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 291
    check-cast v1, Lio/bidmachine/analytics/internal/G/e;

    .line 292
    invoke-static {v1}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/G/e;)Lio/bidmachine/analytics/internal/g/e;

    move-result-object v1

    .line 319
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_2a
    move-exception p1

    goto :goto_31

    .line 320
    :cond_2c
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_2a

    return-object p1

    :goto_31
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/c;->a(Lio/bidmachine/analytics/internal/G/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 6
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/H/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;)Ljava/lang/Object;
    .registers 4

    .line 4
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-static {p2}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/F/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    :try_start_10
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lio/bidmachine/analytics/internal/G/e;

    if-eqz p1, :cond_20

    invoke-static {p1}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/G/e;)Lio/bidmachine/analytics/internal/g/e;

    move-result-object p1

    goto :goto_21

    :catchall_1e
    move-exception p1

    goto :goto_26

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_1e

    return-object p1

    :goto_26
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    .line 94
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    check-cast v2, Lio/bidmachine/analytics/internal/g/e$a;

    .line 137
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 180
    :cond_2b
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/analytics/internal/F/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 7
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    check-cast v2, Lio/bidmachine/analytics/internal/g/e;

    .line 50
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;

    move-result-object v2

    .line 92
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 93
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/c;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 181
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/c;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object p1

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 220
    check-cast v1, Lio/bidmachine/analytics/internal/g/e$a;

    .line 221
    invoke-static {v1}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 259
    :cond_32
    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/F/c;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 262
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/F/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/c;->c(Lio/bidmachine/analytics/internal/G/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    check-cast v2, Lio/bidmachine/analytics/internal/g/e;

    .line 45
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;

    move-result-object v2

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 88
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/c;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/f;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 43
    check-cast v2, Lio/bidmachine/analytics/internal/g/e;

    .line 44
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;

    move-result-object v2

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 87
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/c;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.H.f.a (io.bidmachine.analytics.internal.H.f$a)
.class final Lio/bidmachine/analytics/internal/H/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/H/f;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/H/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/H/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/f$a;->a:Lio/bidmachine/analytics/internal/H/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/F/c;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/F/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/H/f$a;->a:Lio/bidmachine/analytics/internal/H/f;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/H/f;->a(Lio/bidmachine/analytics/internal/H/f;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/F/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/H/f$a;->a()Lio/bidmachine/analytics/internal/F/c;

    move-result-object v0

    return-object v0
.end method
