###### Class com.ironsource.Ma (com.ironsource.Ma)
.class public final Lcom/ironsource/Ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Sa;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayBannerReloadAdUnitStrategyNotVisiblePausedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayBannerReloadAdUnitStrategyNotVisiblePausedState.kt\ncom/unity3d/mediation/internal/ads/banner/strategy/bannerReloadAdUnitStrategy/states/LevelPlayBannerReloadAdUnitStrategyNotVisiblePausedState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Ja;

.field private final b:Lcom/ironsource/S2;

.field private final c:Ljava/lang/Long;

.field private d:Lcom/ironsource/Ff$a;

.field private final e:J


# direct methods
.method public static synthetic $r8$lambda$F4spncTISVVLzUCWQN6UG3YcFVk(Lcom/ironsource/Ma;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Ma;->b(Lcom/ironsource/Ma;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JRH-mN2Q5WMbJRy-lC8jWV0jgao(Lcom/ironsource/Ma;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Ma;->a(Lcom/ironsource/Ma;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kruJZHeNKx4I_UKueHZoJc0PTac(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/Ma;->a(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V
    .registers 5

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Ma;->b:Lcom/ironsource/S2;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Ma;->c:Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object p2

    invoke-interface {p2}, Lcom/ironsource/t4;->a()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ironsource/Ma;->e:J

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/Ja;->q()V

    .line 12
    invoke-direct {p0}, Lcom/ironsource/Ma;->e()V

    return-void
.end method

.method private static final a(Lcom/ironsource/Ma;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->j()Lcom/ironsource/d3;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/Fg;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/ironsource/Ma;->e:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lcom/ironsource/Ma;->c:Ljava/lang/Long;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    goto :goto_2c

    :cond_2a
    const-wide/16 v4, 0x0

    .line 6
    :goto_2c
    new-instance v6, Lcom/ironsource/m3$c;

    .line 9
    new-instance v7, Lcom/ironsource/m3$d$f;

    invoke-direct {v7, v2, v3}, Lcom/ironsource/m3$d$f;-><init>(J)V

    .line 10
    invoke-direct {v6, v4, v5, v7}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    .line 15
    iget-object v2, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v2}, Lcom/ironsource/Ja;->a()Lcom/ironsource/p0;

    move-result-object v2

    new-instance v3, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v6, v0, v1}, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V

    invoke-virtual {v2, v3}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_45
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->a()Lcom/ironsource/p0;

    move-result-object v0

    new-instance v1, Lcom/ironsource/Ma$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ironsource/Ma$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/Ma;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V
    .registers 5

    .line 23
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    .line 24
    iget-object p0, p0, Lcom/ironsource/Ma;->b:Lcom/ironsource/S2;

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 27
    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/Ja;->a(Lcom/ironsource/S2;Lcom/ironsource/m3;Ljava/lang/Long;)V

    return-void
.end method

.method private static final b(Lcom/ironsource/Ma;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Ma;->e()V

    return-void
.end method

.method private final e()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->p()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    invoke-virtual {v2}, Lcom/ironsource/Ja;->n()Lcom/ironsource/Ff;

    move-result-object v2

    new-instance v3, Lcom/ironsource/Ma$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/ironsource/Ma$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Ma;)V

    .line 25
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 26
    invoke-interface {v2, v3, v0, v1}, Lcom/ironsource/Ff;->a(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/ironsource/Ma;->d:Lcom/ironsource/Ff$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load success while paused not visible"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading a loaded ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 3
    iget-object p1, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load success while paused not visible"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ma;->d:Lcom/ironsource/Ff$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ironsource/Ff$a;->a()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/ironsource/Ma;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ma;->d:Lcom/ironsource/Ff$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ironsource/Ff$a;->a()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/ironsource/Ma;->a:Lcom/ironsource/Ja;

    .line 3
    new-instance v1, Lcom/ironsource/Oa;

    .line 4
    iget-object v2, p0, Lcom/ironsource/Ma;->b:Lcom/ironsource/S2;

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/ironsource/Oa;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public f()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.ironsource.Ma$$ExternalSyntheticLambda0 (com.ironsource.Ma$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Ma$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ma;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ma;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ma;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ma;

    invoke-static {v0}, Lcom/ironsource/Ma;->$r8$lambda$JRH-mN2Q5WMbJRy-lC8jWV0jgao(Lcom/ironsource/Ma;)V

    return-void
.end method

###### Class com.ironsource.Ma$$ExternalSyntheticLambda1 (com.ironsource.Ma$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/Ma$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ma;

.field public final synthetic f$1:Lcom/ironsource/m3$c;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Ma;

    iput-object p2, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/m3$c;

    iput-wide p3, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Ma;

    iget-object v1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$1:Lcom/ironsource/m3$c;

    iget-wide v2, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/Ma;->$r8$lambda$kruJZHeNKx4I_UKueHZoJc0PTac(Lcom/ironsource/Ma;Lcom/ironsource/m3$c;J)V

    return-void
.end method

###### Class com.ironsource.Ma$$ExternalSyntheticLambda2 (com.ironsource.Ma$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/Ma$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ma;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ma;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Ma;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ma$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Ma;

    invoke-static {v0}, Lcom/ironsource/Ma;->$r8$lambda$F4spncTISVVLzUCWQN6UG3YcFVk(Lcom/ironsource/Ma;)V

    return-void
.end method
