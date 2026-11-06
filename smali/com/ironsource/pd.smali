###### Class com.ironsource.C3787pd (com.ironsource.pd)
.class public final Lcom/ironsource/pd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlacementCappingServiceConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlacementCappingServiceConfig.kt\ncom/unity3d/mediation/internal/PlacementCappingServiceConfig\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,91:1\n32#2:92\n33#2:95\n216#3,2:93\n*S KotlinDebug\n*F\n+ 1 PlacementCappingServiceConfig.kt\ncom/unity3d/mediation/internal/PlacementCappingServiceConfig\n*L\n20#1:92\n20#1:95\n21#1:93,2\n*E\n"
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
    iput-object p1, p0, Lcom/ironsource/pd;->a:Lcom/ironsource/yb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/pd;->b:Ljava/util/Map;

    return-void
.end method

.method private final a(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V
    .registers 9

    .line 150
    invoke-virtual {p4}, Lcom/ironsource/t$b;->b()Lcom/ironsource/H3;

    move-result-object p4

    if-eqz p4, :cond_20

    .line 155
    sget-object v0, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    .line 156
    new-instance v1, Lcom/ironsource/E3;

    invoke-virtual {p4}, Lcom/ironsource/H3;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ironsource/H3;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4}, Lcom/ironsource/H3;->c()Lcom/ironsource/M3;

    move-result-object p4

    invoke-direct {v1, v2, v3, p4}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    .line 157
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/ironsource/O7$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    .line 162
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/pd;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;)V

    :cond_20
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;)V
    .registers 6

    .line 163
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 164
    new-instance v0, Lcom/ironsource/I3;

    invoke-direct {v0}, Lcom/ironsource/I3;-><init>()V

    invoke-virtual {v0, p4}, Lcom/ironsource/I3;->a(Lcom/ironsource/N3;)I

    move-result p4

    .line 165
    iget-object v0, p0, Lcom/ironsource/pd;->a:Lcom/ironsource/yb;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/ironsource/yb;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;ILjava/lang/String;)V

    :cond_18
    return-void
.end method

.method private final b(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V
    .registers 12

    .line 1
    sget-object v0, Lcom/ironsource/N3;->c:Lcom/ironsource/N3;

    .line 2
    new-instance v1, Lcom/ironsource/E3;

    invoke-virtual {p4}, Lcom/ironsource/t$b;->c()Lcom/ironsource/Q4;

    move-result-object p4

    if-eqz p4, :cond_14

    invoke-virtual {p4}, Lcom/ironsource/Q4;->a()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_12
    move-object v2, p4

    goto :goto_16

    :cond_14
    const/4 p4, 0x0

    goto :goto_12

    :goto_16
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/ironsource/O7$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/pd;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;)V

    return-void
.end method

.method private final c(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V
    .registers 9

    .line 1
    invoke-virtual {p4}, Lcom/ironsource/t$b;->e()Lcom/ironsource/hd;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 6
    sget-object v0, Lcom/ironsource/N3;->a:Lcom/ironsource/N3;

    .line 7
    new-instance v1, Lcom/ironsource/E3;

    invoke-virtual {p4}, Lcom/ironsource/hd;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4}, Lcom/ironsource/hd;->b()Ljava/lang/Integer;

    move-result-object p4

    sget-object v3, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    invoke-direct {v1, v2, p4, v3}, Lcom/ironsource/E3;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/ironsource/M3;)V

    .line 8
    invoke-interface {p1, p2, p3, v0, v1}, Lcom/ironsource/O7$a;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/pd;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/N3;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/O7$a;)V
    .registers 7

    const-string v0, "cappingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/pd;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/t;

    .line 74
    invoke-virtual {v1}, Lcom/ironsource/t;->c()Ljava/util/Map;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/t$b;

    .line 147
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/pd;->b(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V

    .line 148
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/pd;->a(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V

    .line 149
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/ironsource/pd;->c(Lcom/ironsource/O7$a;Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/t$b;)V

    goto :goto_33

    :cond_55
    return-void
.end method
