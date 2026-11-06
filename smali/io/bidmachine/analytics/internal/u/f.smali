###### Class io.bidmachine.analytics.internal.u.f (io.bidmachine.analytics.internal.u.f)
.class public final Lio/bidmachine/analytics/internal/u/f;
.super Lio/bidmachine/analytics/internal/r/a;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/h/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/u/f$b;
    }
.end annotation


# static fields
.field public static final n:Lio/bidmachine/analytics/internal/u/f$b;


# instance fields
.field private final g:Lio/bidmachine/analytics/internal/a/a;

.field private final h:Lkotlin/jvm/functions/Function1;

.field private i:Landroid/content/Context;

.field private j:Lio/bidmachine/analytics/internal/u/b;

.field private k:Lio/bidmachine/analytics/internal/u/e;

.field private l:Z

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/u/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/u/f;->n:Lio/bidmachine/analytics/internal/u/f$b;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/r/a;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->g:Lio/bidmachine/analytics/internal/a/a;

    .line 5
    iput-object p2, p0, Lio/bidmachine/analytics/internal/u/f;->h:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lio/bidmachine/analytics/internal/u/f;->l:Z

    .line 16
    const-string p1, "apur"

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 1
    sget-object p2, Lio/bidmachine/analytics/internal/u/f$a;->a:Lio/bidmachine/analytics/internal/u/f$a;

    .line 2
    :cond_6
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/u/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final d()Lio/bidmachine/analytics/internal/u/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/f;->g:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/a/a;->d()Lio/bidmachine/analytics/internal/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/a/d;->c()Lio/bidmachine/analytics/internal/u/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    instance-of p1, p2, Lio/bidmachine/analytics/internal/u/f$c;

    if-eqz p1, :cond_13

    move-object p1, p2

    check-cast p1, Lio/bidmachine/analytics/internal/u/f$c;

    iget v0, p1, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    sub-int/2addr v0, v1

    iput v0, p1, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    goto :goto_18

    :cond_13
    new-instance p1, Lio/bidmachine/analytics/internal/u/f$c;

    invoke-direct {p1, p0, p2}, Lio/bidmachine/analytics/internal/u/f$c;-><init>(Lio/bidmachine/analytics/internal/u/f;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, p1, Lio/bidmachine/analytics/internal/u/f$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget v1, p1, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    if-ne v1, v2, :cond_2d

    iget-object p1, p1, Lio/bidmachine/analytics/internal/u/f$c;->a:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/analytics/internal/u/f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_56

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lio/bidmachine/analytics/internal/u/f;->j:Lio/bidmachine/analytics/internal/u/b;

    if-eqz p2, :cond_8e

    .line 4
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v3

    iput-object p0, p1, Lio/bidmachine/analytics/internal/u/f$c;->a:Ljava/lang/Object;

    iput v2, p1, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    invoke-virtual {p2, v3, v4, p1}, Lio/bidmachine/analytics/internal/u/b;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_55

    return-object v0

    :cond_55
    move-object p1, p0

    .line 5
    :goto_56
    check-cast p2, Lio/bidmachine/analytics/internal/u/a;

    .line 8
    invoke-direct {p1}, Lio/bidmachine/analytics/internal/u/f;->d()Lio/bidmachine/analytics/internal/u/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/bidmachine/analytics/internal/u/g;->a(Lio/bidmachine/analytics/internal/u/a;)V

    .line 9
    iget-object p1, p1, Lio/bidmachine/analytics/internal/u/f;->k:Lio/bidmachine/analytics/internal/u/e;

    if-eqz p2, :cond_71

    if-eqz p1, :cond_71

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/e;->a()Ljava/lang/Object;

    .line 12
    sget-object v0, Lio/bidmachine/analytics/internal/v/b;->a:Lio/bidmachine/analytics/internal/v/b;

    invoke-virtual {v0, p2}, Lio/bidmachine/analytics/internal/v/b;->a(Lio/bidmachine/analytics/internal/u/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/u/e;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    :cond_71
    if-eqz p2, :cond_86

    .line 16
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/u/a;->f()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 19
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/u/a;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_7e
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Data is empty"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_86
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Data not received yet"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not configured"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 51
    const-string v0, "iap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 54
    :cond_a
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->k:Lio/bidmachine/analytics/internal/u/e;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/e;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, p1

    :goto_1a
    check-cast v0, Ljava/lang/Boolean;

    :cond_1c
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/bidmachine/analytics/internal/r/a$a;)V
    .registers 12

    .line 23
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/r/a;->a(Lio/bidmachine/analytics/internal/r/a$a;)V

    .line 24
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/f;->i:Landroid/content/Context;

    if-eqz v0, :cond_15a

    .line 25
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/r/a$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Reader "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12d

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/r/a$a;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 27
    instance-of v1, p1, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;

    if-eqz v1, :cond_10b

    .line 28
    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/analytics/internal/I/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "-"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_103

    .line 30
    sget-object v2, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v4

    if-eqz v4, :cond_fb

    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 32
    iget-object v2, p0, Lio/bidmachine/analytics/internal/u/f;->j:Lio/bidmachine/analytics/internal/u/b;

    if-nez v2, :cond_79

    iget-object v2, p0, Lio/bidmachine/analytics/internal/u/f;->h:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/bidmachine/analytics/internal/u/b;

    .line 33
    :cond_79
    iput-object v2, p0, Lio/bidmachine/analytics/internal/u/f;->j:Lio/bidmachine/analytics/internal/u/b;

    .line 34
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/u/b;->l()Lio/bidmachine/analytics/internal/a/f;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 35
    invoke-virtual {v0, v4}, Lio/bidmachine/analytics/internal/a/f;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_cb

    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/a/f;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_cb

    .line 36
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/u/b;->u()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 37
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/u/b;->t()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 38
    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getShouldReport()Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/analytics/internal/u/f;->l:Z

    .line 39
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/f;->k:Lio/bidmachine/analytics/internal/u/e;

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/e;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 40
    :cond_aa
    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule$PurRule;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b7

    sget-object v0, Lio/bidmachine/analytics/internal/u/e;->c:Lio/bidmachine/analytics/internal/u/e$a;

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/u/e$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/u/e;

    move-result-object p1

    goto :goto_b8

    :cond_b7
    const/4 p1, 0x0

    :goto_b8
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->k:Lio/bidmachine/analytics/internal/u/e;

    return-void

    .line 41
    :cond_bb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No permission"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_c3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No host found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_cb
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported by config"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_eb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Version not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_f3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max version not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_fb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Min version not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_103
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Path should contains min and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_10b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accept only PurRule"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_12d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should contains only one rule, received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/r/a$a;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_15a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/r/a$a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/u/f;->a(Lio/bidmachine/analytics/internal/r/a$a;)V

    return-void
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/u/f;->l:Z

    return v0
.end method

.method public d(Landroid/content/Context;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->i:Landroid/content/Context;

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/r/a;->e(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/f;->j:Lio/bidmachine/analytics/internal/u/b;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/b;->j()V

    :cond_a
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/f;->j:Lio/bidmachine/analytics/internal/u/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/b;->i()V

    .line 2
    :cond_7
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/r/a;->f(Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.u.f.a (io.bidmachine.analytics.internal.u.f$a)
.class final Lio/bidmachine/analytics/internal/u/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/f;-><init>(Lio/bidmachine/analytics/internal/a/a;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/f$a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/f$a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/f$a;->a:Lio/bidmachine/analytics/internal/u/f$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/u/b;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/u/f$a;->a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/u/b;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.u.f.b (io.bidmachine.analytics.internal.u.f$b)
.class public final Lio/bidmachine/analytics/internal/u/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/f$b;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.u.f.c (io.bidmachine.analytics.internal.u.f$c)
.class final Lio/bidmachine/analytics/internal/u/f$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/f;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/internal/u/f;

.field d:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/f;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f$c;->c:Lio/bidmachine/analytics/internal/u/f;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/f$c;->b:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/u/f$c;->d:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/f$c;->c:Lio/bidmachine/analytics/internal/u/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/bidmachine/analytics/internal/u/f;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
