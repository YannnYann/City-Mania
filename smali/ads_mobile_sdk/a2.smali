###### Class ads_mobile_sdk.a2 (ads_mobile_sdk.a2)
.class public abstract synthetic Lads_mobile_sdk/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;
    .registers 3

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p0

    return-object p0
.end method
