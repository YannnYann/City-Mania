###### Class com.ironsource.adqualitysdk.sdk.i.C0938 (com.ironsource.adqualitysdk.sdk.i.ﺘ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺘ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ﯧ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;->ﻛ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-nez v0, :cond_2d

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/দ;

    if-eqz v0, :cond_f

    goto :goto_2d

    .line 5
    :cond_f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺘ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FkKOqbpUcDhzTJ++sEF3MDYanLmtAGc5MF+XurxENQ==\n"

    const-string v3, "Uzr+zNkgFVw=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;->ﾒ(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2d
    :goto_2d
    return-object p1
.end method
