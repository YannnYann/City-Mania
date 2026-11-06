###### Class com.ironsource.S2 (com.ironsource.S2)
.class public Lcom/ironsource/S2;
.super Lcom/ironsource/q0;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/S2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerAdUnit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerAdUnit.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/BannerAdUnit\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation


# instance fields
.field private final i:Lcom/ironsource/d9;

.field private final j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/V2;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/ironsource/S2$a;

.field private final l:Lcom/ironsource/T2;


# direct methods
.method public static synthetic $r8$lambda$L-MnAt6YAnOKVJHBVOm5FS8bar4(Lcom/ironsource/S2;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/S2;->a(Lcom/ironsource/S2;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/T2;Lcom/ironsource/V2;Lcom/ironsource/d9;)V
    .registers 6

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataListenerHolder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/q0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/J0;)V

    .line 2
    iput-object p4, p0, Lcom/ironsource/S2;->i:Lcom/ironsource/d9;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ironsource/S2;->j:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance p1, Lcom/ironsource/S2$a;

    invoke-direct {p1, p0}, Lcom/ironsource/S2$a;-><init>(Lcom/ironsource/S2;)V

    iput-object p1, p0, Lcom/ironsource/S2;->k:Lcom/ironsource/S2$a;

    .line 7
    iput-object p2, p0, Lcom/ironsource/S2;->l:Lcom/ironsource/T2;

    .line 10
    invoke-virtual {p0}, Lcom/ironsource/q0;->g()Lcom/ironsource/md;

    move-result-object p1

    .line 11
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_54

    .line 14
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_50

    goto :goto_54

    :cond_50
    const/4 p1, 0x0

    const/16 p2, 0x1fe

    goto :goto_7d

    .line 16
    :cond_54
    :goto_54
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    if-nez p1, :cond_5b

    .line 18
    const-string p1, "placement is null"

    goto :goto_5d

    :cond_5b
    const-string p1, "placement name is empty"

    :goto_5d
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    .line 19
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "can\'t load banner - %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Lcom/ironsource/T2;->B()Lcom/ironsource/Q2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/A0;->b(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p2

    :goto_7d
    if-eqz p1, :cond_8b

    .line 25
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/ironsource/q0;->a(ILjava/lang/String;)V

    :cond_8b
    return-void
.end method

.method private static final a(Lcom/ironsource/S2;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 7

    const-string v0, "instanceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstancePayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/ironsource/I2;

    .line 5
    new-instance v1, Lcom/ironsource/T0;

    invoke-virtual {p0}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object v2

    sget-object v3, Lcom/ironsource/E0$b;->b:Lcom/ironsource/E0$b;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/T0;Lcom/ironsource/E0$b;)V

    .line 8
    iget-object p0, p0, Lcom/ironsource/S2;->k:Lcom/ironsource/S2$a;

    .line 9
    invoke-direct {v0, v1, p1, p2, p0}, Lcom/ironsource/I2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/B;Lcom/ironsource/H;Lcom/ironsource/K2;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/S2;)Lcom/ironsource/d9;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/S2;->i:Lcom/ironsource/d9;

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 3

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 11
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 12
    invoke-static {}, Lcom/ironsource/mediationsdk/j;->a()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object p1

    return-object p1

    .line 14
    :cond_19
    sget-object p1, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    :cond_1b
    return-object p1
.end method

.method public static final synthetic b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/S2;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private final l()Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/S2;->l:Lcom/ironsource/T2;

    invoke-virtual {v1}, Lcom/ironsource/T2;->B()Lcom/ironsource/Q2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Q2;->i()Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/p0;->a(Lcom/unity3d/mediation/LevelPlayAdSize;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ironsource/D;
    .registers 2

    .line 3
    new-instance v0, Lcom/ironsource/S2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/S2$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/S2;)V

    return-object v0
.end method

.method public final a(Lcom/ironsource/Bg;Lcom/ironsource/z0;)V
    .registers 4

    const-string v0, "displayListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 2
    new-instance v0, Lcom/ironsource/M2;

    invoke-direct {v0, p1}, Lcom/ironsource/M2;-><init>(Lcom/ironsource/Bg;)V

    invoke-virtual {p0, v0, p2}, Lcom/ironsource/q0;->a(Lcom/ironsource/J;Lcom/ironsource/z0;)V

    :cond_f
    return-void
.end method

.method public b()Lcom/ironsource/s0;
    .registers 4

    .line 2
    new-instance v0, Lcom/ironsource/Z2;

    .line 3
    iget-object v1, p0, Lcom/ironsource/S2;->l:Lcom/ironsource/T2;

    invoke-virtual {v1}, Lcom/ironsource/T2;->B()Lcom/ironsource/Q2;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/S2;->l()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/S2;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/ironsource/Z2;-><init>(Lcom/ironsource/g0;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object v0
.end method

###### Class com.ironsource.S2.a (com.ironsource.S2$a)
.class final Lcom/ironsource/S2$a;
.super Lcom/ironsource/q0$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/K2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/S2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/S2;


# direct methods
.method public constructor <init>(Lcom/ironsource/S2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-direct {p0, p1}, Lcom/ironsource/q0$a;-><init>(Lcom/ironsource/q0;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/I2;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/ironsource/V2;->g()Lkotlin/Unit;

    :cond_25
    return-void
.end method

.method public b(Lcom/ironsource/A;)V
    .registers 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/ironsource/q0$a;->b(Lcom/ironsource/A;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/A;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {v0}, Lcom/ironsource/S2;->a(Lcom/ironsource/S2;)Lcom/ironsource/d9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/d9;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {v0}, Lcom/ironsource/q0;->i()Lcom/ironsource/z0;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/ironsource/z0;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_20
    return-void
.end method

.method public b(Lcom/ironsource/I2;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/ironsource/V2;->j()Lkotlin/Unit;

    :cond_25
    return-void
.end method

.method public c(Lcom/ironsource/I2;)V
    .registers 4

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-virtual {p1}, Lcom/ironsource/A;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/S2$a;->b:Lcom/ironsource/S2;

    invoke-static {p1}, Lcom/ironsource/S2;->b(Lcom/ironsource/S2;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/V2;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/ironsource/V2;->h()Lkotlin/Unit;

    :cond_25
    return-void
.end method

###### Class com.ironsource.S2$$ExternalSyntheticLambda0 (com.ironsource.S2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/S2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/D;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/S2;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/S2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/S2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/S2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/S2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/S2;

    invoke-static {v0, p1, p2}, Lcom/ironsource/S2;->$r8$lambda$L-MnAt6YAnOKVJHBVOm5FS8bar4(Lcom/ironsource/S2;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p1

    return-object p1
.end method
