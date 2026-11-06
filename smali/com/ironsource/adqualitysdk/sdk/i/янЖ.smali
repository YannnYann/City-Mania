###### Class com.ironsource.adqualitysdk.sdk.i.C0866 (com.ironsource.adqualitysdk.sdk.i.צּ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/צּ;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/宀;Ljava/util/concurrent/ThreadPoolExecutor;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V
    .registers 11

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/צּ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 3
    iput-object p3, v0, Lcom/ironsource/adqualitysdk/sdk/i/צּ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/צּ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/宀;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/צּ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "VeyaacEClhhu3Ix01heKD2SAumnBApYYZA==\n"

    const-string v3, "Aa7fEaRh42w=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ﾒ()Ljava/lang/Object;
    .registers 1

    .line 0
    return-object p0
.end method
