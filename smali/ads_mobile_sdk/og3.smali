###### Class ads_mobile_sdk.og3 (ads_mobile_sdk.og3)
.class public abstract Lads_mobile_sdk/og3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/gson/JsonObject;)Lads_mobile_sdk/v01;
    .registers 4

    .line 1
    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/ng3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/ng3;-><init>(Lcom/google/gson/JsonObject;)V

    .line 3
    const-string p0, "block"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_f
    new-instance p0, Lads_mobile_sdk/q01;

    invoke-virtual {v0}, Lads_mobile_sdk/ng3;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 131
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    return-object v0
.end method
