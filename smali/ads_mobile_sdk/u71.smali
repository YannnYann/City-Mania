###### Class ads_mobile_sdk.u71 (ads_mobile_sdk.u71)
.class public final Lads_mobile_sdk/u71;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lokhttp3/Call;


# direct methods
.method public constructor <init>(Lokhttp3/Call;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u71;->a:Lokhttp3/Call;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 524
    check-cast p1, Ljava/lang/Throwable;

    .line 525
    :try_start_2
    iget-object p1, p0, Lads_mobile_sdk/u71;->a:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->cancel()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_7

    .line 526
    :catchall_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
