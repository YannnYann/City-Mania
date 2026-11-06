###### Class ads_mobile_sdk.pa1 (ads_mobile_sdk.pa1)
.class public final Lads_mobile_sdk/pa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/lm0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/e01;

.field public final synthetic b:Lads_mobile_sdk/if1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lads_mobile_sdk/e01;)V
    .registers 3

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/pa1;->a:Lads_mobile_sdk/e01;

    iput-object p1, p0, Lads_mobile_sdk/pa1;->b:Lads_mobile_sdk/if1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/pa1;->a:Lads_mobile_sdk/e01;

    iget-object v1, p0, Lads_mobile_sdk/pa1;->b:Lads_mobile_sdk/if1;

    invoke-interface {v0, v1}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/vk0;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
