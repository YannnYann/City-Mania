###### Class ads_mobile_sdk.tv (ads_mobile_sdk.tv)
.class public final Lads_mobile_sdk/tv;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/uv;

.field public c:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tv;->b:Lads_mobile_sdk/uv;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tv;->a:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/tv;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/tv;->c:I

    iget-object p1, p0, Lads_mobile_sdk/tv;->b:Lads_mobile_sdk/uv;

    invoke-static {p1, p0}, Lads_mobile_sdk/uv;->b(Lads_mobile_sdk/uv;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
