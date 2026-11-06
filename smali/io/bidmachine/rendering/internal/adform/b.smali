###### Class io.bidmachine.rendering.internal.adform.b (io.bidmachine.rendering.internal.adform.b)
.class public final Lio/bidmachine/rendering/internal/adform/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/b$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/Repository;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/Repository;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)Lio/bidmachine/rendering/internal/adform/a;
    .registers 17

    const-string v0, "assetsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adElementParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AdElementParams;->getAdElementType()Lio/bidmachine/rendering/model/AdElementType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/rendering/internal/adform/b$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "applicationContext"

    packed-switch v0, :pswitch_data_b8

    .line 66
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_2b
    new-instance v0, Lio/bidmachine/rendering/internal/adform/countdown/a;

    .line 67
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object v1, v2

    move-object v2, p1

    .line 70
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/adform/countdown/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    return-object v0

    .line 71
    :pswitch_3f
    new-instance v0, Lio/bidmachine/rendering/internal/adform/progress/a;

    .line 72
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object v1, v0

    .line 75
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/adform/progress/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    return-object v1

    .line 76
    :pswitch_53
    new-instance v0, Lio/bidmachine/rendering/internal/adform/label/a;

    .line 77
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object v1, v0

    .line 80
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/adform/label/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    return-object v1

    .line 81
    :pswitch_67
    new-instance v0, Lio/bidmachine/rendering/internal/adform/image/a;

    .line 82
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object v1, v0

    .line 85
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/adform/image/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    return-object v1

    .line 86
    :pswitch_7b
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/a;

    .line 87
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    .line 94
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AdElementParams;->getMeasurerFactoryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/adform/b;->a(Ljava/util/List;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object v9

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object v1, v0

    .line 95
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/rendering/internal/adform/video/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/VideoMeasurer;)V

    return-object v1

    .line 96
    :pswitch_97
    new-instance v0, Lio/bidmachine/rendering/internal/adform/html/a;

    .line 97
    iget-object v2, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lio/bidmachine/rendering/internal/adform/b;->a:Lio/bidmachine/rendering/Repository;

    .line 104
    new-instance v9, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AdElementParams;->getMeasurerFactoryList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurerFactory;-><init>(Ljava/util/List;)V

    .line 105
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AdElementParams;->getScriptsConfig()Ljava/util/List;

    move-result-object v10

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object v1, v0

    .line 106
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/rendering/internal/adform/html/a;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/rendering/model/AdElementParams;Lio/bidmachine/rendering/internal/adform/c;Lio/bidmachine/rendering/internal/event/a;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/HtmlMeasurerFactory;Ljava/util/List;)V

    return-object v1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_97
        :pswitch_7b
        :pswitch_67
        :pswitch_53
        :pswitch_3f
        :pswitch_2b
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3f

    .line 123
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    check-cast v2, Lio/bidmachine/rendering/measurer/MeasurerFactory;

    .line 134
    :try_start_1f
    iget-object v3, p0, Lio/bidmachine/rendering/internal/adform/b;->b:Landroid/content/Context;

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/bidmachine/rendering/measurer/VideoMeasurerFactory;->createVideoMeasurer(Landroid/content/Context;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2b

    goto :goto_2c

    :catchall_2b
    move-object v2, v0

    :goto_2c
    if-eqz v2, :cond_13

    .line 152
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 153
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    return-object v0

    .line 156
    :cond_39
    new-instance p1, Lio/bidmachine/rendering/measurer/CompositeVideoMeasurer;

    invoke-direct {p1, v1}, Lio/bidmachine/rendering/measurer/CompositeVideoMeasurer;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_3f
    :goto_3f
    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.adform.b.a (io.bidmachine.rendering.internal.adform.b$a)
.class public abstract synthetic Lio/bidmachine/rendering/internal/adform/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/AdElementType;->values()[Lio/bidmachine/rendering/model/AdElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    sput-object v0, Lio/bidmachine/rendering/internal/adform/b$a;->$EnumSwitchMapping$0:[I

    return-void
.end method
