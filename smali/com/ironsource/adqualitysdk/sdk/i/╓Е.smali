###### Class com.ironsource.adqualitysdk.sdk.i.ViewOnLayoutChangeListenerC0278 (com.ironsource.adqualitysdk.sdk.i.օ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/օ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

.field public final synthetic ﾒ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/є;Ljava/lang/Object;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾒ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    const/4 p1, 0x0

    .line 1
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾒ:Ljava/lang/Object;

    invoke-virtual {p3, p4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾇ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_58

    .line 4
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾒ:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾇ(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2b

    .line 5
    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    .line 6
    iget-object p4, p4, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ӵ;

    .line 7
    iget-boolean p4, p4, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﻐ:Z

    if-nez p4, :cond_2b

    .line 8
    invoke-virtual {p3, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_2b

    :catchall_29
    move-exception p2

    goto :goto_45

    .line 10
    :cond_2b
    :goto_2b
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    iget-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾒ:Ljava/lang/Object;

    .line 11
    invoke-virtual {p3, p4, p2}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 12
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/є;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iget-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/օ;->ﾒ:Ljava/lang/Object;

    invoke-virtual {p3, p4, p2, p5}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_29

    return-void

    .line 15
    :goto_45
    const-string p3, "IgDA1Qf72wsBG+3dPPnHCggQ3g==\n"

    const-string p4, "ZHWsuXSYqW4=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "pb3gDTuVZGHAoPwuKMxiepSM+gMn0mg=\n"

    const-string p5, "4M+SYkm1DQ8=\n"

    invoke-static {p4, p5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_58
    return-void
.end method
