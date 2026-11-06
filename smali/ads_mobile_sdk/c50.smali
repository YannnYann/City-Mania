###### Class ads_mobile_sdk.c50 (ads_mobile_sdk.c50)
.class public final Lads_mobile_sdk/c50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zr1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/c24;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c24;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c50;->a:Lads_mobile_sdk/c24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lads_mobile_sdk/or1;)Ljava/lang/Object;
    .registers 3

    .line 2
    check-cast p1, Lads_mobile_sdk/a04;

    .line 3
    iget-object p1, p0, Lads_mobile_sdk/c50;->a:Lads_mobile_sdk/c24;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
