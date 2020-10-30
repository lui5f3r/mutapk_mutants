.class public Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NotificationActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/notifications/NotificationActivity;

.field private view7f0902b0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationActivity;

    .line 32
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f0902af

    const-string v2, "field \'swipeRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 33
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902ae

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0902ad

    const-string v1, "field \'progressBarView\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->progressBarView:Landroid/view/View;

    .line 35
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f0902ac

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    const v0, 0x7f0902ab

    const-string v1, "field \'emptyContainerView\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/notifications/NotificationActivity;->emptyContainerView:Landroid/view/View;

    const v0, 0x7f0902b0

    const-string v1, "field \'archivedButtonView\' and method \'onViewArchivedClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p2, p1, Lorg/wikipedia/notifications/NotificationActivity;->archivedButtonView:Landroid/view/View;

    .line 39
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->view7f0902b0:Landroid/view/View;

    .line 40
    new-instance v0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding$1;-><init>(Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;Lorg/wikipedia/notifications/NotificationActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->target:Lorg/wikipedia/notifications/NotificationActivity;

    .line 55
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 56
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->progressBarView:Landroid/view/View;

    .line 58
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 59
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->emptyContainerView:Landroid/view/View;

    .line 60
    iput-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity;->archivedButtonView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->view7f0902b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity_ViewBinding;->view7f0902b0:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
