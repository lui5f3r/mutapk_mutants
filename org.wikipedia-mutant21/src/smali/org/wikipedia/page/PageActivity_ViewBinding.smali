.class public Lorg/wikipedia/page/PageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/page/PageActivity;

.field private view7f0902e2:Landroid/view/View;

.field private view7f0902e3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/page/PageActivity_ViewBinding;-><init>(Lorg/wikipedia/page/PageActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageActivity;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->target:Lorg/wikipedia/page/PageActivity;

    .line 37
    const-class v0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    const v1, 0x7f090280

    const-string v2, "field \'drawerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/FixedDrawerLayout;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 38
    const-class v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    const v1, 0x7f09004f

    const-string v2, "field \'containerWithNavTrigger\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->containerWithNavTrigger:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    .line 39
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0902dc

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0902e4

    const-string v1, "field \'toolbarContainerView\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    .line 41
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902e1

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0902e3

    const-string v1, "field \'tabsButton\' and method \'onShowTabsButtonClicked\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Lorg/wikipedia/views/TabCountsView;

    const-string v3, "field \'tabsButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/TabCountsView;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    .line 44
    iput-object v1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e3:Landroid/view/View;

    .line 45
    new-instance v0, Lorg/wikipedia/page/PageActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/PageActivity_ViewBinding$1;-><init>(Lorg/wikipedia/page/PageActivity_ViewBinding;Lorg/wikipedia/page/PageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902e2

    const-string v1, "field \'overflowButton\' and method \'onShowOverflowMenuButtonClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 52
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'overflowButton\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/page/PageActivity;->overflowButton:Landroid/widget/ImageView;

    .line 53
    iput-object p2, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e2:Landroid/view/View;

    .line 54
    new-instance v0, Lorg/wikipedia/page/PageActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/PageActivity_ViewBinding$2;-><init>(Lorg/wikipedia/page/PageActivity_ViewBinding;Lorg/wikipedia/page/PageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->target:Lorg/wikipedia/page/PageActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->target:Lorg/wikipedia/page/PageActivity;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->drawerLayout:Landroidx/drawerlayout/widget/FixedDrawerLayout;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->containerWithNavTrigger:Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 72
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->toolbarContainerView:Landroid/view/View;

    .line 73
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 74
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->tabsButton:Lorg/wikipedia/views/TabCountsView;

    .line 75
    iput-object v1, v0, Lorg/wikipedia/page/PageActivity;->overflowButton:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e3:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lorg/wikipedia/page/PageActivity_ViewBinding;->view7f0902e2:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
