###### Class ads_mobile_sdk.mc3 (ads_mobile_sdk.mc3)
.class public final Lads_mobile_sdk/mc3;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    const-string v0, "Failed to bind to the service."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
