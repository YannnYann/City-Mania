###### Class io.bidmachine.analytics.internal.u.a (io.bidmachine.analytics.internal.u.a)
.class public final Lio/bidmachine/analytics/internal/u/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/u/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/bidmachine/analytics/internal/u/a$a;

.field private final c:Lio/bidmachine/analytics/internal/u/a$a;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/u/a$a;Lio/bidmachine/analytics/internal/u/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    .line 7
    new-instance p1, Lio/bidmachine/analytics/internal/u/a$c;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/a$c;-><init>(Lio/bidmachine/analytics/internal/u/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a;->d:Lkotlin/Lazy;

    .line 19
    new-instance p1, Lio/bidmachine/analytics/internal/u/a$b;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/a$b;-><init>(Lio/bidmachine/analytics/internal/u/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/u/a;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/internal/u/a$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    return-object v0
.end method

.method public final e()Lio/bidmachine/analytics/internal/u/a$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/u/a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/u/a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/u/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    iget-object p1, p1, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a;->b:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a;->c:Lio/bidmachine/analytics/internal/u/a$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.a.C1149a (io.bidmachine.analytics.internal.u.a$a)
.class public final Lio/bidmachine/analytics/internal/u/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_8

    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_10

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_10
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_18

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 8
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/u/a$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/u/a$a;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/u/a$a;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/u/a$a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lio/bidmachine/analytics/internal/u/a$a;
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/a$a;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/analytics/internal/u/a$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/u/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/analytics/internal/u/a$a;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$a;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$a;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$a;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.a.b (io.bidmachine.analytics.internal.u.a$b)
.class final Lio/bidmachine/analytics/internal/u/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/a;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/u/a$a;Lio/bidmachine/analytics/internal/u/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/a$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 14
    const-string v2, "_"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/bidmachine/analytics/internal/u/a$b;->a:Lio/bidmachine/analytics/internal/u/a;

    invoke-static {v2}, Lio/bidmachine/analytics/internal/u/a;->a(Lio/bidmachine/analytics/internal/u/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.a.c (io.bidmachine.analytics.internal.u.a$c)
.class final Lio/bidmachine/analytics/internal/u/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/a;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/u/a$a;Lio/bidmachine/analytics/internal/u/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/a$c;->a:Lio/bidmachine/analytics/internal/u/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/a$c;->a:Lio/bidmachine/analytics/internal/u/a;

    .line 2
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ver"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/u/a$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "iaa"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/u/a$a;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "iah"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->c()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/u/a$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "iad"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/u/a$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "sua"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/u/a$a;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v3, "suh"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a;->e()Lio/bidmachine/analytics/internal/u/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/a$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v1, "sud"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/a$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
