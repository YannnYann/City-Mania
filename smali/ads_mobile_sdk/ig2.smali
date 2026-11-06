###### Class ads_mobile_sdk.ig2 (ads_mobile_sdk.ig2)
.class public abstract Lads_mobile_sdk/ig2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .registers 2

    .line 40
    sget-object v0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    .line 41
    iget-boolean v0, v0, Lads_mobile_sdk/me2;->a:Z

    if-eqz v0, :cond_7

    return-void

    .line 42
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method called before OM SDK activation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
