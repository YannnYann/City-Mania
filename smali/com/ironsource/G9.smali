###### Class com.ironsource.G9 (com.ironsource.G9)
.class public final Lcom/ironsource/G9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/yg;


# instance fields
.field private final a:Lcom/ironsource/Hb;


# direct methods
.method public static synthetic $r8$lambda$7cWE3Rl0uu3vYEptPStcoaEtITI()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/G9;->b()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/ironsource/Hb;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/G9;->a:Lcom/ironsource/Hb;

    return-void
.end method

.method private static final b()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 2

    .line 1
    sget-object v0, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    const-string v1, "Load task config is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/z5;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/G9;->a:Lcom/ironsource/Hb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    new-instance v1, Lcom/ironsource/G9$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/ironsource/G9$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0, v1}, Lcom/ironsource/yg;->a(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.ironsource.G9$$ExternalSyntheticLambda0 (com.ironsource.G9$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/G9$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lcom/ironsource/G9;->$r8$lambda$7cWE3Rl0uu3vYEptPStcoaEtITI()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    return-object v0
.end method
