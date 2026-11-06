###### Class ads_mobile_sdk.w01 (ads_mobile_sdk.w01)
.class public final Lads_mobile_sdk/w01;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/i01;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/i01;)V
    .registers 3

    .line 1
    const-string v0, "resultError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/w01;->a:Lads_mobile_sdk/i01;

    return-void
.end method
