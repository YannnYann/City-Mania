###### Class com.ironsource.adqualitysdk.sdk.i.C0343 (com.ironsource.adqualitysdk.sdk.i.ږ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ږ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ډ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﭖ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 3
    const-string v1, "Jjlt7Ff3Yt0zIV/uHP8=\n"

    const-string v2, "QFUMi3mRC68=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    invoke-direct {v2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ږ;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ィ;

    invoke-direct {v4, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ィ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ΐ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ڗ;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
