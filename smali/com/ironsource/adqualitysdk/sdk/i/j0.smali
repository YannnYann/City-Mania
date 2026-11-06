###### Class com.ironsource.adqualitysdk.sdk.i.C3490j0 (com.ironsource.adqualitysdk.sdk.i.j0)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/j0;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

.field public final synthetic ﾇ:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/k0;Landroid/webkit/WebView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/j0;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/j0;->ﾇ:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/j0;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/k0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/h0;

    .line 4
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/h0;->ﾒ:Ljava/lang/String;

    .line 5
    :try_start_9
    const-string v2, "AjB+vBwTs1IGPXagCRixSxw2ag==\n"

    const-string v3, "WWs38lZW8AY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v3

    check-cast v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 7
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ύ:Lcom/ironsource/adqualitysdk/sdk/i/م;

    .line 8
    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_54

    .line 9
    :try_start_1a
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_73

    :try_start_1c
    monitor-exit v3

    .line 10
    const-string v5, "K99p\n"

    const-string v6, "QbYHTqxdG20=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/م;->ﻛ:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string v2, "byPIWuWKurVrMthI9Q==\n"

    const-string v3, "NHiLFajH9fs=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/h0;

    .line 13
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/h0;->ﾇ:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-boolean v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ﾇ:Z

    if-eqz v2, :cond_56

    .line 16
    const-string v2, "su8Un7rqq1Cj5wya\n"

    const-string v3, "6bRRx+646g8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/h0;

    .line 17
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/h0;->ｋ:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    :catchall_54
    move-exception v0

    goto :goto_76

    .line 20
    :cond_56
    const-string v2, "GjxLLWgCDdkLNFMo\n"

    const-string v3, "QWcOdTxQTIY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 22
    :goto_64
    const-string v2, "yWRB+zFWjojGcFDrNUuWlg==\n"

    const-string v3, "kj8CtH8Yy8s=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ﾒ:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    :catchall_73
    move-exception v0

    .line 23
    monitor-exit v3

    throw v0
    :try_end_76
    .catchall {:try_start_1c .. :try_end_76} :catchall_54

    .line 24
    :goto_76
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/k0;->ｋ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kfRJRRbgAuj04V5eLrM/6Z3oUU8HtFGm\n"

    const-string v5, "1IY7KmTAa4Y=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 25
    :goto_97
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ژ;->ﾒ([B)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/i0;

    invoke-direct {v1, p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/i0;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/j0;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    return-void
.end method
