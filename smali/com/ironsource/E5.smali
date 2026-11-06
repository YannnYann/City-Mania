###### Class com.ironsource.E5 (com.ironsource.E5)
.class public final Lcom/ironsource/E5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/D0;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventSender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventSender.kt\ncom/unity3d/mediation/internal/ads/tools/EventSender\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,54:1\n32#2,2:55\n*S KotlinDebug\n*F\n+ 1 EventSender.kt\ncom/unity3d/mediation/internal/ads/tools/EventSender\n*L\n38#1:55,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/IronSource$a;

.field private final b:Lcom/ironsource/E0;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/D0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/e9;

.field private final e:Lcom/ironsource/Cb;

.field private final f:Lcom/ironsource/lg;

.field private final g:Lcom/ironsource/b2;

.field private final h:Lcom/ironsource/N;

.field private final i:Lcom/ironsource/pg;

.field private final j:Lcom/ironsource/ad;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Ljava/util/List;Lcom/ironsource/r3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            "Lcom/ironsource/E0$b;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/D0;",
            ">;",
            "Lcom/ironsource/r3;",
            ")V"
        }
    .end annotation

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsInterfaces"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/E5;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 9
    new-instance v0, Lcom/ironsource/E0;

    invoke-direct {v0, p1, p2, p0, p4}, Lcom/ironsource/E0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Lcom/ironsource/D0;Lcom/ironsource/r3;)V

    iput-object v0, p0, Lcom/ironsource/E5;->b:Lcom/ironsource/E0;

    .line 10
    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/E5;->c:Ljava/util/List;

    .line 13
    iget-object p1, v0, Lcom/ironsource/E0;->e:Lcom/ironsource/e9;

    const-string p2, "init"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->d:Lcom/ironsource/e9;

    .line 14
    iget-object p1, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    const-string p2, "load"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->e:Lcom/ironsource/Cb;

    .line 15
    iget-object p1, v0, Lcom/ironsource/E0;->g:Lcom/ironsource/lg;

    const-string p2, "token"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->f:Lcom/ironsource/lg;

    .line 16
    iget-object p1, v0, Lcom/ironsource/E0;->h:Lcom/ironsource/b2;

    const-string p2, "auction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->g:Lcom/ironsource/b2;

    .line 17
    iget-object p1, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    const-string p2, "adInteraction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->h:Lcom/ironsource/N;

    .line 18
    iget-object p1, v0, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    const-string p2, "troubleshoot"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->i:Lcom/ironsource/pg;

    .line 19
    iget-object p1, v0, Lcom/ironsource/E0;->k:Lcom/ironsource/ad;

    const-string p2, "operational"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/E5;->j:Lcom/ironsource/ad;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Ljava/util/List;Lcom/ironsource/r3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_8

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_d

    const/4 p4, 0x0

    .line 21
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/E5;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Ljava/util/List;Lcom/ironsource/r3;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/N;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->h:Lcom/ironsource/N;

    return-object v0
.end method

.method public a(Lcom/ironsource/B0;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/B0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ironsource/E5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 20
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/D0;

    .line 21
    invoke-interface {v2, p1}, Lcom/ironsource/D0;->a(Lcom/ironsource/B0;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "getEventsAdditionalDataMap(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_10

    :cond_29
    return-object v0
.end method

.method public final a(Lcom/ironsource/D0;)V
    .registers 3

    const-string v0, "eventInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ironsource/E5;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 23
    iget-object p1, p0, Lcom/ironsource/E5;->e:Lcom/ironsource/Cb;

    invoke-virtual {p1, v0}, Lcom/ironsource/Cb;->a(Z)V

    return-void

    :cond_9
    if-nez p1, :cond_1e

    .line 25
    iget-object p1, p0, Lcom/ironsource/E5;->a:Lcom/ironsource/mediationsdk/IronSource$a;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/ironsource/E5;->e:Lcom/ironsource/Cb;

    invoke-virtual {p1}, Lcom/ironsource/Cb;->d()V

    return-void

    :cond_17
    iget-object p1, p0, Lcom/ironsource/E5;->e:Lcom/ironsource/Cb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/Cb;->a(Z)V

    return-void

    .line 26
    :cond_1e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/ironsource/b2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->g:Lcom/ironsource/b2;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/D0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/ironsource/e9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->d:Lcom/ironsource/e9;

    return-object v0
.end method

.method public final e()Lcom/ironsource/Cb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->e:Lcom/ironsource/Cb;

    return-object v0
.end method

.method public final f()Lcom/ironsource/ad;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->j:Lcom/ironsource/ad;

    return-object v0
.end method

.method public final g()Lcom/ironsource/lg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->f:Lcom/ironsource/lg;

    return-object v0
.end method

.method public final h()Lcom/ironsource/pg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E5;->i:Lcom/ironsource/pg;

    return-object v0
.end method
