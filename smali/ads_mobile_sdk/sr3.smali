###### Class ads_mobile_sdk.sr3 (ads_mobile_sdk.sr3)
.class public final Lads_mobile_sdk/sr3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lads_mobile_sdk/ur3;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    sget-object v1, Lads_mobile_sdk/au;->a:Lads_mobile_sdk/bu;

    .line 7
    sget-object v2, Lads_mobile_sdk/bu;->b:Lads_mobile_sdk/bu;

    if-eq v1, v2, :cond_29

    .line 8
    sget-object v2, Lads_mobile_sdk/bu;->c:Lads_mobile_sdk/bu;

    if-eq v1, v2, :cond_29

    .line 13
    sget-object v2, Lads_mobile_sdk/bu;->a:Lads_mobile_sdk/bu;

    if-ne v1, v2, :cond_28

    .line 14
    sget-object v1, Lads_mobile_sdk/sr3;->a:Lads_mobile_sdk/ur3;

    if-eqz v1, :cond_28

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, p0, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    return-void

    .line 15
    :cond_29
    throw v0
.end method
