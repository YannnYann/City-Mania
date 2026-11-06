###### Class ads_mobile_sdk.zb2 (ads_mobile_sdk.zb2)
.class public final Lads_mobile_sdk/zb2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lads_mobile_sdk/ac2;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ac2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zb2;->b:Lads_mobile_sdk/ac2;

    iput-object p2, p0, Lads_mobile_sdk/zb2;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/zb2;

    iget-object v1, p0, Lads_mobile_sdk/zb2;->b:Lads_mobile_sdk/ac2;

    iget-object v2, p0, Lads_mobile_sdk/zb2;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lads_mobile_sdk/zb2;-><init>(Lads_mobile_sdk/ac2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/zb2;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/zb2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zb2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zb2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/zb2;->a:Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    iget-object v0, p0, Lads_mobile_sdk/zb2;->b:Lads_mobile_sdk/ac2;

    iget-object v1, p0, Lads_mobile_sdk/zb2;->c:Ljava/lang/String;

    sget-object v2, Lads_mobile_sdk/ac2;->f:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    sget-object v2, Lads_mobile_sdk/rb2;->a:Lads_mobile_sdk/rb2;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "event_state"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "offline_buffered_pings"

    const-string v3, "gws_query_id = ?"

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/zb2;->b:Lads_mobile_sdk/ac2;

    invoke-static {v0, p1}, Lads_mobile_sdk/ac2;->a(Lads_mobile_sdk/ac2;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
