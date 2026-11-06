###### Class ads_mobile_sdk.dr0 (ads_mobile_sdk.dr0)
.class public abstract synthetic Lads_mobile_sdk/dr0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Object;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
