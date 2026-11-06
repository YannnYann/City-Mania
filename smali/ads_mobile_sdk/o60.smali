###### Class ads_mobile_sdk.o60 (ads_mobile_sdk.o60)
.class public final Lads_mobile_sdk/o60;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lorg/chromium/net/UrlRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/net/UrlRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/o60;->a:Lorg/chromium/net/UrlRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 545
    check-cast p1, Ljava/lang/Throwable;

    .line 546
    iget-object p1, p0, Lads_mobile_sdk/o60;->a:Lorg/chromium/net/UrlRequest;

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 547
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
