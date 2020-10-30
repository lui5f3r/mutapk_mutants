.class public Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;
.super Ljava/lang/Object;
.source "TabActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/page/tabs/TabActivity;

.field private view7f0903c4:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;-><init>(Lorg/wikipedia/page/tabs/TabActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->target:Lorg/wikipedia/page/tabs/TabActivity;

    .line 32
    const-class v0, Lde/mrapp/android/tabswitcher/TabSwitcher;

    const v1, 0x7f0903c7

    const-string v2, "field \'tabSwitcher\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/TabSwitcher;

    iput-object v0, p1, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 33
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0903ca

    const-string v2, "field \'tabToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/page/tabs/TabActivity;->tabToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0903c4

    const-string v1, "field \'tabCountsView\' and method \'onItemClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    const-class v1, Lorg/wikipedia/views/TabCountsView;

    const-string v2, "field \'tabCountsView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/TabCountsView;

    iput-object v0, p1, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 36
    iput-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->view7f0903c4:Landroid/view/View;

    .line 37
    new-instance v0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding$1;-><init>(Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;Lorg/wikipedia/page/tabs/TabActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->target:Lorg/wikipedia/page/tabs/TabActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->target:Lorg/wikipedia/page/tabs/TabActivity;

    .line 52
    iput-object v1, v0, Lorg/wikipedia/page/tabs/TabActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 53
    iput-object v1, v0, Lorg/wikipedia/page/tabs/TabActivity;->tabToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 54
    iput-object v1, v0, Lorg/wikipedia/page/tabs/TabActivity;->tabCountsView:Lorg/wikipedia/views/TabCountsView;

    .line 56
    iget-object v0, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->view7f0903c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lorg/wikipedia/page/tabs/TabActivity_ViewBinding;->view7f0903c4:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
