###### Class ads_mobile_sdk.km0 (ads_mobile_sdk.km0)
.class public final Lads_mobile_sdk/km0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/a04;
.implements Lads_mobile_sdk/nr1;


# instance fields
.field public final a:Lads_mobile_sdk/r31;

.field public final synthetic b:Lads_mobile_sdk/nr1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;)V
    .registers 3

    .line 1
    const-string v0, "gmaWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/km0;->a:Lads_mobile_sdk/r31;

    .line 273
    invoke-virtual {p1}, Lads_mobile_sdk/r31;->c()Lads_mobile_sdk/nr1;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/km0;->b:Lads_mobile_sdk/nr1;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/r31;
    .registers 2

    .line 272
    iget-object v0, p0, Lads_mobile_sdk/km0;->a:Lads_mobile_sdk/r31;

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 273
    iget-object v0, p0, Lads_mobile_sdk/km0;->b:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 274
    iget-object v0, p0, Lads_mobile_sdk/km0;->b:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 275
    iget-object v0, p0, Lads_mobile_sdk/km0;->b:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;
    .registers 5

    .line 277
    iget-object v0, p0, Lads_mobile_sdk/km0;->b:Lads_mobile_sdk/nr1;

    invoke-interface {v0, p1, p2, p3}, Lads_mobile_sdk/nr1;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
