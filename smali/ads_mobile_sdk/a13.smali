###### Class ads_mobile_sdk.a13 (ads_mobile_sdk.a13)
.class public final Lads_mobile_sdk/a13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/qn;

.field public final c:Lads_mobile_sdk/xe3;

.field public final d:Lads_mobile_sdk/pw2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/qn;Lads_mobile_sdk/xe3;Lads_mobile_sdk/pw2;)V
    .registers 6

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicJavascriptBridgeFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/a13;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/a13;->b:Lads_mobile_sdk/qn;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/a13;->c:Lads_mobile_sdk/xe3;

    .line 28
    iput-object p4, p0, Lads_mobile_sdk/a13;->d:Lads_mobile_sdk/pw2;

    return-void
.end method
