###### Class ads_mobile_sdk.o83 (ads_mobile_sdk.o83)
.class public final Lads_mobile_sdk/o83;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/u83;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u83;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/o83;->a:Lads_mobile_sdk/u83;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 92
    check-cast p1, Landroid/view/View;

    .line 93
    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/o83;->a:Lads_mobile_sdk/u83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, v0, Lads_mobile_sdk/u83;->c:Landroid/view/View;

    .line 236
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
