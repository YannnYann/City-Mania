###### Class com.ironsource.C3883v0 (com.ironsource.v0)
.class public final Lcom/ironsource/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/K3;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdUnitCappingServiceConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdUnitCappingServiceConfig.kt\ncom/unity3d/mediation/internal/AdUnitCappingServiceConfig\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,71:1\n32#2:72\n32#2,2:73\n33#2:75\n*S KotlinDebug\n*F\n+ 1 AdUnitCappingServiceConfig.kt\ncom/unity3d/mediation/internal/AdUnitCappingServiceConfig\n*L\n24#1:72\n25#1:73,2\n24#1:75\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/yb;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/yb;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/yb;",
            "Ljava/util/Map<",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Lcom/ironsource/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormatsConfigurations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/v0;->a:Lcom/ironsource/yb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/v0;->b:Ljava/util/Map;

    return-void
.end method

.method private final a(Lcom/ironsource/t7$a;Ljava/lang/String;Lcom/ironsource/t$b;)V
    .registers 8

    .line 101
    invoke-virtual {p3}, Lcom/ironsource/t$b;->b()Lcom/ironsource/H3;

    move-result-object p3

    if-eqz p3, :cond_20

    .line 102
    sget-object v0, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    .line 105
    new-instance v1, Lcom/ironsource/E3;

    invoke-virtual {p3}, Lcom/ironsource/H3;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3}, Lcom/ironsource/H3;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ironsource/H3;->c()Lcom/ironsource/M3;

    move-result-object p3

    invoke-direct {v1, v2, v3, p3}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    .line 106
    invoke-interface {p1, p2, v0, v1}, Lcom/ironsource/t7$a;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/v0;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/ironsource/N3;)V

    :cond_20
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/String;Lcom/ironsource/N3;)V
    .registers 5

    .line 109
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 110
    new-instance v0, Lcom/ironsource/I3;

    invoke-direct {v0}, Lcom/ironsource/I3;-><init>()V

    invoke-virtual {v0, p3}, Lcom/ironsource/I3;->a(Lcom/ironsource/N3;)I

    move-result p3

    .line 111
    iget-object v0, p0, Lcom/ironsource/v0;->a:Lcom/ironsource/yb;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Lcom/ironsource/yb;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    return-void
.end method

.method private final b(Lcom/ironsource/t7$a;Ljava/lang/String;Lcom/ironsource/t$b;)V
    .registers 8

    .line 1
    invoke-virtual {p3}, Lcom/ironsource/t$b;->e()Lcom/ironsource/hd;

    move-result-object p3

    if-eqz p3, :cond_20

    .line 2
    sget-object v0, Lcom/ironsource/N3;->a:Lcom/ironsource/N3;

    .line 5
    new-instance v1, Lcom/ironsource/E3;

    invoke-virtual {p3}, Lcom/ironsource/hd;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3}, Lcom/ironsource/hd;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ironsource/hd;->c()Lcom/ironsource/M3;

    move-result-object p3

    invoke-direct {v1, v2, v3, p3}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    .line 6
    invoke-interface {p1, p2, v0, v1}, Lcom/ironsource/t7$a;->a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/v0;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/ironsource/N3;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/t7$a;)V
    .registers 6

    const-string v0, "cappingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/v0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/t;

    .line 50
    invoke-virtual {v1}, Lcom/ironsource/t;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 98
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/t$b;

    .line 99
    invoke-direct {p0, p1, v3, v2}, Lcom/ironsource/v0;->a(Lcom/ironsource/t7$a;Ljava/lang/String;Lcom/ironsource/t$b;)V

    .line 100
    invoke-direct {p0, p1, v3, v2}, Lcom/ironsource/v0;->b(Lcom/ironsource/t7$a;Ljava/lang/String;Lcom/ironsource/t$b;)V

    goto :goto_2d

    :cond_4c
    return-void
.end method
