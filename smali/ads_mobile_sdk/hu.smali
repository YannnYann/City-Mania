###### Class ads_mobile_sdk.hu (ads_mobile_sdk.hu)
.class public final Lads_mobile_sdk/hu;
.super Lads_mobile_sdk/gu;
.source "SourceFile"


# instance fields
.field public final c:Lads_mobile_sdk/oe3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/oe3;Lads_mobile_sdk/tx;J)V
    .registers 6

    .line 1
    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p2, p3, p4, v0}, Lads_mobile_sdk/gu;-><init>(Lads_mobile_sdk/tx;JI)V

    .line 282
    iput-object p1, p0, Lads_mobile_sdk/hu;->c:Lads_mobile_sdk/oe3;

    return-void
.end method
