###### Class com.ironsource.C2 (com.ironsource.C2)
.class public Lcom/ironsource/C2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/C2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Lcom/ironsource/mediationsdk/e;

.field private final d:Lcom/ironsource/p2;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V
    .registers 7

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/e;

    new-instance v1, Lcom/ironsource/mediationsdk/f;

    invoke-virtual {p2}, Lcom/ironsource/x0;->e()Lcom/ironsource/A2;

    move-result-object p2

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSessionId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p2, v2}, Lcom/ironsource/mediationsdk/f;-><init>(Lcom/ironsource/A2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/e;-><init>(Lcom/ironsource/mediationsdk/f;)V

    iput-object v0, p0, Lcom/ironsource/C2;->c:Lcom/ironsource/mediationsdk/e;

    .line 8
    new-instance p2, Lcom/ironsource/p2;

    invoke-direct {p2, p1, v0}, Lcom/ironsource/p2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/mediationsdk/e;)V

    iput-object p2, p0, Lcom/ironsource/C2;->d:Lcom/ironsource/p2;

    return-void
.end method

.method private final a(Lcom/ironsource/a2;I)Lcom/ironsource/mediationsdk/h;
    .registers 5

    .line 13
    new-instance v0, Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/h;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 14
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->b(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q2;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q2;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/List;)V

    .line 17
    iget-object v1, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/T0;->h()Lcom/ironsource/Q0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/j2;)V

    .line 18
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(I)V

    .line 19
    iget-object p2, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {p2}, Lcom/ironsource/T0;->k()Lcom/ironsource/ia;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/ia;)V

    .line 21
    iget-object p2, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->g()Lcom/ironsource/Tf;

    move-result-object p2

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Lcom/ironsource/Tf;->c()Z

    move-result p2

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    .line 22
    :goto_53
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->e(Z)V

    .line 24
    iget-object p2, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->d()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(Ljava/lang/Double;)V

    .line 26
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/q2;->c()Lcom/ironsource/A;

    move-result-object p1

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/ironsource/A;->p()Ljava/lang/String;

    move-result-object p1

    goto :goto_73

    :cond_72
    const/4 p1, 0x0

    .line 27
    :goto_73
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->d(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {p1}, Lcom/ironsource/T0;->i()Lcom/ironsource/s2;

    move-result-object p1

    if-eqz p1, :cond_81

    invoke-interface {p1, v0}, Lcom/ironsource/s2;->a(Lcom/ironsource/mediationsdk/h;)V

    :cond_81
    return-object v0
.end method

.method private final a()Ljava/lang/String;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v1, v2, v1}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lcom/ironsource/C2;Lcom/ironsource/a2;Lcom/ironsource/D2;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/C2;->b(Lcom/ironsource/a2;Lcom/ironsource/D2;)V

    return-void
.end method

.method private final a(Lcom/ironsource/a2;Lcom/ironsource/D2;)V
    .registers 4

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/a2;->f()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/ironsource/C2;->b(Lcom/ironsource/a2;Lcom/ironsource/D2;)V

    return-void

    .line 11
    :cond_a
    new-instance v0, Lcom/ironsource/C2$b;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/C2$b;-><init>(Lcom/ironsource/C2;Lcom/ironsource/D2;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2$d;)V

    return-void
.end method

.method private final b(Lcom/ironsource/a2;Lcom/ironsource/D2;)V
    .registers 7

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q2;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auction waterfallString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/C2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/a2;->g()Z

    move-result v1

    if-nez v1, :cond_56

    .line 8
    const-string p1, "auction failed - no candidates"

    invoke-direct {p0, p1}, Lcom/ironsource/C2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {p1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object p1

    const/16 v0, 0x3ed

    const-string v1, "No candidates available for auctioning"

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/b2;->a(ILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {p1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/A0;->e(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    .line 14
    const-string v0, "no available ad to load"

    invoke-interface {p2, p1, v0}, Lcom/ironsource/D2;->a(ILjava/lang/String;)V

    return-void

    .line 18
    :cond_56
    iget-object v0, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q2;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/ironsource/b2;->b(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->g()I

    move-result v0

    .line 23
    invoke-virtual {p1}, Lcom/ironsource/a2;->d()Lcom/ironsource/q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/q2;->c()Lcom/ironsource/A;

    move-result-object v1

    .line 25
    new-instance v2, Lcom/ironsource/C2$c;

    invoke-direct {v2, p2, p1, v1}, Lcom/ironsource/C2$c;-><init>(Lcom/ironsource/D2;Lcom/ironsource/a2;Lcom/ironsource/A;)V

    .line 67
    iget-object p2, p0, Lcom/ironsource/C2;->c:Lcom/ironsource/mediationsdk/e;

    .line 68
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/ironsource/C2;->a(Lcom/ironsource/a2;I)Lcom/ironsource/mediationsdk/h;

    move-result-object p1

    .line 70
    invoke-virtual {p2, v1, p1, v2}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V

    return-void
.end method

.method private final c()Lcom/ironsource/Dd;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ironsource/C2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_1a
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->H()Lcom/ironsource/Cd;

    move-result-object v0

    return-object v0

    .line 6
    :cond_25
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->C()Lcom/ironsource/Cd;

    move-result-object v0

    return-object v0
.end method

.method private final d()Lcom/ironsource/m6;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/C2;->c()Lcom/ironsource/Dd;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/Dd;->a(Ljava/lang/String;)Lcom/ironsource/m6;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ironsource/D2;)V
    .registers 6

    const-string v0, "completionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-direct {p0}, Lcom/ironsource/C2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->b()Lcom/ironsource/b2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->d()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/b2;->a(Ljava/lang/Double;)V

    .line 4
    invoke-direct {p0}, Lcom/ironsource/C2;->d()Lcom/ironsource/m6;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/ironsource/a2;

    iget-object v2, p0, Lcom/ironsource/C2;->a:Lcom/ironsource/T0;

    iget-object v3, p0, Lcom/ironsource/C2;->b:Lcom/ironsource/x0;

    invoke-direct {v1, v2, v3, v0}, Lcom/ironsource/a2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;)V

    .line 6
    invoke-direct {p0, v1, p1}, Lcom/ironsource/C2;->a(Lcom/ironsource/a2;Lcom/ironsource/D2;)V

    return-void
.end method

.method public final b()Lcom/ironsource/p2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/C2;->d:Lcom/ironsource/p2;

    return-object v0
.end method

###### Class com.ironsource.C2.a (com.ironsource.C2$a)
.class public final synthetic Lcom/ironsource/C2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/C2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay$AdFormat;->values()[Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/ironsource/C2$a;->a:[I

    return-void
.end method

###### Class com.ironsource.C2.b (com.ironsource.C2$b)
.class public final Lcom/ironsource/C2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/a2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/C2;->a(Lcom/ironsource/a2;Lcom/ironsource/D2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/C2;

.field final synthetic b:Lcom/ironsource/D2;


# direct methods
.method public constructor <init>(Lcom/ironsource/C2;Lcom/ironsource/D2;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/C2$b;->a:Lcom/ironsource/C2;

    iput-object p2, p0, Lcom/ironsource/C2$b;->b:Lcom/ironsource/D2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/a2;)V
    .registers 4

    const-string v0, "auction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/C2$b;->a:Lcom/ironsource/C2;

    iget-object v1, p0, Lcom/ironsource/C2$b;->b:Lcom/ironsource/D2;

    invoke-static {v0, p1, v1}, Lcom/ironsource/C2;->a(Lcom/ironsource/C2;Lcom/ironsource/a2;Lcom/ironsource/D2;)V

    return-void
.end method

.method public a(Lcom/ironsource/a2;Ljava/lang/String;)V
    .registers 4

    const-string v0, "auction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/ironsource/C2$b;->a:Lcom/ironsource/C2;

    iget-object v0, p0, Lcom/ironsource/C2$b;->b:Lcom/ironsource/D2;

    invoke-static {p2, p1, v0}, Lcom/ironsource/C2;->a(Lcom/ironsource/C2;Lcom/ironsource/a2;Lcom/ironsource/D2;)V

    return-void
.end method

###### Class com.ironsource.C2.c (com.ironsource.C2$c)
.class public final Lcom/ironsource/C2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/C2;->b(Lcom/ironsource/a2;Lcom/ironsource/D2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/D2;

.field final synthetic b:Lcom/ironsource/a2;

.field final synthetic c:Lcom/ironsource/A;


# direct methods
.method public constructor <init>(Lcom/ironsource/D2;Lcom/ironsource/a2;Lcom/ironsource/A;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    iput-object p2, p0, Lcom/ironsource/C2$c;->b:Lcom/ironsource/a2;

    iput-object p3, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;J)V
    .registers 16

    const-string v0, "auctionFallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    .line 20
    iget-object v8, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 21
    invoke-interface/range {v1 .. v8}, Lcom/ironsource/D2;->a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "newWaterfall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/ironsource/C2$c;->a:Lcom/ironsource/D2;

    .line 3
    iget-object v0, p0, Lcom/ironsource/C2$c;->b:Lcom/ironsource/a2;

    invoke-virtual {v0}, Lcom/ironsource/a2;->c()Ljava/util/Map;

    move-result-object v3

    .line 12
    iget-object v13, p0, Lcom/ironsource/C2$c;->c:Lcom/ironsource/A;

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    .line 13
    invoke-interface/range {v1 .. v13}, Lcom/ironsource/D2;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void
.end method
