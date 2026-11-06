###### Class com.ironsource.adqualitysdk.sdk.i.C3472a0 (com.ironsource.adqualitysdk.sdk.i.a0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ґ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/b0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Landroid/webkit/WebView;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    .line 31
    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ｋ(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﮐ:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﮌ:Ljava/lang/String;

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﮉ:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 37
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﱟ:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, p1, p0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾒ(Lorg/json/JSONObject;Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/a0;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    .line 41
    const-string p2, "g4uMQf9cKAuwpo958lU6OA==\n"

    const-string v0, "1O7uF5Y5X0o=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rPHzP2ACmNCM4vU5fEXb1YrgoTVkR5XWyenyP3w=\n"

    const-string v1, "6YOBUBIi+6I=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/16 p2, 0x3f

    .line 1
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    const-string p3, "S/k0kjcb\n"

    const-string v1, "OI1W8VZ+YP0=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    .line 4
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    .line 5
    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ｋ(Landroid/webkit/WebView;)V

    return-void

    .line 6
    :cond_29
    const-string p3, "nAHvL8mc\n"

    const-string v1, "73WNTKj+Uac=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_47

    .line 7
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-static {p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/b0;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 8
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-virtual {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_47
    const-string p3, "dypEovfs\n"

    const-string v1, "BF4mwZaNMk4=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_79

    .line 10
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-static {p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/b0;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    .line 12
    iget-object v0, p3, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/n0;

    if-eqz v0, :cond_6e

    .line 13
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/n0;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/g0;

    .line 14
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/g0;->ﾇ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6e

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/f0;

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x0

    .line 16
    :goto_6f
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﾇ(Lorg/json/JSONObject;Landroid/view/View;Lcom/ironsource/adqualitysdk/sdk/i/f0;Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_79
    const-string p3, "DqidzzM9\n"

    const-string v1, "fdz/rFJe1B8=\n"

    invoke-static {p3, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9c

    .line 18
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-static {p3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/b0;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 19
    sget-object p3, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﻏ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-virtual {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾇ(Landroid/webkit/WebView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ト;->ﻐ(Lorg/json/JSONObject;Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_9c
    const-string p1, "BtSEB5fP\n"

    const-string p3, "daDmZParD3M=\n"

    invoke-static {p1, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 22
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/a0;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/b0;

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/b0;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/b0;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 23
    const-string p2, "jG/D\n"

    const-string p3, "+A6k3SQK+mM=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "5WQkYPM=\n"

    const-string v0, "gBZJE5SMltk=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 25
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "DNzgotIf\n"

    const-string v1, "aa6DzbZ6oVs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YwnAr7k=\n"

    const-string v2, "Bnuz29KAMLE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    :try_start_e0
    invoke-static {p2, p3, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e3

    :catchall_e3
    :cond_e3
    return-void
.end method

.method public final ﾒ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 29
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/X;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/X;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/a0;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
