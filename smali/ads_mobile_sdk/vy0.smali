###### Class ads_mobile_sdk.vy0 (ads_mobile_sdk.vy0)
.class public final Lads_mobile_sdk/vy0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/vy0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/vy0;

    invoke-direct {v0}, Lads_mobile_sdk/vy0;-><init>()V

    sput-object v0, Lads_mobile_sdk/vy0;->a:Lads_mobile_sdk/vy0;

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

    .line 517
    check-cast p1, Lads_mobile_sdk/c1;

    .line 518
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lads_mobile_sdk/c1;->b()V

    .line 1035
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
