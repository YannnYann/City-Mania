###### Class ads_mobile_sdk.vd3 (ads_mobile_sdk.vd3)
.class public final Lads_mobile_sdk/vd3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lads_mobile_sdk/vd3;->a:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 72
    check-cast p1, Lads_mobile_sdk/be3;

    .line 73
    const-string v0, "$this$update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lads_mobile_sdk/vd3;->a:Z

    .line 145
    iget-object p1, p1, Lads_mobile_sdk/be3;->a:Lads_mobile_sdk/nd3;

    .line 146
    invoke-virtual {p1, v0}, Lads_mobile_sdk/nd3;->a(Z)V

    .line 147
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
