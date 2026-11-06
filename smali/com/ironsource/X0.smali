###### Class com.ironsource.X0 (com.ironsource.X0)
.class public final Lcom/ironsource/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/M8;)Lcom/ironsource/V0;
    .registers 5

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkConfigService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1d

    new-instance p1, Lcom/ironsource/V0$a;

    const-string p2, "adUnitId is empty"

    invoke-direct {p1, p2}, Lcom/ironsource/V0$a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_1d
    invoke-interface {p3}, Lcom/ironsource/M8;->c()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance p1, Lcom/ironsource/V0$a;

    const-string p2, "SDK is not initialized"

    invoke-direct {p1, p2}, Lcom/ironsource/V0$a;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_2b
    invoke-interface {p3}, Lcom/ironsource/M8;->a()Lcom/ironsource/ab;

    move-result-object p3

    if-eqz p3, :cond_3b

    invoke-virtual {p3, p1, p2}, Lcom/ironsource/ab;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3b

    .line 5
    sget-object p1, Lcom/ironsource/V0$b;->a:Lcom/ironsource/V0$b;

    return-object p1

    .line 6
    :cond_3b
    new-instance p1, Lcom/ironsource/V0$a;

    const-string p2, "Invalid adUnitId"

    invoke-direct {p1, p2}, Lcom/ironsource/V0$a;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
