###### Class ads_mobile_sdk.vx0 (ads_mobile_sdk.vx0)
.class public final Lads_mobile_sdk/vx0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/yx0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yx0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vx0;->a:Lads_mobile_sdk/yx0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/vx0;->a:Lads_mobile_sdk/yx0;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/yx0;->I:Lads_mobile_sdk/h41;

    if-eqz v0, :cond_7

    goto :goto_d

    .line 4
    :cond_7
    const-string v0, "gmaWebViewContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    :goto_d
    iget-object v0, v0, Lads_mobile_sdk/h41;->a:Lads_mobile_sdk/r31;

    return-object v0
.end method
