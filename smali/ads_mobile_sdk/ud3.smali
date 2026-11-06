###### Class ads_mobile_sdk.ud3 (ads_mobile_sdk.ud3)
.class public final Lads_mobile_sdk/ud3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/xp0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xp0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ud3;->a:Lads_mobile_sdk/xp0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p1, Lads_mobile_sdk/be3;

    .line 67
    const-string v0, "$this$update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lads_mobile_sdk/ud3;->a:Lads_mobile_sdk/xp0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object p1, p1, Lads_mobile_sdk/be3;->a:Lads_mobile_sdk/nd3;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/nd3;->a(Lads_mobile_sdk/xp0;)V

    .line 227
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
