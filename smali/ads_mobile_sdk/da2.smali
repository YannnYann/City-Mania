###### Class ads_mobile_sdk.da2 (ads_mobile_sdk.da2)
.class public final Lads_mobile_sdk/da2;
.super Lads_mobile_sdk/nc1;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/ca2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ca2;)V
    .registers 4

    .line 1
    const-string v0, "networkConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lads_mobile_sdk/s11;->c0:Lads_mobile_sdk/s11;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/nc1;-><init>(Lads_mobile_sdk/s11;I)V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/da2;->c:Lads_mobile_sdk/ca2;

    return-void
.end method


# virtual methods
.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 15
    iget-object v0, p0, Lads_mobile_sdk/da2;->c:Lads_mobile_sdk/ca2;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ca2;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
