###### Class com.ironsource.adqualitysdk.sdk.i.X (com.ironsource.adqualitysdk.sdk.i.X)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/X;
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
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﾇ:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ｋ:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻛ:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    .line 2
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﺙ:Z

    if-eqz v1, :cond_58

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻛ:Ljava/util/List;

    if-eqz v0, :cond_45

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_45

    .line 7
    :cond_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    .line 8
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﻛ:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ｋ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﾇ:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ｋ:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻛ:Z

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/Z;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Z;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void

    .line 14
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/a0;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﾇ:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ｋ:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/X;->ﻛ:Z

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/Z;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Z;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_58
    return-void
.end method
