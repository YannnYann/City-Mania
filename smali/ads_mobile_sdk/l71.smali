###### Class ads_mobile_sdk.l71 (ads_mobile_sdk.l71)
.class public final Lads_mobile_sdk/l71;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/o71;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/util/UUID;

.field public f:Z

.field public g:Z

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lads_mobile_sdk/o71;

.field public k:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o71;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l71;->j:Lads_mobile_sdk/o71;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l71;->i:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/l71;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/l71;->k:I

    iget-object v0, p0, Lads_mobile_sdk/l71;->j:Lads_mobile_sdk/o71;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/o71;->a(Lokhttp3/Request;Lokhttp3/OkHttpClient;ZLads_mobile_sdk/f81;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
