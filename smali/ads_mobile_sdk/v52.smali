###### Class ads_mobile_sdk.v52 (ads_mobile_sdk.v52)
.class public final Lads_mobile_sdk/v52;
.super Lads_mobile_sdk/yr1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V
    .registers 12

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/yr1;-><init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V

    return-void
.end method
