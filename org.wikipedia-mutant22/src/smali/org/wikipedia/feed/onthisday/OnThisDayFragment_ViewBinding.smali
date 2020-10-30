.class public Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;
.super Ljava/lang/Object;
.source "OnThisDayFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field private view7f0900eb:Landroid/view/View;

.field private view7f0901c7:Landroid/view/View;

.field private view7f090415:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900ea

    const-string v2, "field \'dayText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    .line 38
    const-class v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f0900bd

    const-string v2, "field \'collapsingToolbarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900ed

    const-string v2, "field \'dayInfoTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayInfoTextView:Landroid/widget/TextView;

    .line 40
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09013b

    const-string v2, "field \'eventsRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0902b5

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 42
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901a1

    const-string v2, "field \'headerFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->headerFrameLayout:Landroid/widget/FrameLayout;

    .line 43
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090412

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 44
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090060

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 45
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f0902b4

    const-string v2, "field \'errorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 46
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901c5

    const-string v2, "field \'indicatorDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorDate:Landroid/widget/TextView;

    const v0, 0x7f0901c7

    const-string v1, "field \'indicatorLayout\' and method \'onIndicatorLayoutClicked\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'indicatorLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    .line 49
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0901c7:Landroid/view/View;

    .line 50
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$1;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090414

    const-string v2, "field \'toolbarDay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDay:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090116

    const-string v2, "field \'toolbarDropDown\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDropDown:Landroid/widget/ImageView;

    const v0, 0x7f0900eb

    const-string v1, "method \'onCalendarClicked\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0900eb:Landroid/view/View;

    .line 60
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;

    invoke-direct {v2, p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$2;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090415

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 67
    iput-object p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f090415:Landroid/view/View;

    .line 68
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding$3;-><init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;Lorg/wikipedia/feed/onthisday/OnThisDayFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->target:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 83
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayText:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->collapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 85
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->dayInfoTextView:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->eventsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 88
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->headerFrameLayout:Landroid/widget/FrameLayout;

    .line 89
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 90
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 91
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->errorView:Lorg/wikipedia/views/WikiErrorView;

    .line 92
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorDate:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->indicatorLayout:Landroid/widget/FrameLayout;

    .line 94
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDay:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->toolbarDropDown:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0901c7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0901c7:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0900eb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f0900eb:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f090415:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment_ViewBinding;->view7f090415:Landroid/view/View;

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
