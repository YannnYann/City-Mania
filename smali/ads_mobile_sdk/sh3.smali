###### Class ads_mobile_sdk.sh3 (ads_mobile_sdk.sh3)
.class public abstract Lads_mobile_sdk/sh3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/lg3;

.field public final b:Lads_mobile_sdk/qf3;

.field public final c:Lads_mobile_sdk/ph3;

.field public final d:J

.field public final e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;Lads_mobile_sdk/ph3;JLkotlin/jvm/functions/Function0;)V
    .registers 9

    .line 1
    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "importance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executionType"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scope"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lads_mobile_sdk/sh3;->a:Lads_mobile_sdk/lg3;

    .line 10
    iput-object p3, p0, Lads_mobile_sdk/sh3;->b:Lads_mobile_sdk/qf3;

    .line 11
    iput-object p4, p0, Lads_mobile_sdk/sh3;->c:Lads_mobile_sdk/ph3;

    .line 12
    iput-wide p5, p0, Lads_mobile_sdk/sh3;->d:J

    .line 13
    iput-object p7, p0, Lads_mobile_sdk/sh3;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;Lads_mobile_sdk/ph3;JLkotlin/jvm/functions/Function0;I)V
    .registers 9

    .line 15
    invoke-direct/range {p0 .. p7}, Lads_mobile_sdk/sh3;-><init>(Lads_mobile_sdk/rh3;Lads_mobile_sdk/lg3;Lads_mobile_sdk/qf3;Lads_mobile_sdk/ph3;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/lg3;
    .registers 2

    .line 9
    iget-object v0, p0, Lads_mobile_sdk/sh3;->a:Lads_mobile_sdk/lg3;

    return-object v0
.end method

.method public abstract b()Lads_mobile_sdk/rh3;
.end method

.method public final c()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lads_mobile_sdk/sh3;->d:J

    return-wide v0
.end method
