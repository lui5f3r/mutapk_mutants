.class public final Lorg/wikipedia/userprofile/Contribution;
.super Ljava/lang/Object;
.source "Contribution.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/userprofile/Contribution$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/userprofile/Contribution$Companion;

.field public static final EDIT_TYPE_ARTICLE_DESCRIPTION:I = 0x1

.field public static final EDIT_TYPE_GENERIC:I = 0x0

.field public static final EDIT_TYPE_IMAGE_CAPTION:I = 0x2

.field public static final EDIT_TYPE_IMAGE_TAG:I = 0x3


# instance fields
.field private apiTitle:Ljava/lang/String;

.field private final date:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private displayTitle:Ljava/lang/String;

.field private final editType:I

.field private imageUrl:Ljava/lang/String;

.field private pageViews:J

.field private final qNumber:Ljava/lang/String;

.field private sizeDiff:I

.field private tagCount:I

.field private top:Z

.field private final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/userprofile/Contribution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/userprofile/Contribution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/userprofile/Contribution;->Companion:Lorg/wikipedia/userprofile/Contribution$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Date;Lorg/wikipedia/dataclient/WikiSite;JIZI)V
    .locals 1

    const-string v0, "qNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiTitle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wikiSite"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/userprofile/Contribution;->qNumber:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/userprofile/Contribution;->apiTitle:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/userprofile/Contribution;->displayTitle:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/userprofile/Contribution;->description:Ljava/lang/String;

    iput p5, p0, Lorg/wikipedia/userprofile/Contribution;->editType:I

    iput-object p6, p0, Lorg/wikipedia/userprofile/Contribution;->imageUrl:Ljava/lang/String;

    iput-object p7, p0, Lorg/wikipedia/userprofile/Contribution;->date:Ljava/util/Date;

    iput-object p8, p0, Lorg/wikipedia/userprofile/Contribution;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    iput-wide p9, p0, Lorg/wikipedia/userprofile/Contribution;->pageViews:J

    iput p11, p0, Lorg/wikipedia/userprofile/Contribution;->sizeDiff:I

    iput-boolean p12, p0, Lorg/wikipedia/userprofile/Contribution;->top:Z

    iput p13, p0, Lorg/wikipedia/userprofile/Contribution;->tagCount:I

    return-void
.end method


# virtual methods
.method public final getApiTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->apiTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getEditType()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/wikipedia/userprofile/Contribution;->editType:I

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPageViews()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lorg/wikipedia/userprofile/Contribution;->pageViews:J

    return-wide v0
.end method

.method public final getQNumber()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->qNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSizeDiff()I
    .locals 1

    .line 7
    iget v0, p0, Lorg/wikipedia/userprofile/Contribution;->sizeDiff:I

    return v0
.end method

.method public final getTagCount()I
    .locals 1

    .line 7
    iget v0, p0, Lorg/wikipedia/userprofile/Contribution;->tagCount:I

    return v0
.end method

.method public final getTop()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lorg/wikipedia/userprofile/Contribution;->top:Z

    return v0
.end method

.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/wikipedia/userprofile/Contribution;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    return-object v0
.end method

.method public final setApiTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/wikipedia/userprofile/Contribution;->apiTitle:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/wikipedia/userprofile/Contribution;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lorg/wikipedia/userprofile/Contribution;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lorg/wikipedia/userprofile/Contribution;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPageViews(J)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lorg/wikipedia/userprofile/Contribution;->pageViews:J

    return-void
.end method

.method public final setSizeDiff(I)V
    .locals 0

    .line 7
    iput p1, p0, Lorg/wikipedia/userprofile/Contribution;->sizeDiff:I

    return-void
.end method

.method public final setTagCount(I)V
    .locals 0

    .line 7
    iput p1, p0, Lorg/wikipedia/userprofile/Contribution;->tagCount:I

    return-void
.end method

.method public final setTop(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lorg/wikipedia/userprofile/Contribution;->top:Z

    return-void
.end method
