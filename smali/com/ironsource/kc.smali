###### Class com.ironsource.C3692kc (com.ironsource.kc)
.class public final Lcom/ironsource/kc;
.super Lcom/ironsource/q0;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Np_vehJFllKPXh01jaDaqZvDj8w(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/kc;->a(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/lc;Lcom/ironsource/mc;)V
    .registers 6

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/q0;-><init>(Lcom/ironsource/p0;Lcom/ironsource/x0;Lcom/ironsource/J0;)V

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/q0;->g()Lcom/ironsource/md;

    move-result-object p1

    .line 6
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz p1, :cond_3d

    .line 11
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_39

    goto :goto_3d

    :cond_39
    const/4 p1, 0x0

    const/16 p2, 0x1fe

    goto :goto_66

    .line 13
    :cond_3d
    :goto_3d
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    if-nez p1, :cond_44

    .line 15
    const-string p1, "placement is null"

    goto :goto_46

    :cond_44
    const-string p1, "placement name is empty"

    :goto_46
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x1

    .line 16
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "can\'t load native ad - %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/ironsource/lc;->b()Lcom/ironsource/g0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    invoke-static {p2}, Lcom/ironsource/A0;->b(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p2

    :goto_66
    if-eqz p1, :cond_74

    .line 25
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/ironsource/q0;->a(ILjava/lang/String;)V

    :cond_74
    return-void
.end method

.method private static final a(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 7

    const-string v0, "adInstanceData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstancePayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/cc;

    .line 3
    new-instance v1, Lcom/ironsource/T0;

    invoke-virtual {p0}, Lcom/ironsource/q0;->f()Lcom/ironsource/T0;

    move-result-object v2

    sget-object v3, Lcom/ironsource/E0$b;->b:Lcom/ironsource/E0$b;

    invoke-direct {v1, v2, v3}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/T0;Lcom/ironsource/E0$b;)V

    .line 6
    new-instance v2, Lcom/ironsource/q0$a;

    invoke-direct {v2, p0}, Lcom/ironsource/q0$a;-><init>(Lcom/ironsource/q0;)V

    .line 7
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ironsource/cc;-><init>(Lcom/ironsource/T0;Lcom/ironsource/B;Lcom/ironsource/H;Lcom/ironsource/E;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ironsource/D;
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/kc$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/kc$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/kc;)V

    return-object v0
.end method

###### Class com.ironsource.kc$$ExternalSyntheticLambda0 (com.ironsource.kc$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/kc$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/D;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/kc;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/kc;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/kc$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/kc;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/kc$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/kc;

    invoke-static {v0, p1, p2}, Lcom/ironsource/kc;->$r8$lambda$Np_vehJFllKPXh01jaDaqZvDj8w(Lcom/ironsource/kc;Lcom/ironsource/B;Lcom/ironsource/H;)Lcom/ironsource/A;

    move-result-object p1

    return-object p1
.end method
