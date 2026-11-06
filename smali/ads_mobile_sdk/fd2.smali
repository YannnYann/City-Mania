###### Class ads_mobile_sdk.fd2 (ads_mobile_sdk.fd2)
.class public final Lads_mobile_sdk/fd2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lads_mobile_sdk/fd2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/fd2;

    invoke-direct {v0}, Lads_mobile_sdk/fd2;-><init>()V

    sput-object v0, Lads_mobile_sdk/fd2;->a:Lads_mobile_sdk/fd2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/jd2;->a:Lads_mobile_sdk/me2;

    .line 2
    iget-boolean v0, v0, Lads_mobile_sdk/me2;->a:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
