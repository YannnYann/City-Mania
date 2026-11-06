###### Class com.ironsource.adqualitysdk.sdk.i.C0896 (com.ironsource.adqualitysdk.sdk.i.ﮊ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;

    .line 2
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ῡ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_7
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḽ:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_12

    monitor-exit v0

    if-eqz v1, :cond_11

    .line 5
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮊ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾒ()V

    :cond_11
    return-void

    :catchall_12
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
