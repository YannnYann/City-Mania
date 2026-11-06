###### Class ads_mobile_sdk.m70 (ads_mobile_sdk.m70)
.class public abstract Lads_mobile_sdk/m70;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lads_mobile_sdk/q01;
    .registers 3

    .line 1
    const-string v0, "keyset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/q01;

    const/16 v1, 0xb

    .line 4
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 6
    invoke-static {p0, v1}, Lcom/google/crypto/tink/TinkProtoKeysetFormat;->parseKeyset([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
