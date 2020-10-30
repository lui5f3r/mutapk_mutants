.class public Lorg/wikipedia/main/MainFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MainFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/main/MainFragment;

.field private view7f09027f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/main/MainFragment;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->target:Lorg/wikipedia/main/MainFragment;

    .line 27
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f09016c

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'navTabContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lorg/wikipedia/main/MainFragment;->navTabContainer:Landroid/widget/LinearLayout;

    .line 29
    const-class v0, Lorg/wikipedia/navtab/NavTabLayout;

    const v1, 0x7f09016b

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/navtab/NavTabLayout;

    iput-object v0, p1, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    const v0, 0x7f09027f

    const-string v1, "field \'moreContainer\' and method \'onMoreClicked\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    iput-object p2, p1, Lorg/wikipedia/main/MainFragment;->moreContainer:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->view7f09027f:Landroid/view/View;

    .line 33
    new-instance v0, Lorg/wikipedia/main/MainFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/main/MainFragment_ViewBinding$1;-><init>(Lorg/wikipedia/main/MainFragment_ViewBinding;Lorg/wikipedia/main/MainFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->target:Lorg/wikipedia/main/MainFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->target:Lorg/wikipedia/main/MainFragment;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/main/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 49
    iput-object v1, v0, Lorg/wikipedia/main/MainFragment;->navTabContainer:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lorg/wikipedia/main/MainFragment;->tabLayout:Lorg/wikipedia/navtab/NavTabLayout;

    .line 51
    iput-object v1, v0, Lorg/wikipedia/main/MainFragment;->moreContainer:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->view7f09027f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iput-object v1, p0, Lorg/wikipedia/main/MainFragment_ViewBinding;->view7f09027f:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
