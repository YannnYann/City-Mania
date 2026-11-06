###### Class com.ironsource.adqualitysdk.sdk.i.C0860 (com.ironsource.adqualitysdk.sdk.i.ךּ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ךּ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ィ;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ィ;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ィ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;->ﾇ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ィ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ィ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ךּ;->ﾇ:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 5
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 6
    const-string v3, "hqwwGC6Tz7qTtAIaZZs=\n"

    const-string v4, "4MBRfwD1psg=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/fAYIWE=\n"

    const-string v5, "m5F0UgTP5BI=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ⅴ;

    invoke-direct {v6, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ⅴ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_35
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ە;

    invoke-direct {v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ە;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ڗ;Z)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
