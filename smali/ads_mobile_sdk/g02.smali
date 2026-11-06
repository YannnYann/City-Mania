###### Class ads_mobile_sdk.g02 (ads_mobile_sdk.g02)
.class public final Lads_mobile_sdk/g02;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/g02;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/g02;

    invoke-direct {v0}, Lads_mobile_sdk/g02;-><init>()V

    sput-object v0, Lads_mobile_sdk/g02;->a:Lads_mobile_sdk/g02;

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

    .line 76
    check-cast p1, Lads_mobile_sdk/ck1;

    .line 77
    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lads_mobile_sdk/vz1;

    invoke-direct {v0, p1}, Lads_mobile_sdk/vz1;-><init>(Lads_mobile_sdk/ck1;)V

    return-object v0
.end method
