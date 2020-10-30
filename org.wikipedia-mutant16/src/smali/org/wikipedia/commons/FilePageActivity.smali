.class public final Lorg/wikipedia/commons/FilePageActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "FilePageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/commons/FilePageActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity<",
        "Lorg/wikipedia/commons/FilePageFragment;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/commons/FilePageActivity$Companion;

.field public static final INTENT_EXTRA_PAGE_TITLE:Ljava/lang/String; = "pageTitle"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/commons/FilePageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/commons/FilePageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/commons/FilePageActivity;->Companion:Lorg/wikipedia/commons/FilePageActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static final newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lorg/wikipedia/commons/FilePageActivity;->Companion:Lorg/wikipedia/commons/FilePageActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/wikipedia/commons/FilePageActivity$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/commons/FilePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/commons/FilePageActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageActivity;->createFragment()Lorg/wikipedia/commons/FilePageFragment;

    move-result-object v0

    return-object v0
.end method

.method protected createFragment()Lorg/wikipedia/commons/FilePageFragment;
    .locals 3

    .line 25
    sget-object v0, Lorg/wikipedia/commons/FilePageFragment;->Companion:Lorg/wikipedia/commons/FilePageFragment$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pageTitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1}, Lorg/wikipedia/commons/FilePageFragment$Companion;->newInstance(Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/commons/FilePageFragment;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/wikipedia/commons/FilePageActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/wikipedia/views/ImageZoomHelper;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string p1, "imageZoomHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance p1, Lorg/wikipedia/views/ImageZoomHelper;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/ImageZoomHelper;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    const p1, 0x7f0402c0

    .line 20
    invoke-static {p0, p1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 21
    invoke-static {p0, p1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    return-void
.end method
