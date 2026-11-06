###### Class com.ironsource.adqualitysdk.sdk.i.Z (com.ironsource.adqualitysdk.sdk.i.Z)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Z;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

.field public final synthetic ﻛ:Z

.field public final synthetic ｋ:Ljava/lang/String;

.field public final synthetic ﾇ:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﾇ:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ｋ:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﻛ:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﾇ:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Z;->ﾇ:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/Y;

    invoke-direct {v2, p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Y;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Z;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
