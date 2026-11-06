###### Class com.ironsource.adqualitysdk.sdk.i.C0631 (com.ironsource.adqualitysdk.sdk.i.ᴉ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴉ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_4
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾇ:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    .line 5
    monitor-exit v0

    throw v1
.end method
