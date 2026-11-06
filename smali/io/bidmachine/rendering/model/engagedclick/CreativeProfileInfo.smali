###### Class io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo (io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo)
.class public final Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

.field public static final c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public final b:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->Companion:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 2
    sget-object v1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;->REGULAR:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 3
    sget-object v2, Lio/bidmachine/rendering/model/engagedclick/ProfileSource;->NONE:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 4
    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;-><init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V

    sput-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;)V
    .registers 4

    const-string v0, "creativeProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->a:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    iput-object p2, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->b:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CREATIVE_PROFILE_INFO$cp()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-object v0
.end method


# virtual methods
.method public final getCreativeProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->a:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    return-object v0
.end method

.method public final getProfileSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->b:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo.Companion (io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo$Companion)
.class public final Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_CREATIVE_PROFILE_INFO()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->access$getDEFAULT_CREATIVE_PROFILE_INFO$cp()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object v0

    return-object v0
.end method
