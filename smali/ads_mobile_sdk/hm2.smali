###### Class ads_mobile_sdk.hm2 (ads_mobile_sdk.hm2)
.class public final Lads_mobile_sdk/hm2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/im2;

.field public b:Lads_mobile_sdk/up0;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:J

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/im2;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hm2;->j:Lads_mobile_sdk/im2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/hm2;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/hm2;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/hm2;->k:I

    iget-object p1, p0, Lads_mobile_sdk/hm2;->j:Lads_mobile_sdk/im2;

    invoke-static {p1, p0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
