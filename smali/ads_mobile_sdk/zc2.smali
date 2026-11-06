###### Class ads_mobile_sdk.zc2 (ads_mobile_sdk.zc2)
.class public final Lads_mobile_sdk/zc2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/k9;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k9;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zc2;->a:Lads_mobile_sdk/k9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/zc2;->a:Lads_mobile_sdk/k9;

    invoke-virtual {v0}, Lads_mobile_sdk/k9;->a()V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
