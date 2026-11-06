###### Class ads_mobile_sdk.gx1 (ads_mobile_sdk.gx1)
.class public final Lads_mobile_sdk/gx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/bz1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bz1;)V
    .registers 3

    .line 1
    const-string v0, "mraidResizeHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/gx1;->a:Lads_mobile_sdk/bz1;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 14
    iget-object p1, p0, Lads_mobile_sdk/gx1;->a:Lads_mobile_sdk/bz1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lads_mobile_sdk/bz1;->a(Z)V

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
