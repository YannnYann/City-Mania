###### Class com.ironsource.adqualitysdk.sdk.i.C3491k (com.ironsource.adqualitysdk.sdk.i.k)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/k;
.super Lcom/unity3d/services/core/webview/WebViewApp;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

.field public final ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/m;Lcom/unity3d/services/core/webview/WebViewApp;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    invoke-direct {p0}, Lcom/unity3d/services/core/webview/WebViewApp;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    .line 3
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "xIQCrgy/g+njkU6ZAb63yf+NApkGsQ==\n"

    const-string v3, "k+Fg+GXa9Kg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->addCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V

    :cond_1a
    return-void
.end method

.method public final getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "oMa8wJkVP9+H0/DxlQQL/5vPvPeTGw==\n"

    const-string v3, "96PelvBwSJ4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;

    move-result-object p1

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "4vd0Jdq1CifF4jgU1qQ+Cdv0fxTGohwS3P14\n"

    const-string v3, "tZIWc7PQfWY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getErrorStateFromWebAppCode()Lcom/unity3d/services/core/configuration/ErrorState;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "5OxhGPHlDG/D+S0p/fQ+XMHmcR3s4Q9L9ftsI8/lGW/D+UAh/OU=\n"

    const-string v3, "s4kDTpiAey4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getErrorStateFromWebAppCode()Lcom/unity3d/services/core/configuration/ErrorState;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWebAppFailureCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "havG3MDCkTeivortzNOxE7CP1Prvxo8ap7zBycbDgw==\n"

    const-string v3, "0s6kiqmn5nY=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebAppFailureCode()I

    move-result v0

    return v0

    :cond_1b
    return v3
.end method

.method public final getWebAppFailureMessage()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "mj6rWOTfUIy9K+dp6M5wqK8auX7L206huCmsQ+jJVKyqPg==\n"

    const-string v3, "zVvJDo26J80=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebAppFailureMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWebView()Lcom/unity3d/services/core/webview/WebView;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "tiMfOjC+p/+RNlMLPK+H24MQFAku\n"

    const-string v3, "4UZ9bFnb0L4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "lvegeh+M1eKx4uxFGJ/NyKTRo0Aai8PAqg==\n"

    const-string v3, "wZLCLHbpoqM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)Z

    move-result p1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "SL3aMUzRJGBvqJYOS8I8SnqV3RNN2zc=\n"

    const-string v3, "H9i4ZyW0UyE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {p1, p2, p3, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_20

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unity3d/services/core/webview/WebViewApp;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final isWebAppInitialized()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "UlruPwKMdgJ1T6IAGL5kIURP/CAFgHUqZFPlEw6N\n"

    const-string v3, "BT+MaWvpAUM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppInitialized()Z

    move-result v0

    return v0

    :cond_1b
    return v3
.end method

.method public final isWebAppLoaded()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "8tjtPFJCZn/VzaEDSHB0XOTN/yZURnVbwQ==\n"

    const-string v3, "pb2PajsnET4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1b

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v0

    return v0

    :cond_1b
    return v3
.end method

.method public final removeCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "X6EyR8bOzfJ4tH5jysbVxW2HMX3DydvQYw==\n"

    const-string v3, "CMRQEa+rurM=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->removeCallback(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V

    :cond_1a
    return-void
.end method

.method public final resetWebViewAppInitialization()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "2vb0sUEpuXn947iVTT+rTNr29LFBKbl5/ePfiUE4p1nh+uyGXCWhVg==\n"

    const-string v3, "jZOW5yhMzjg=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_19

    .line 4
    invoke-virtual {v0}, Lcom/unity3d/services/core/webview/WebViewApp;->resetWebViewAppInitialization()V

    :cond_19
    return-void
.end method

.method public final varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "fz2mDrqppqBYKOortqK1pF49qiw=\n"

    const-string v3, "KFjEWNPM0eE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    filled-new-array {p1, p2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_20

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "Go/hngBwEmU9mq27DGEmSyOM6q8cZwRQJIXt\n"

    const-string v3, "TeqDyGkVZSQ=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    :cond_1a
    return-void
.end method

.method public final setWebAppFailureCode(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "ZQYrWME3LZ5CE2d9zSYNulAiOX7uMzOzRxEsTcc2Pw==\n"

    const-string v3, "MmNJDqhSWt8=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppFailureCode(I)V

    :cond_1e
    return-void
.end method

.method public final setWebAppFailureMessage(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "g2sQolC+coGkflyHXK9SpbZPAoR/umysoXwXuVyodqGzaw==\n"

    const-string v3, "1A5y9DnbBcA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppFailureMessage(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public final setWebAppInitialized(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "6S9WM8qyjrvOOhoWxqOun9wLRBXquZCO1ytYDNmynQ==\n"

    const-string v3, "vko0ZaPX+fo=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppInitialized(Z)V

    :cond_1e
    return-void
.end method

.method public final setWebAppLoaded(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "FKH13pearHsztLn7m4uMXyGF5/iykLpeJqA=\n"

    const-string v3, "Q8SXiP7/2zo=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebAppLoaded(Z)V

    :cond_1e
    return-void
.end method

.method public final setWebView(Lcom/unity3d/services/core/webview/WebView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;

    const-string v2, "T/p3cnQOJDVo7ztXeB8EEXrJfEFq\n"

    const-string v3, "GJ8VJB1rU3Q=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ꭸ;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    if-eqz v0, :cond_1a

    .line 4
    invoke-virtual {v0, p1}, Lcom/unity3d/services/core/webview/WebViewApp;->setWebView(Lcom/unity3d/services/core/webview/WebView;)V

    :cond_1a
    return-void
.end method

.method public final ﾒ()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/k;->ﾒ:Lcom/unity3d/services/core/webview/WebViewApp;

    return-object v0
.end method
