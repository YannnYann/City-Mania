###### Class ads_mobile_sdk.gd2 (ads_mobile_sdk.gd2)
.class public final Lads_mobile_sdk/gd2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/k9;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/k9;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gd2;->a:Lads_mobile_sdk/k9;

    iput-object p2, p0, Lads_mobile_sdk/gd2;->b:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/gd2;->a:Lads_mobile_sdk/k9;

    iget-object v1, p0, Lads_mobile_sdk/gd2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/k9;->a(Landroid/view/View;)V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
