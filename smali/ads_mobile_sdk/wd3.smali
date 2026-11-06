###### Class ads_mobile_sdk.wd3 (ads_mobile_sdk.wd3)
.class public final Lads_mobile_sdk/wd3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lads_mobile_sdk/wd3;->a:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 59
    check-cast p1, Lads_mobile_sdk/be3;

    .line 60
    const-string v0, "$this$update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lads_mobile_sdk/wd3;->a:I

    .line 119
    iget-object p1, p1, Lads_mobile_sdk/be3;->a:Lads_mobile_sdk/nd3;

    .line 120
    invoke-virtual {p1, v0}, Lads_mobile_sdk/nd3;->a(I)V

    .line 121
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
