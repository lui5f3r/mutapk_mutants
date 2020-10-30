.class public Lorg/wikipedia/page/PageToolbarHideHandler;
.super Lorg/wikipedia/page/ViewHideHandler;
.source "PageToolbarHideHandler.java"


# static fields
.field private static final FULL_OPACITY:I = 0xff


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private fadeEnabled:Z

.field private pageFragment:Lorg/wikipedia/page/PageFragment;

.field private prevToolbarLight:Ljava/lang/Boolean;

.field private themedIconColor:I

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarBackground:Landroid/graphics/drawable/Drawable;

.field private toolbarHeight:I


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Landroid/view/View;Landroidx/appcompat/widget/Toolbar;Lorg/wikipedia/views/TabCountsView;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x30

    .line 38
    invoke-direct {p0, p2, v0, v1}, Lorg/wikipedia/page/ViewHideHandler;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 25
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 39
    iput-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->pageFragment:Lorg/wikipedia/page/PageFragment;

    .line 40
    iput-object p3, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbarBackground:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0403f3

    invoke-static {p2, p3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->themedIconColor:I

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeightPx(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbarHeight:I

    .line 44
    invoke-virtual {p4}, Lorg/wikipedia/views/TabCountsView;->updateTabCount()V

    return-void
.end method

.method private calculateIconTintForOpacity(F)I
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->themedIconColor:I

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private updateChildIconTint(Landroid/view/ViewGroup;F)V
    .locals 4

    .line 70
    invoke-direct {p0, p2}, Lorg/wikipedia/page/PageToolbarHideHandler;->calculateIconTintForOpacity(F)I

    move-result v0

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 72
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 73
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 74
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 78
    :cond_0
    instance-of v3, v2, Lorg/wikipedia/views/TabCountsView;

    if-eqz v3, :cond_1

    .line 79
    check-cast v2, Lorg/wikipedia/views/TabCountsView;

    invoke-virtual {v2, v0}, Lorg/wikipedia/views/TabCountsView;->setColor(I)V

    goto :goto_1

    .line 80
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 81
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lorg/wikipedia/page/PageToolbarHideHandler;->updateChildIconTint(Landroid/view/ViewGroup;F)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 85
    iget-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onScrolled(II)V
    .locals 3

    .line 58
    iget-boolean p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->fadeEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/DimenUtil;->leadImageHeightForDevice(Landroid/content/Context;)I

    move-result p1

    iget v1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbarHeight:I

    sub-int/2addr p1, v1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    .line 59
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    iget-object v1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->toolbar:Landroidx/appcompat/widget/Toolbar;

    int-to-float v2, p1

    invoke-direct {p0, v1, v2}, Lorg/wikipedia/page/PageToolbarHideHandler;->updateChildIconTint(Landroid/view/ViewGroup;F)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 62
    :goto_1
    iget-object v2, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->prevToolbarLight:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 63
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->prevToolbarLight:Ljava/lang/Boolean;

    .line 64
    iget-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->pageFragment:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageActivity;

    iget-object v2, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->prevToolbarLight:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lorg/wikipedia/page/PageActivity;->requestLightStatusBar(Z)V

    .line 66
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->pageFragment:Lorg/wikipedia/page/PageFragment;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p1, v0}, Lorg/wikipedia/page/PageFragment;->setToolbarElevationEnabled(Z)V

    return-void
.end method

.method setFadeEnabled(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lorg/wikipedia/page/PageToolbarHideHandler;->fadeEnabled:Z

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/page/ViewHideHandler;->update()V

    return-void
.end method
