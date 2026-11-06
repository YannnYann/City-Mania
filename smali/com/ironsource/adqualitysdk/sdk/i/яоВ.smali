###### Class com.ironsource.adqualitysdk.sdk.i.C0888 (com.ironsource.adqualitysdk.sdk.i.ﮂ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᴮ;


# static fields
.field public static final ｋ:[Ljava/lang/String;

.field public static final ﾇ:[Ljava/lang/String;


# instance fields
.field public final ﾒ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "hQqf\n"

    const-string v1, "8X/x4qMSSug=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aksu\n"

    const-string v2, "GjteBPuG2s4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lUvUTU4=\n"

    const-string v3, "/DunKC1gs1E=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾇ:[Ljava/lang/String;

    .line 4
    const-string v0, "PoEeig==\n"

    const-string v1, "SvRwunT8XM0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LvDACg==\n"

    const-string v2, "XoCwOmlc/y4=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ｋ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾒ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "3Y0JvqGN15DahhqsvI/Ov92c\n"

    const-string v1, "s+h9yc7/vNY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_7
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾒ:Landroid/content/Context;

    const-string v4, "5jx+OH2l0rvzOmQv\n"

    const-string v5, "hVMQVhjGptI=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1a

    goto :goto_30

    .line 9
    :cond_1a
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_30

    .line 11
    :cond_21
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-nez v3, :cond_28

    goto :goto_30

    :cond_28
    const/16 v4, 0xf

    .line 13
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_30

    xor-int/2addr v3, v2

    goto :goto_31

    :catchall_30
    :goto_30
    move v3, v1

    :goto_31
    if-eqz v3, :cond_3c

    const/16 v4, 0x1e

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    if-nez v4, :cond_43

    goto :goto_84

    .line 17
    :cond_43
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_84

    .line 18
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 19
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 20
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ｋ:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_5b
    if-ge v8, v7, :cond_69

    aget-object v9, v6, v8

    .line 21
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    goto :goto_77

    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    .line 25
    :cond_69
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾇ:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_6d
    if-ge v8, v7, :cond_43

    aget-object v9, v6, v8

    .line 26
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_75} :catch_84

    if-eqz v9, :cond_81

    :goto_77
    const/16 v4, 0x1f

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_81
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    .line 28
    :catch_84
    :cond_84
    :goto_84
    :try_start_84
    const-string v4, "+jcDMvc0MozqOj8tqjA=\n"

    const-string v5, "kkN3QtlEQOM=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9e

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_9e

    if-nez v4, :cond_9e

    move v4, v2

    goto :goto_9f

    :catch_9e
    :cond_9e
    move v4, v1

    :goto_9f
    if-eqz v4, :cond_aa

    const/16 v5, 0x20

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    const/4 v5, 0x0

    .line 31
    :try_start_ab
    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾒ:Landroid/content/Context;

    const-string v7, "WET3Dfg=\n"

    const-string v8, "KCyYY522/kI=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_be

    goto :goto_cf

    .line 34
    :cond_be
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_cf

    .line 35
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cc} :catch_cf

    if-nez v7, :cond_cf

    goto :goto_d0

    :catch_cf
    :cond_cf
    :goto_cf
    move-object v6, v5

    .line 36
    :goto_d0
    :try_start_d0
    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾒ:Landroid/content/Context;

    const-string v8, "ItU5WNDEAlc30yNP\n"

    const-string v9, "QbpXNrWndj4=\n"

    invoke-static {v8, v9}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    if-nez v7, :cond_ec

    .line 38
    const-string v7, "JExmuY4uZQ==\n"

    const-string v8, "USIN1+FZC4w=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_16a

    .line 46
    :cond_ec
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v8

    if-nez v8, :cond_fc

    .line 47
    const-string v7, "wSYJmA==\n"

    const-string v8, "r0ln/bCJ4uU=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_16a

    .line 48
    :cond_fc
    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-nez v7, :cond_10b

    .line 49
    const-string v7, "gLBlV59amQ==\n"

    const-string v8, "9d4OOfAt928=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    .line 50
    :cond_10b
    invoke-virtual {v7, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_11a

    const-string v7, "kjBu8Q==\n"

    const-string v8, "5VkImFvJH6s=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    .line 51
    :cond_11a
    invoke-virtual {v7, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_129

    const-string v7, "TznZOchLnV0=\n"

    const-string v8, "LFy1Vb0n/C8=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    :cond_129
    const/4 v8, 0x3

    .line 52
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_139

    const-string v7, "O+C6PdaSpzQ=\n"

    const-string v8, "XpTSWKT8wkA=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    :cond_139
    const/4 v8, 0x2

    .line 53
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_149

    const-string v7, "C44YzWQchEQB\n"

    const-string v8, "aeJtqBBz6zA=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    :cond_149
    const/4 v8, 0x4

    .line 54
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_159

    const-string v7, "PnwY\n"

    const-string v8, "SAx2AxWHWvc=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_16a

    .line 55
    :cond_159
    const-string v7, "KmviMfQ=\n"

    const-string v8, "RR+KVIZBt0s=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_161
    .catchall {:try_start_d0 .. :try_end_161} :catchall_162

    goto :goto_16a

    .line 57
    :catchall_162
    const-string v7, "R0F/p4TjVA==\n"

    const-string v8, "Mi8UyeuUOg4=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    :goto_16a
    :try_start_16a
    iget-object v8, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮂ;->ﾒ:Landroid/content/Context;

    const-string v9, "hvZM11s=\n"

    const-string v10, "9p4juT73n20=\n"

    invoke-static {v9, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    if-nez v8, :cond_17d

    goto :goto_18a

    .line 61
    :cond_17d
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_18a

    .line 62
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_18a} :catch_18a

    .line 63
    :catch_18a
    :cond_18a
    :goto_18a
    :try_start_18a
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    if-nez v8, :cond_193

    .line 64
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1b0

    .line 65
    :cond_193
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    :goto_198
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1ac

    .line 67
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/NetworkInterface;

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1ab} :catch_1ae

    goto :goto_198

    :cond_1ac
    move-object v8, v9

    goto :goto_1b0

    .line 71
    :catch_1ae
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 72
    :goto_1b0
    :try_start_1b0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const-string v10, "+y4IOxA=\n"

    const-string v11, "kl1eS36LlTc=\n"

    invoke-static {v10, v11}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    const-string v3, "klKddlLFOGSFR4w=\n"

    const-string v10, "/DfpAT23UzA=\n"

    invoke-static {v3, v10}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v3, "6nQg8BDnN9LsaRbrGOo89Oc=\n"

    const-string v7, "gwdwgn+fTpE=\n"

    invoke-static {v3, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v3, "XUu60jz7cm5QWA==\n"

    const-string v4, "NSrJkV2JAAc=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_1e1

    move v1, v2

    :cond_1e1
    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    const-string v1, "7nCueiDzdPTiXbVqPOE=\n"

    const-string v2, "hx7aH1KVFZc=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1f7} :catch_1f8

    goto :goto_200

    .line 80
    :catch_1f8
    const-string v1, "XfI=\n"

    const-string v2, "Jo/0Aqi3Z9A=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_200
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 82
    invoke-direct {v2, v3, v0, v1, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
