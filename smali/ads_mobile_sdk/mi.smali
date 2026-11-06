###### Class ads_mobile_sdk.mi (ads_mobile_sdk.mi)
.class public final Lads_mobile_sdk/mi;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ni;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lads_mobile_sdk/g11;

.field public g:Lads_mobile_sdk/g11;

.field public h:Lads_mobile_sdk/g11;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/ni;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ni;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mi;->j:Lads_mobile_sdk/ni;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/mi;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/mi;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/mi;->k:I

    iget-object p1, p0, Lads_mobile_sdk/mi;->j:Lads_mobile_sdk/ni;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/ni;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
