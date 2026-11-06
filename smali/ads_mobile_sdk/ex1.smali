###### Class ads_mobile_sdk.ex1 (ads_mobile_sdk.ex1)
.class public abstract Lads_mobile_sdk/ex1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/fx1;
    .registers 13

    .line 1
    const-string v0, "cuiName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lads_mobile_sdk/fx1;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v0, "randomUUID(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Lads_mobile_sdk/ks3;

    .line 7
    new-instance v0, Lads_mobile_sdk/n03;

    invoke-direct {v0}, Lads_mobile_sdk/n03;-><init>()V

    .line 8
    new-instance v2, Lads_mobile_sdk/tn1;

    invoke-direct {v2}, Lads_mobile_sdk/tn1;-><init>()V

    .line 9
    new-instance v3, Lads_mobile_sdk/m33;

    invoke-direct {v3}, Lads_mobile_sdk/m33;-><init>()V

    .line 10
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 11
    invoke-direct {v5, v0, v2, v3, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v9, p2

    .line 12
    invoke-direct/range {v1 .. v9}, Lads_mobile_sdk/fx1;-><init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;IILads_mobile_sdk/rr3;Z)V

    return-object v1
.end method
