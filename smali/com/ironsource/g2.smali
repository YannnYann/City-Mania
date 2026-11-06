###### Class com.ironsource.C3611g2 (com.ironsource.g2)
.class public final Lcom/ironsource/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/h2;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuctionDataReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuctionDataReporter.kt\ncom/unity3d/ironsourceads/internal/auction/AuctionDataReporter\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,50:1\n32#2,2:51\n*S KotlinDebug\n*F\n+ 1 AuctionDataReporter.kt\ncom/unity3d/ironsourceads/internal/auction/AuctionDataReporter\n*L\n34#1:51,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/w9;

.field private final b:Lcom/ironsource/mediationsdk/d;

.field private final c:Lcom/ironsource/o2;


# direct methods
.method public constructor <init>(Lcom/ironsource/w9;Lcom/ironsource/mediationsdk/d;Lcom/ironsource/o2;)V
    .registers 5

    const-string v0, "instanceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionDataUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/g2;->a:Lcom/ironsource/w9;

    .line 3
    iput-object p2, p0, Lcom/ironsource/g2;->b:Lcom/ironsource/mediationsdk/d;

    .line 4
    iput-object p3, p0, Lcom/ironsource/g2;->c:Lcom/ironsource/o2;

    return-void
.end method

.method private final a(Ljava/util/List;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 19
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    .line 23
    iget-object v0, p0, Lcom/ironsource/g2;->a:Lcom/ironsource/w9;

    invoke-virtual {v0}, Lcom/ironsource/w9;->e()Ljava/lang/String;

    move-result-object v3

    .line 24
    iget-object v0, p0, Lcom/ironsource/g2;->a:Lcom/ironsource/w9;

    invoke-virtual {v0}, Lcom/ironsource/w9;->f()I

    move-result v4

    .line 25
    iget-object v0, p0, Lcom/ironsource/g2;->a:Lcom/ironsource/w9;

    invoke-virtual {v0}, Lcom/ironsource/w9;->d()Ljava/lang/String;

    move-result-object v5

    .line 26
    const-string v8, ""

    const-string v9, ""

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v1 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/ironsource/g2;->b:Lcom/ironsource/mediationsdk/d;

    iget-object v2, p0, Lcom/ironsource/g2;->a:Lcom/ironsource/w9;

    invoke-virtual {v2}, Lcom/ironsource/w9;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/g2;->c:Lcom/ironsource/o2;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ironsource/o2;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_13
    invoke-direct {p0, v0, p1}, Lcom/ironsource/g2;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/g2;->c:Lcom/ironsource/o2;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ironsource/o2;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_13
    invoke-direct {p0, v0, p1}, Lcom/ironsource/g2;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/g2;->c:Lcom/ironsource/o2;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/ironsource/o2;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_13
    invoke-direct {p0, v0, p1}, Lcom/ironsource/g2;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
