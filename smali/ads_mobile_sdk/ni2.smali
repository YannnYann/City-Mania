###### Class ads_mobile_sdk.ni2 (ads_mobile_sdk.ni2)
.class public final Lads_mobile_sdk/ni2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lads_mobile_sdk/i2;

.field public c:Ljava/lang/Object;

.field public d:Lads_mobile_sdk/j2;

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lads_mobile_sdk/vi2;

.field public h:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vi2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ni2;->g:Lads_mobile_sdk/vi2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ni2;->f:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/ni2;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/ni2;->h:I

    iget-object p1, p0, Lads_mobile_sdk/ni2;->g:Lads_mobile_sdk/vi2;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p0}, Lads_mobile_sdk/vi2;->a(Lads_mobile_sdk/i2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
