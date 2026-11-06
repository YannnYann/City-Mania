###### Class ads_mobile_sdk.bs (ads_mobile_sdk.bs)
.class public abstract Lads_mobile_sdk/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lads_mobile_sdk/ks3;

.field public final d:Lads_mobile_sdk/ej1;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILads_mobile_sdk/ks3;Lads_mobile_sdk/ej1;)V
    .registers 6

    .line 1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalAdRequestEventEmitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/bs;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lads_mobile_sdk/bs;->b:I

    .line 15
    iput-object p3, p0, Lads_mobile_sdk/bs;->c:Lads_mobile_sdk/ks3;

    .line 16
    iput-object p4, p0, Lads_mobile_sdk/bs;->d:Lads_mobile_sdk/ej1;

    return-void
.end method
