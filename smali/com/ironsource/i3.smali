###### Class com.ironsource.C3648i3 (com.ironsource.i3)
.class public final Lcom/ironsource/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/yg;


# instance fields
.field private final a:Lcom/ironsource/Hb;

.field private final b:Lcom/unity3d/ironsourceads/AdSize;


# direct methods
.method public static synthetic $r8$lambda$c0-CudV11dak8ZXVocYT7HIAxkE()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/i3;->c()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$wvRFdyVAK3NtbeqPIzkw5gQ1yJI()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/i3;->b()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/ironsource/Hb;Lcom/unity3d/ironsourceads/AdSize;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/i3;->a:Lcom/ironsource/Hb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/i3;->b:Lcom/unity3d/ironsourceads/AdSize;

    return-void
.end method

.method private static final b()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    const-string v1, "Load task config is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/z5;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v0}, Lcom/ironsource/z5;->l()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/i3;->a:Lcom/ironsource/Hb;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    new-instance v3, Lcom/ironsource/i3$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/ironsource/i3$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0, v3}, Lcom/ironsource/yg;->a(ZLkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/i3;->b:Lcom/unity3d/ironsourceads/AdSize;

    if-eqz v0, :cond_16

    move v1, v2

    :cond_16
    new-instance v0, Lcom/ironsource/i3$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/ironsource/i3$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v1, v0}, Lcom/ironsource/yg;->a(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.ironsource.i3$$ExternalSyntheticLambda0 (com.ironsource.i3$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/i3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/i3;->$r8$lambda$wvRFdyVAK3NtbeqPIzkw5gQ1yJI()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.i3$$ExternalSyntheticLambda1 (com.ironsource.i3$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/i3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/i3;->$r8$lambda$c0-CudV11dak8ZXVocYT7HIAxkE()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method
