###### Class ads_mobile_sdk.gc2 (ads_mobile_sdk.gc2)
.class public final Lads_mobile_sdk/gc2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/i2;

.field public final b:Lads_mobile_sdk/zy;

.field public final c:Lads_mobile_sdk/ca2;

.field public final d:Lads_mobile_sdk/ac2;

.field public final e:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ca2;Lads_mobile_sdk/ac2;Lads_mobile_sdk/ex0;)V
    .registers 7

    .line 1
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectivityManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDatabase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/gc2;->a:Lads_mobile_sdk/i2;

    .line 20
    iput-object p2, p0, Lads_mobile_sdk/gc2;->b:Lads_mobile_sdk/zy;

    .line 21
    iput-object p3, p0, Lads_mobile_sdk/gc2;->c:Lads_mobile_sdk/ca2;

    .line 22
    iput-object p4, p0, Lads_mobile_sdk/gc2;->d:Lads_mobile_sdk/ac2;

    .line 23
    iput-object p5, p0, Lads_mobile_sdk/gc2;->e:Lads_mobile_sdk/ex0;

    return-void
.end method
