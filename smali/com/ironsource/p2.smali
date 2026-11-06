###### Class com.ironsource.C3772p2 (com.ironsource.p2)
.class public final Lcom/ironsource/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/cd;


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/mediationsdk/e;

.field private c:Z


# direct methods
.method public static synthetic $r8$lambda$omxctzYn-LH1mXQ4nEAvRFqhiyM(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/p2;->a(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/mediationsdk/e;)V
    .registers 4

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/p2;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/p2;->b:Lcom/ironsource/mediationsdk/e;

    return-void
.end method

.method private static final a(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V
    .registers 7

    .line 47
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 48
    iget-object p0, p0, Lcom/ironsource/p2;->a:Lcom/ironsource/T0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImpressionSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 51
    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;->onImpressionSuccess(Lcom/ironsource/c9;)V

    return-void
.end method

.method private final a(Lcom/ironsource/ta;Lcom/ironsource/A;)V
    .registers 6

    .line 36
    new-instance v0, Lcom/ironsource/c9;

    invoke-virtual {p2}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/ironsource/c9;-><init>(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 38
    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/ironsource/ta;->a()Ljava/util/HashSet;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    .line 40
    iget-object v1, p0, Lcom/ironsource/p2;->a:Lcom/ironsource/T0;

    new-instance v2, Lcom/ironsource/p2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0}, Lcom/ironsource/p2$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/yb;->b(Ljava/lang/Runnable;)V

    .line 46
    iget-object p2, p0, Lcom/ironsource/p2;->a:Lcom/ironsource/T0;

    invoke-virtual {p2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ironsource/pg;->a(Lcom/ironsource/c9;)V

    goto :goto_16

    :cond_3a
    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/A;Ljava/lang/String;Lcom/ironsource/ta;)V
    .registers 8

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherDataHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/p2;->b:Lcom/ironsource/mediationsdk/e;

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/A;->h()Lcom/ironsource/y2;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/A;->r()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/A;->m()Lcom/ironsource/y2;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/y2;ILcom/ironsource/y2;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p3, p1}, Lcom/ironsource/p2;->a(Lcom/ironsource/ta;Lcom/ironsource/A;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/ironsource/A;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/A;",
            ">;",
            "Lcom/ironsource/A;",
            ")V"
        }
    .end annotation

    const-string v0, "waterfallInstances"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "winnerInstance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/ironsource/p2;->c:Z

    if-nez v0, :cond_5c

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/ironsource/p2;->c:Z

    .line 15
    invoke-virtual {p2}, Lcom/ironsource/A;->h()Lcom/ironsource/y2;

    move-result-object v6

    .line 16
    iget-object v0, p0, Lcom/ironsource/p2;->b:Lcom/ironsource/mediationsdk/e;

    .line 18
    invoke-virtual {p2}, Lcom/ironsource/A;->r()I

    move-result v1

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/A;->m()Lcom/ironsource/y2;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v6, v1, v2}, Lcom/ironsource/mediationsdk/e;->a(Lcom/ironsource/y2;ILcom/ironsource/y2;)V

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A;

    .line 27
    invoke-virtual {v0}, Lcom/ironsource/A;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v0}, Lcom/ironsource/A;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/A;->h()Lcom/ironsource/y2;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 30
    :cond_4f
    iget-object v1, p0, Lcom/ironsource/p2;->b:Lcom/ironsource/mediationsdk/e;

    .line 33
    invoke-virtual {p2}, Lcom/ironsource/A;->r()I

    move-result v4

    .line 34
    invoke-virtual {p2}, Lcom/ironsource/A;->m()Lcom/ironsource/y2;

    move-result-object v5

    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V

    :cond_5c
    return-void
.end method

###### Class com.ironsource.p2$$ExternalSyntheticLambda0 (com.ironsource.p2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/p2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/p2;

.field public final synthetic f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

.field public final synthetic f$2:Lcom/ironsource/c9;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p2;

    iput-object p2, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iput-object p3, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/c9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/p2;

    iget-object v1, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;

    iget-object v2, p0, Lcom/ironsource/p2$$ExternalSyntheticLambda0;->f$2:Lcom/ironsource/c9;

    invoke-static {v0, v1, v2}, Lcom/ironsource/p2;->$r8$lambda$omxctzYn-LH1mXQ4nEAvRFqhiyM(Lcom/ironsource/p2;Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;Lcom/ironsource/c9;)V

    return-void
.end method
