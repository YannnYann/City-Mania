###### Class com.ironsource.adqualitysdk.sdk.i.C3489j (com.ironsource.adqualitysdk.sdk.i.j)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/j;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_c8

    goto/16 :goto_a7

    :sswitch_15
    const-string p2, "WRbr29JY\n"

    const-string v1, "GFK+lZsMGMA=\n"

    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    goto/16 :goto_a8

    :sswitch_25
    const-string p2, "H4XMSmO3Zg==\n"

    const-string v0, "TcCfBS/hI3U=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x3

    goto/16 :goto_a8

    :sswitch_36
    const-string p2, "fhIUsyX/tQ==\n"

    const-string v0, "LFdF5mCs4ao=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x2

    goto :goto_a8

    :sswitch_46
    const-string p2, "L/m4feRq6LY5\n"

    const-string v0, "bav3PKApqeU=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x7

    goto :goto_a8

    :sswitch_56
    const-string p2, "9AfF2R8=\n"

    const-string v0, "t0aGkVqHNpc=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x4

    goto :goto_a8

    :sswitch_66
    const-string p2, "BfNG9tlWIOEQ9Vzh\n"

    const-string v0, "RrwIuJwVdKg=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x5

    goto :goto_a8

    :sswitch_76
    const-string p2, "f0T1sCkOyUVwSOM=\n"

    const-string v0, "KQ2x9WZehQQ=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x1

    goto :goto_a8

    :sswitch_86
    const-string p2, "yRr+7CZKOQ==\n"

    const-string v0, "mk6xvmcNfCg=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 v0, 0x6

    goto :goto_a8

    :sswitch_96
    const-string p2, "8/2FN7jNBfH6\n"

    const-string v0, "v7TDcvuURr0=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/16 v0, 0x8

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v0, -0x1

    :goto_a8
    packed-switch v0, :pswitch_data_ee

    const/4 p1, 0x0

    return-object p1

    .line 20
    :pswitch_ad
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->LIFECYCLE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 21
    :pswitch_b0
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 22
    :pswitch_b3
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 23
    :pswitch_b6
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 24
    :pswitch_b9
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 25
    :pswitch_bc
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->RESOLVE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 26
    :pswitch_bf
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 27
    :pswitch_c2
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    .line 28
    :pswitch_c5
    sget-object p1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    return-object p1

    :sswitch_data_c8
    .sparse-switch
        -0x6bed08b6 -> :sswitch_96
        -0x458431a5 -> :sswitch_86
        -0x107e4504 -> :sswitch_76
        -0x33dae49 -> :sswitch_66
        0x3ceb762 -> :sswitch_56
        0x4599f8a1 -> :sswitch_46
        0x6c1a7e6f -> :sswitch_36
        0x6c340dcc -> :sswitch_25
        0x72d11027 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch
.end method
