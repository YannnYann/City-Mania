###### Class ads_mobile_sdk.y51 (ads_mobile_sdk.y51)
.class public final Lads_mobile_sdk/y51;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/b61;

.field public final synthetic b:Lads_mobile_sdk/z51;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b61;Lads_mobile_sdk/z51;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/y51;->a:Lads_mobile_sdk/b61;

    iput-object p2, p0, Lads_mobile_sdk/y51;->b:Lads_mobile_sdk/z51;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 83
    check-cast p1, Ljava/lang/Throwable;

    .line 84
    iget-object p1, p0, Lads_mobile_sdk/y51;->a:Lads_mobile_sdk/b61;

    .line 85
    iget-object p1, p1, Lads_mobile_sdk/b61;->c:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_d

    .line 86
    iget-object v0, p0, Lads_mobile_sdk/y51;->b:Lads_mobile_sdk/z51;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
