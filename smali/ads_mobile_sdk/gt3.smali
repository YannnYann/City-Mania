###### Class ads_mobile_sdk.gt3 (ads_mobile_sdk.gt3)
.class public final Lads_mobile_sdk/gt3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/lt3;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Collection;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;

.field public h:Lads_mobile_sdk/eo2;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/lt3;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lt3;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gt3;->j:Lads_mobile_sdk/lt3;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gt3;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/gt3;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/gt3;->k:I

    iget-object p1, p0, Lads_mobile_sdk/gt3;->j:Lads_mobile_sdk/lt3;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/lt3;->r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
