###### Class ads_mobile_sdk.q14 (ads_mobile_sdk.q14)
.class public final Lads_mobile_sdk/q14;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/q14;->a:Lads_mobile_sdk/r14;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 5

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/q14;->a:Lads_mobile_sdk/r14;

    .line 3
    iget-object v0, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v1, "key"

    const-string v2, "gads:use_gma_profile:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method
