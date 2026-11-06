###### Class ads_mobile_sdk.qg1 (ads_mobile_sdk.qg1)
.class public final Lads_mobile_sdk/qg1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .registers 3

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/qg1;->a:Lads_mobile_sdk/ks1;

    return-void
.end method
