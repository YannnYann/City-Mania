###### Class ads_mobile_sdk.gf1 (ads_mobile_sdk.gf1)
.class public final Lads_mobile_sdk/gf1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Lads_mobile_sdk/vd1;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Boolean;

.field public k:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lads_mobile_sdk/if1;

.field public n:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/if1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gf1;->m:Lads_mobile_sdk/if1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/gf1;->l:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/gf1;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/gf1;->n:I

    iget-object v0, p0, Lads_mobile_sdk/gf1;->m:Lads_mobile_sdk/if1;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, p0

    invoke-static/range {v0 .. v10}, Lads_mobile_sdk/if1;->a(Lads_mobile_sdk/if1;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/vd1;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
