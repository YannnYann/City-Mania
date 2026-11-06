###### Class com.ironsource.adqualitysdk.sdk.i.RunnableC0360 (com.ironsource.adqualitysdk.sdk.i.ܐ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ܐ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ﾒ:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;->ﾒ:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;->ﾒ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
