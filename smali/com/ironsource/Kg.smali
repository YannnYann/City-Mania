###### Class com.ironsource.Kg (com.ironsource.Kg)
.class public abstract Lcom/ironsource/Kg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Kg$a;,
        Lcom/ironsource/Kg$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/ironsource/Kg$a;


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Lcom/ironsource/cd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Kg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Kg$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Kg;->d:Lcom/ironsource/Kg$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V
    .registers 4

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    .line 6
    new-instance p1, Lcom/ironsource/Kg$c;

    invoke-direct {p1}, Lcom/ironsource/Kg$c;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Kg;->c:Lcom/ironsource/cd;

    return-void
.end method

.method private final a(Lcom/ironsource/y2;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 19

    move-object/from16 v0, p4

    .line 31
    iget-object v1, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {p1}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstanceName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/x0;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v6

    const/4 v1, 0x0

    if-nez v6, :cond_21

    .line 32
    invoke-virtual {p1}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, "Could not find matching provider settings for auction response item"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_21
    if-nez v0, :cond_30

    .line 43
    invoke-virtual {p1}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const-string v0, "Could not find matching adInstancePayload for auction response item"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_30
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {v3}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v3

    .line 54
    invoke-virtual {v1, v6, v2, v3}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    .line 57
    iget-object v1, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->g()I

    move-result v10

    .line 59
    new-instance v4, Lcom/ironsource/B;

    .line 60
    iget-object v5, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    .line 63
    new-instance v8, Lcom/ironsource/c1;

    .line 65
    invoke-virtual {v5, v6}, Lcom/ironsource/x0;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    .line 67
    invoke-direct {v8, v6, v1, v2}, Lcom/ironsource/c1;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$a;)V

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v9, p1

    move-object/from16 v7, p2

    .line 68
    invoke-direct/range {v4 .. v13}, Lcom/ironsource/B;-><init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p1, p3

    .line 78
    invoke-interface {p1, v4, v0}, Lcom/ironsource/D;->a(Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/ironsource/Kg;Ljava/util/List;Ljava/util/Map;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/A;ILjava/lang/Object;)Lcom/ironsource/Mg;
    .registers 14

    if-nez p7, :cond_12

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_7

    const/4 p5, 0x0

    :cond_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/Kg;->a(Ljava/util/List;Ljava/util/Map;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/A;)Lcom/ironsource/Mg;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createAdInstanceWaterfall"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - item = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    invoke-virtual {p2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->i(Ljava/lang/String;)V

    return-void
.end method

.method private final b()Lcom/ironsource/Dd;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/Kg$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 7
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    const-string v3, "Unable to reset preloaded instance"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1, v4}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-object v4

    .line 8
    :cond_27
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->H()Lcom/ironsource/Cd;

    move-result-object v0

    return-object v0

    .line 9
    :cond_32
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->C()Lcom/ironsource/Cd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/A;)Lcom/ironsource/Mg;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;",
            "Lcom/ironsource/v2;",
            "Lcom/ironsource/D;",
            "Lcom/ironsource/A;",
            ")",
            "Lcom/ironsource/Mg;"
        }
    .end annotation

    const-string v0, "waterfallItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstancePayloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstanceFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waterfall.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    :goto_41
    if-ge v2, v1, :cond_7f

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ironsource/y2;

    if-nez v5, :cond_63

    if-eqz p5, :cond_63

    .line 10
    invoke-virtual {p5}, Lcom/ironsource/A;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 12
    invoke-virtual {p5, v6}, Lcom/ironsource/A;->a(Lcom/ironsource/y2;)V

    .line 13
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_7c

    .line 16
    :cond_63
    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ironsource/H;

    .line 18
    invoke-direct {p0, v6, p3, p4, v7}, Lcom/ironsource/Kg;->a(Lcom/ironsource/y2;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object v6

    if-eqz v6, :cond_7c

    .line 20
    invoke-virtual {v6}, Lcom/ironsource/A;->g()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 21
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_7f
    if-eqz p5, :cond_86

    if-nez v5, :cond_86

    .line 26
    invoke-virtual {p0}, Lcom/ironsource/Kg;->c()V

    .line 28
    :cond_86
    new-instance p1, Lcom/ironsource/Mg;

    invoke-direct {p1, v0}, Lcom/ironsource/Mg;-><init>(Ljava/util/List;)V

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/Mg;->d()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateWaterfall() - next waterfall is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object p4, p0, Lcom/ironsource/Kg;->a:Lcom/ironsource/T0;

    invoke-static {p4, p2, v3, v4, v3}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Lcom/ironsource/cd;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Kg;->c:Lcom/ironsource/cd;

    return-object v0
.end method

.method public abstract a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V
.end method

.method public final c()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Kg;->b()Lcom/ironsource/Dd;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v1, p0, Lcom/ironsource/Kg;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ironsource/Dd;->a(Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.ironsource.Kg.a (com.ironsource.Kg$a)
.class public final Lcom/ironsource/Kg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/ironsource/Kg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/T0;Lcom/ironsource/x0;)Lcom/ironsource/Kg;
    .registers 4

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/ironsource/x0;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/ironsource/B2;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/B2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    return-object v0

    .line 2
    :cond_16
    new-instance v0, Lcom/ironsource/Lc;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/Lc;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    return-object v0
.end method

###### Class com.ironsource.Kg.b (com.ironsource.Kg$b)
.class public final synthetic Lcom/ironsource/Kg$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/ironsource/Kg$b;->a:[I

    return-void
.end method

###### Class com.ironsource.Kg.c (com.ironsource.Kg$c)
.class public final Lcom/ironsource/Kg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Kg;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
