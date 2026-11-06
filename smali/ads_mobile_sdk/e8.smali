###### Class ads_mobile_sdk.e8 (ads_mobile_sdk.e8)
.class public final Lads_mobile_sdk/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/d8;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;)V
    .registers 3

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/e8;->a:Lads_mobile_sdk/ex0;

    return-void
.end method
