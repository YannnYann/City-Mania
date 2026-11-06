###### Class io.bidmachine.iab.mraid.MraidActivity (io.bidmachine.iab.mraid.MraidActivity)
.class public Lio/bidmachine/iab/mraid/MraidActivity;
.super Lio/bidmachine/rendering/internal/AdActivity;
.source "SourceFile"


# static fields
.field public static final d:Landroid/util/SparseArray;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lio/bidmachine/iab/mraid/MraidInterstitial;

.field public c:Z


# direct methods
.method public static synthetic $r8$lambda$29zNgGvxNllw_TaOtBoYrtoUoVQ(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PSD5c8hho_PniUkT0CMOl3EfBOM(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/AdActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;I)Landroid/content/Intent;
    .registers 4

    .line 4
    const-class v0, Lio/bidmachine/iab/mraid/MraidActivity;

    invoke-static {p0, v0}, Lio/bidmachine/rendering/internal/a;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    .line 5
    const-string v0, "InterstitialId"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    const-string p2, "InterstitialType"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception during showing MraidInterstitial in MraidActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception during showing MraidActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 3

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->id:I

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 3
    :cond_3
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidType;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "mraidInterstitial",
            "mraidType"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MraidActivity"

    if-nez p1, :cond_d

    .line 1
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "MraidInterstitial is null during showing MraidActivity"

    invoke-static {v1, p1, p0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    if-nez p0, :cond_1e

    .line 5
    new-array p0, v0, [Ljava/lang/Object;

    const-string p2, "Context is null during showing MraidActivity"

    invoke-static {v1, p2, p0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p2}, Lio/bidmachine/iab/IabError;->noRequiredArguments(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    return-void

    :cond_1e
    if-nez p2, :cond_2f

    .line 11
    new-array p0, v0, [Ljava/lang/Object;

    const-string p2, "MraidType is null during showing MraidActivity"

    invoke-static {v1, p2, p0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {p2}, Lio/bidmachine/iab/IabError;->noRequiredArguments(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    return-void

    .line 17
    :cond_2f
    :try_start_2f
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    .line 18
    iget v0, p1, Lio/bidmachine/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0, p2, v0}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;I)Landroid/content/Intent;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception p0

    .line 21
    new-instance p2, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, p2}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 22
    const-string p2, "Exception during showing MraidActivity"

    invoke-static {p2, p0}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    .line 24
    iget p0, p1, Lio/bidmachine/iab/mraid/MraidInterstitial;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 8
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->dispatchClose()V

    return-void

    .line 12
    :cond_c
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    :cond_f
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidActivity;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/AdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "InterstitialId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "MraidActivity"

    const/4 v2, 0x0

    if-nez p1, :cond_1d

    .line 4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Mraid display cache id not provided"

    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void

    .line 9
    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    .line 10
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidInterstitial;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_46

    .line 13
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Mraid interstitial not found in display cache, id=%s"

    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    return-void

    .line 19
    :cond_46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "InterstitialType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/mraid/MraidType;

    if-nez p1, :cond_68

    .line 21
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "MraidType is null"

    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    .line 24
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {v0}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    return-void

    .line 30
    :cond_68
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->prepareFullscreen(Landroid/app/Activity;)V

    .line 32
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_80

    const/4 v3, 0x2

    if-eq p1, v3, :cond_80

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7d

    goto :goto_82

    .line 39
    :cond_7d
    iput-boolean v2, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    goto :goto_82

    .line 40
    :cond_80
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    .line 50
    :goto_82
    :try_start_82
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1, p0, v2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_a2

    :catch_88
    move-exception p1

    .line 52
    new-instance v0, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 54
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    const-string v1, "Exception during showing MraidInterstitial in MraidActivity"

    invoke-static {v1, p1}, Lio/bidmachine/iab/IabError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    .line 58
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->c()V

    .line 61
    :goto_a2
    invoke-static {p0}, Lio/bidmachine/util/UiUtils;->applyFullscreen(Landroid/app/Activity;)V

    .line 62
    invoke-static {p0}, Lio/bidmachine/iab/utils/Utils;->applyWindowInsets(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_15

    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b()V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->c()V

    :cond_15
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidActivity.a (io.bidmachine.iab.mraid.MraidActivity$a)
.class public abstract synthetic Lio/bidmachine/iab/mraid/MraidActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/iab/mraid/MraidType;->values()[Lio/bidmachine/iab/mraid/MraidType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/iab/mraid/MraidActivity$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Static:Lio/bidmachine/iab/mraid/MraidType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Video:Lio/bidmachine/iab/mraid/MraidType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity$a;->a:[I

    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Rewarded:Lio/bidmachine/iab/mraid/MraidType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda0 (io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidActivity;->$r8$lambda$29zNgGvxNllw_TaOtBoYrtoUoVQ(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda1 (io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Exception;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidActivity;->$r8$lambda$PSD5c8hho_PniUkT0CMOl3EfBOM(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
