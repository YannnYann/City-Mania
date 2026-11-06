###### Class com.ironsource.adqualitysdk.sdk.i.C0960 (com.ironsource.adqualitysdk.sdk.i.ﻡ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 3
    const-string v2, "jQ==\n"

    const-string v3, "p0Bl/NtYPNE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺏ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ٲ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_22
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ٲ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ү;

    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ү;->ﾇ(Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    goto :goto_2a

    :catchall_29
    const/4 v0, 0x0

    .line 7
    :goto_2a
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;I)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
