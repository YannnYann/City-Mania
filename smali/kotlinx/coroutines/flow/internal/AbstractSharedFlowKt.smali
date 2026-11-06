###### Class kotlinx.coroutines.flow.internal.AbstractSharedFlowKt (kotlinx.coroutines.flow.internal.AbstractSharedFlowKt)
.class public final Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# static fields
.field public static final EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Lkotlin/coroutines/Continuation;

    sput-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-void
.end method
