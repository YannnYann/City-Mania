###### Class ads_mobile_sdk.cs0 (ads_mobile_sdk.cs0)
.class public final Lads_mobile_sdk/cs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/co;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ds0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    .line 41
    iput-object p1, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lads_mobile_sdk/ds0;->a(Landroid/content/Context;)Lads_mobile_sdk/ds0;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/cs0;->b:Lads_mobile_sdk/ds0;

    return-void

    .line 43
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/bo;)V
    .registers 5

    .line 74
    iget-object v0, p0, Lads_mobile_sdk/cs0;->b:Lads_mobile_sdk/ds0;

    .line 75
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 76
    iget-object v0, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4c

    .line 79
    :cond_d
    monitor-enter v0

    .line 80
    :try_start_e
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    .line 81
    iget-object v1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    :goto_19
    move v0, v1

    goto :goto_4c

    :catchall_1b
    move-exception p1

    goto/16 :goto_df

    .line 84
    :cond_1e
    invoke-virtual {v0}, Lads_mobile_sdk/ds0;->a()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 85
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_1b

    return-void

    .line 89
    :cond_2a
    :try_start_2a
    iget-object v1, v0, Lads_mobile_sdk/ds0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 92
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;
    :try_end_36
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_36} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_38
    .catchall {:try_start_2a .. :try_end_36} :catchall_1b

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_1b

    return-void

    :catch_38
    move-exception p1

    goto/16 :goto_c5

    :catch_3b
    move-exception p1

    goto/16 :goto_d2

    .line 94
    :cond_3e
    :try_start_3e
    const-string v2, "com.amazon.privacypass"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_4a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4a} :catch_38
    .catchall {:try_start_3e .. :try_end_4a} :catchall_1b

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_1b

    goto :goto_19

    :goto_4c
    if-nez v0, :cond_50

    goto/16 :goto_de

    .line 95
    :cond_50
    iget-object v0, p1, Lads_mobile_sdk/bo;->a:Ljava/util/Map;

    if-nez v0, :cond_56

    goto/16 :goto_de

    .line 96
    :cond_56
    const-string v1, "verifierurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object p1, p1, Lads_mobile_sdk/bo;->a:Ljava/util/Map;

    .line 98
    const-string v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_74

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_76

    :cond_74
    const-string p1, "1.0"

    :cond_76
    if-eqz v0, :cond_de

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_de

    .line 101
    :cond_83
    :try_start_83
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_96
    .catch Ljava/net/MalformedURLException; {:try_start_83 .. :try_end_96} :catch_de

    if-eqz v1, :cond_de

    .line 103
    :cond_98
    :try_start_98
    iget-object v1, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    if-nez v1, :cond_9d

    goto :goto_de

    .line 108
    :cond_9d
    new-instance v1, Lcom/amazon/privacypass/VerificationContext;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/privacypass/VerificationContext;-><init>(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lads_mobile_sdk/cs0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/privacypass/PrivacyPass;->getInstance(Landroid/content/Context;)Lcom/amazon/privacypass/PrivacyPass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/privacypass/PrivacyPass;->attest(Lcom/amazon/privacypass/VerificationContext;Lcom/amazon/privacypass/callback/AttestAPICallback;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_b0} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b0} :catch_b1

    return-void

    :catch_b1
    move-exception p1

    goto :goto_b5

    :catch_b3
    move-exception p1

    goto :goto_bd

    .line 113
    :goto_b5
    const-string v0, "Attestation failed: unexpected error"

    .line 114
    const-string v1, "OMIDLIB"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_de

    .line 115
    :goto_bd
    const-string v0, "Attestation failed: Invalid input parameters"

    .line 116
    const-string v1, "OMIDLIB"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_de

    .line 117
    :goto_c5
    :try_start_c5
    const-string v1, "Unexpected error when checking attestation capability"

    .line 118
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0

    goto :goto_de

    .line 120
    :goto_d2
    const-string v1, "Security exception when checking attestation capability"

    .line 121
    const-string v2, "OMIDLIB"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lads_mobile_sdk/ds0;->b:Ljava/lang/Boolean;

    monitor-exit v0

    :catch_de
    :cond_de
    :goto_de
    return-void

    .line 127
    :goto_df
    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_c5 .. :try_end_e0} :catchall_1b

    throw p1
.end method
