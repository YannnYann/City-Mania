###### Class ads_mobile_sdk.sg2 (ads_mobile_sdk.sg2)
.class public final Lads_mobile_sdk/sg2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/ah2;

.field public b:Ljava/util/Map;

.field public c:Lads_mobile_sdk/r31;

.field public d:Ljava/lang/String;

.field public e:Landroid/app/Activity;

.field public f:Landroid/net/Uri;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lads_mobile_sdk/ah2;

.field public m:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ah2;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sg2;->l:Lads_mobile_sdk/ah2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sg2;->k:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/sg2;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/sg2;->m:I

    iget-object v0, p0, Lads_mobile_sdk/sg2;->l:Lads_mobile_sdk/ah2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/ah2;->a(Ljava/util/Map;ZZZLads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
