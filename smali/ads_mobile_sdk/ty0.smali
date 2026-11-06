###### Class ads_mobile_sdk.ty0 (ads_mobile_sdk.ty0)
.class public final Lads_mobile_sdk/ty0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/ty0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/ty0;

    invoke-direct {v0}, Lads_mobile_sdk/ty0;-><init>()V

    sput-object v0, Lads_mobile_sdk/ty0;->a:Lads_mobile_sdk/ty0;

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

    .line 476
    check-cast p1, Lads_mobile_sdk/c1;

    .line 477
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1}, Lads_mobile_sdk/c1;->a()V

    .line 953
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
