###### Class ads_mobile_sdk.go1 (ads_mobile_sdk.go1)
.class public final Lads_mobile_sdk/go1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lads_mobile_sdk/go1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/go1;

    invoke-direct {v0}, Lads_mobile_sdk/go1;-><init>()V

    sput-object v0, Lads_mobile_sdk/go1;->a:Lads_mobile_sdk/go1;

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

    .line 44
    check-cast p1, Lads_mobile_sdk/pk1;

    .line 45
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lads_mobile_sdk/mo1;

    invoke-direct {v0, p1}, Lads_mobile_sdk/mo1;-><init>(Lads_mobile_sdk/pk1;)V

    return-object v0
.end method
