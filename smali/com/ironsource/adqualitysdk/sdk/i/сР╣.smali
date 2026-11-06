###### Class com.ironsource.adqualitysdk.sdk.i.C0475 (com.ironsource.adqualitysdk.sdk.i.ᐹ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

.field public final synthetic ﾇ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;->ﾇ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;->ﾇ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᐹ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;->run()V

    :cond_f
    return-void
.end method
