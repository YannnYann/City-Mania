###### Class ads_mobile_sdk.g01 (ads_mobile_sdk.g01)
.class public final Lads_mobile_sdk/g01;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/vm2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vm2;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5

    .line 1
    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 91
    iput-object p1, p0, Lads_mobile_sdk/g01;->a:Lads_mobile_sdk/vm2;

    return-void
.end method
