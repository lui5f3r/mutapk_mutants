.class public final Lorg/wikipedia/userprofile/ContributionDetailsActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "ContributionDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/userprofile/ContributionDetailsFragment;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;

.field public static final EXTRA_SOURCE_CONTRIBUTION:Ljava/lang/String; = "contribution"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->Companion:Lorg/wikipedia/userprofile/ContributionDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/userprofile/ContributionDetailsActivity;->createFragment()Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/userprofile/ContributionDetailsFragment;
    .locals 1

    .line 10
    sget-object v0, Lorg/wikipedia/userprofile/ContributionDetailsFragment;->Companion:Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;

    invoke-virtual {v0}, Lorg/wikipedia/userprofile/ContributionDetailsFragment$Companion;->newInstance()Lorg/wikipedia/userprofile/ContributionDetailsFragment;

    move-result-object v0

    return-object v0
.end method

.method public final updateStatusBarColor(I)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    return-void
.end method
