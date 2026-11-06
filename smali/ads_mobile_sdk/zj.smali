###### Class ads_mobile_sdk.zj (ads_mobile_sdk.zj)
.class public final Lads_mobile_sdk/zj;
.super Lads_mobile_sdk/ak;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 3

    .line 1112
    invoke-direct {p0, p1}, Lads_mobile_sdk/ak;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1113
    iput-object p2, p0, Lads_mobile_sdk/zj;->b:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 2

    .line 1118
    iget-object v0, p0, Lads_mobile_sdk/zj;->b:[B

    return-object v0
.end method
