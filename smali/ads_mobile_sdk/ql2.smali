###### Class ads_mobile_sdk.ql2 (ads_mobile_sdk.ql2)
.class public final Lads_mobile_sdk/ql2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/ql2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ql2;

    invoke-direct {v0}, Lads_mobile_sdk/ql2;-><init>()V

    sput-object v0, Lads_mobile_sdk/ql2;->a:Lads_mobile_sdk/ql2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 786
    check-cast p1, Lads_mobile_sdk/o1;

    .line 787
    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1572
    invoke-static {}, Lads_mobile_sdk/o1;->x()Lads_mobile_sdk/o1;

    move-result-object p1

    const-string v0, "getDefaultInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
