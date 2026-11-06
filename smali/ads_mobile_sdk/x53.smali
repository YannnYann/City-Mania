###### Class ads_mobile_sdk.x53 (ads_mobile_sdk.x53)
.class public final Lads_mobile_sdk/x53;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/c63;

.field public b:Landroid/net/Uri;

.field public c:Lads_mobile_sdk/ha2;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;

.field public f:Lads_mobile_sdk/v3;

.field public g:Lads_mobile_sdk/i2;

.field public h:Ljava/lang/Boolean;

.field public i:Lads_mobile_sdk/ks3;

.field public j:I

.field public k:J

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lads_mobile_sdk/c63;

.field public n:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/c63;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x53;->m:Lads_mobile_sdk/c63;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x53;->l:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/x53;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/x53;->n:I

    iget-object v0, p0, Lads_mobile_sdk/x53;->m:Lads_mobile_sdk/c63;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v12, p0

    .line 2
    invoke-virtual/range {v0 .. v12}, Lads_mobile_sdk/c63;->a(Landroid/net/Uri;Lads_mobile_sdk/ha2;IJLjava/lang/String;Ljava/util/Map;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Ljava/lang/Boolean;Lads_mobile_sdk/ks3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
