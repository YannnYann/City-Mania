###### Class ads_mobile_sdk.wb (ads_mobile_sdk.wb)
.class public final Lads_mobile_sdk/wb;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lads_mobile_sdk/xb;

.field public f:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xb;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wb;->e:Lads_mobile_sdk/xb;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/wb;->d:Ljava/lang/Object;

    iget p1, p0, Lads_mobile_sdk/wb;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lads_mobile_sdk/wb;->f:I

    iget-object p1, p0, Lads_mobile_sdk/wb;->e:Lads_mobile_sdk/xb;

    invoke-virtual {p1, p0}, Lads_mobile_sdk/xb;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
