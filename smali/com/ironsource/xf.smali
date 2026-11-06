###### Class com.ironsource.C3934xf (com.ironsource.xf)
.class public final Lcom/ironsource/xf;
.super Lcom/ironsource/K4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowPriorityAdInstanceLoadStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowPriorityAdInstanceLoadStrategy.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/ShowPriorityAdInstanceLoadStrategy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n774#2:34\n865#2,2:35\n1#3:37\n*S KotlinDebug\n*F\n+ 1 ShowPriorityAdInstanceLoadStrategy.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/ShowPriorityAdInstanceLoadStrategy\n*L\n27#1:34\n27#1:35,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ironsource/x0;Lcom/ironsource/Mg;)V
    .registers 4

    const-string v0, "adUnitData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallInstances"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/K4;-><init>(Lcom/ironsource/x0;Lcom/ironsource/Mg;)V

    return-void
.end method

.method private final a(Lcom/ironsource/Mg;)I
    .registers 5

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/Mg;->b()Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ironsource/A;

    .line 13
    invoke-virtual {v2}, Lcom/ironsource/A;->x()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 22
    :cond_24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 p1, 0x0

    goto :goto_5b

    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A;

    invoke-direct {p0, v0}, Lcom/ironsource/xf;->b(Lcom/ironsource/A;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/A;

    invoke-direct {p0, v1}, Lcom/ironsource/xf;->b(Lcom/ironsource/A;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3e

    move-object v0, v1

    goto :goto_3e

    :cond_5a
    move-object p1, v0

    :goto_5b
    if-eqz p1, :cond_62

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_62
    const p1, 0x7fffffff

    return p1
.end method

.method private final b(Lcom/ironsource/A;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/A;->h()Lcom/ironsource/y2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/y2;->l()I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/ironsource/A;Lcom/ironsource/Mg;)Z
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallInstances"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lcom/ironsource/xf;->a(Lcom/ironsource/Mg;)I

    move-result p2

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/xf;->b(Lcom/ironsource/A;)I

    move-result p1

    if-ge p2, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
