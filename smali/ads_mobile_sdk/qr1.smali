###### Class ads_mobile_sdk.qr1 (ads_mobile_sdk.qr1)
.class public final Lads_mobile_sdk/qr1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lads_mobile_sdk/yr1;

.field public b:Lads_mobile_sdk/r31;

.field public c:Landroid/net/Uri;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public g:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lads_mobile_sdk/yr1;

.field public j:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qr1;->i:Lads_mobile_sdk/yr1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qr1;->h:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/qr1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/qr1;->j:I

    iget-object p1, p0, Lads_mobile_sdk/qr1;->i:Lads_mobile_sdk/yr1;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
