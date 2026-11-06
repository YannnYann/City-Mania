###### Class ads_mobile_sdk.a03 (ads_mobile_sdk.a03)
.class public final Lads_mobile_sdk/a03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/qn2;

.field public final b:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/qn2;Lads_mobile_sdk/dw2;)V
    .registers 4

    .line 1
    const-string v0, "pipAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestComponentBuilderProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/a03;->a:Lads_mobile_sdk/qn2;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/a03;->b:Lads_mobile_sdk/cw2;

    return-void
.end method
