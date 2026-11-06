###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0852 (com.ironsource.adqualitysdk.sdk.i.בּ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/בּ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ(Landroid/app/Application;Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﾄ;->ﾒ(Landroid/app/Application;Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    move-result-object p0

    monitor-enter p0

    .line 3
    :try_start_c
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Τ;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/Τ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    monitor-exit p0

    .line 4
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ｋ()V

    return-void

    :catchall_1d
    move-exception p1

    .line 5
    monitor-exit p0

    throw p1
.end method
