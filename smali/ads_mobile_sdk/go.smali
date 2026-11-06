###### Class ads_mobile_sdk.go (ads_mobile_sdk.go)
.class public final Lads_mobile_sdk/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/h04;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lads_mobile_sdk/g04;

    invoke-direct {v0, p1, p0}, Lads_mobile_sdk/g04;-><init>(Landroid/webkit/WebView;Lads_mobile_sdk/h04;)V

    .line 54
    invoke-virtual {v0}, Lads_mobile_sdk/g04;->a()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 14
    const-string v0, "omidJsAttestationListener"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    const-string v0, "version"

    const-string v1, "attest"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2
    :try_start_a
    const-string p1, "mechanism"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v2, "attestationArgs"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lads_mobile_sdk/pe2;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lads_mobile_sdk/wh1;->b:Lads_mobile_sdk/wh1;

    .line 8
    iget-object v0, v0, Lads_mobile_sdk/wh1;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    new-instance v1, Lads_mobile_sdk/bo;

    invoke-direct {v1, p2}, Lads_mobile_sdk/bo;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0, p1, v1}, Lads_mobile_sdk/fo;->a(Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/bo;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p1

    .line 12
    const-string p2, "Error processing attestation request"

    .line 13
    const-string v0, "OMIDLIB"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    return-void
.end method

.method public final b()V
    .registers 1

    .line 0
    return-void
.end method
