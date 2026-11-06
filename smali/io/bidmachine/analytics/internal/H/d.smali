###### Class io.bidmachine.analytics.internal.H.d (io.bidmachine.analytics.internal.H.d)
.class public final Lio/bidmachine/analytics/internal/H/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/H/c;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/H/d$a;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/H/d$a;-><init>(Lio/bidmachine/analytics/internal/H/d;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/d;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/H/d;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/H/d;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method private final a()Lio/bidmachine/analytics/internal/F/b;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/H/d;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/F/b;

    return-object v0
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 81
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    check-cast v1, Lio/bidmachine/analytics/internal/G/c;

    .line 101
    invoke-static {v1}, Lio/bidmachine/analytics/internal/G/d;->a(Lio/bidmachine/analytics/internal/G/c;)Lio/bidmachine/analytics/internal/g/d;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_2a
    move-exception p1

    goto :goto_31

    .line 120
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
.method public a(Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/analytics/internal/G/d;->a(Lio/bidmachine/analytics/internal/g/d;)Lio/bidmachine/analytics/internal/G/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/F/b;->a(Lio/bidmachine/analytics/internal/G/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 4
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/H/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5

    .line 8
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/H/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 4

    .line 80
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 17
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 47
    check-cast v2, Lio/bidmachine/analytics/internal/g/d;

    .line 48
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/d;->a(Lio/bidmachine/analytics/internal/g/d;)Lio/bidmachine/analytics/internal/G/c;

    move-result-object v2

    .line 78
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 79
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/b;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/F/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Lio/bidmachine/analytics/internal/g/d;

    .line 32
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/d;->a(Lio/bidmachine/analytics/internal/g/d;)Lio/bidmachine/analytics/internal/G/c;

    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 63
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/b;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/H/d;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Lio/bidmachine/analytics/internal/g/d;

    .line 32
    invoke-static {v2}, Lio/bidmachine/analytics/internal/G/d;->a(Lio/bidmachine/analytics/internal/g/d;)Lio/bidmachine/analytics/internal/G/c;

    move-result-object v2

    .line 62
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 63
    :cond_27
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/F/b;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.H.d.a (io.bidmachine.analytics.internal.H.d$a)
.class final Lio/bidmachine/analytics/internal/H/d$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/H/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/H/d;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/H/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/H/d$a;->a:Lio/bidmachine/analytics/internal/H/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/F/b;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/F/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/H/d$a;->a:Lio/bidmachine/analytics/internal/H/d;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/H/d;->a(Lio/bidmachine/analytics/internal/H/d;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/F/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/H/d$a;->a()Lio/bidmachine/analytics/internal/F/b;

    move-result-object v0

    return-object v0
.end method
