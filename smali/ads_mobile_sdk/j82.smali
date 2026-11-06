###### Class ads_mobile_sdk.j82 (ads_mobile_sdk.j82)
.class public final Lads_mobile_sdk/j82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/i82;


# instance fields
.field public final a:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dw2;)V
    .registers 3

    .line 1
    const-string v0, "componentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lads_mobile_sdk/j82;->a:Lads_mobile_sdk/cw2;

    return-void
.end method
