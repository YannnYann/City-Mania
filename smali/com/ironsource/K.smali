###### Class com.ironsource.K (com.ironsource.K)
.class public final Lcom/ironsource/K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdInstanceSessionPerformance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdInstanceSessionPerformance.kt\ncom/unity3d/mediation/internal/services/AdInstanceSessionPerformance\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1563#2:40\n1634#2,3:41\n*S KotlinDebug\n*F\n+ 1 AdInstanceSessionPerformance.kt\ncom/unity3d/mediation/internal/services/AdInstanceSessionPerformance\n*L\n36#1:40\n36#1:41,3\n*E\n"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ironsource/K;->a:I

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/K;->b:Ljava/util/List;

    return-void
.end method

.method private final a()Z
    .registers 3

    .line 11
    invoke-direct {p0}, Lcom/ironsource/K;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ironsource/K;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ironsource/K;->a:I

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private final b()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/K;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final c()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/ironsource/K;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/ironsource/I;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/K;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-direct {p0}, Lcom/ironsource/K;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lcom/ironsource/K;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    :cond_12
    if-nez p1, :cond_1b

    .line 9
    new-instance p1, Lcom/ironsource/I;

    sget-object v0, Lcom/ironsource/r0$a;->f:Lcom/ironsource/r0$a;

    invoke-direct {p1, v0}, Lcom/ironsource/I;-><init>(Lcom/ironsource/r0$a;)V

    .line 10
    :cond_1b
    iget-object v0, p0, Lcom/ironsource/K;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/ironsource/K;->b:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/ironsource/I;

    .line 8
    invoke-virtual {v2}, Lcom/ironsource/I;->b()Lcom/ironsource/r0$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_2d
    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 15
    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
