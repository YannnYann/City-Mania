###### Class kotlinx.coroutines.flow.internal.FlowExceptions_commonKt (kotlinx.coroutines.flow.internal.FlowExceptions_commonKt)
.class public final Lkotlinx/coroutines/flow/internal/FlowExceptions_commonKt;
.super Ljava/lang/Object;
.source "FlowExceptions.common.kt"


# direct methods
.method public static final checkOwnership(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljava/lang/Object;)V
    .registers 3

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    throw p0
.end method
