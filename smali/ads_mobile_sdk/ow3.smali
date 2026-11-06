###### Class ads_mobile_sdk.ow3 (ads_mobile_sdk.ow3)
.class public final Lads_mobile_sdk/ow3;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 2
    const-string v0, "r: "

    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
