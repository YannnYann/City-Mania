###### Class ads_mobile_sdk.b0 (ads_mobile_sdk.b0)
.class public final Lads_mobile_sdk/b0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/b0;->a:Landroid/app/Activity;

    iput-object p2, p0, Lads_mobile_sdk/b0;->b:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 272
    check-cast p1, Lads_mobile_sdk/n;

    .line 273
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lads_mobile_sdk/b0;->a:Landroid/app/Activity;

    iget-object v1, p0, Lads_mobile_sdk/b0;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lads_mobile_sdk/n;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 545
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
