###### Class ads_mobile_sdk.xf2 (ads_mobile_sdk.xf2)
.class public abstract Lads_mobile_sdk/xf2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/Uri;)V
    .registers 6

    .line 1
    const-string v0, "OMIDLIB"

    .line 24
    :try_start_2
    const-string v1, "method"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 26
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    return-void

    :catch_12
    move-exception v1

    goto :goto_67

    .line 31
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x53e100bb

    if-eq v2, v3, :cond_1e

    goto :goto_81

    :cond_1e
    const-string v2, "attest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_12

    goto :goto_33

    .line 35
    :cond_47
    :try_start_47
    const-string v2, "mechanism"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 38
    sget-object v3, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 39
    iget-object v3, v3, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 41
    new-instance v4, Lads_mobile_sdk/bo;

    invoke-direct {v4, v1}, Lads_mobile_sdk/bo;-><init>(Ljava/util/HashMap;)V

    invoke-static {v3, v2, v4}, Lads_mobile_sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/bo;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception v1

    .line 47
    :try_start_61
    const-string v2, "Error processing attestation request in OmidNativeUrlHandler"

    .line 48
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_12

    goto :goto_81

    .line 49
    :goto_67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OmidNativeUrlHandler failed to handle url ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_81
    :goto_81
    return-void
.end method
