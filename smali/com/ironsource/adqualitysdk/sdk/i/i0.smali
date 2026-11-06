###### Class com.ironsource.adqualitysdk.sdk.i.C3488i0 (com.ironsource.adqualitysdk.sdk.i.i0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/i0;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/j0;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/j0;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/i0;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/j0;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/i0;->ﾇ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/i0;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/j0;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/j0;->ﾇ:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/i0;->ﾇ:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/x0;->ﾒ:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 3
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const-string v3, "8UlDrBppegvrXA+oH2tkSvpcWq9BKA==\n"

    const-string v4, "myg1zWkKCGI=\n"

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖟ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    const-string v2, "sm6d4w==\n"

    const-string v3, "kEe02AUZ1p8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_35
    return-void
.end method
