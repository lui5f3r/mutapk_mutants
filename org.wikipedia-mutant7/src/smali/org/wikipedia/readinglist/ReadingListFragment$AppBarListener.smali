.class Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;
.super Ljava/lang/Object;
.source "ReadingListFragment.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/ReadingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListFragment$1;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    .line 574
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$800(Lorg/wikipedia/readinglist/ReadingListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$802(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z

    .line 576
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$900(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 578
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1002(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z

    goto :goto_1

    .line 579
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$800(Lorg/wikipedia/readinglist/ReadingListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$802(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z

    .line 581
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object v3, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->toolBarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1100(Lorg/wikipedia/readinglist/ReadingListFragment;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$900(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 583
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-static {v0, v2}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1002(Lorg/wikipedia/readinglist/ReadingListFragment;Z)Z

    .line 586
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object v4, v3, Lorg/wikipedia/readinglist/ReadingListFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 587
    invoke-static {v3}, Lorg/wikipedia/readinglist/ReadingListFragment;->access$1200(Lorg/wikipedia/readinglist/ReadingListFragment;)Landroidx/appcompat/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le v3, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 586
    :goto_2
    invoke-static {v0, v4, p1}, Lorg/wikipedia/util/DeviceUtil;->updateStatusBarTheme(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Z)V

    .line 589
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/readinglist/ReadingListActivity;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListActivity;->updateNavigationBarColor()V

    .line 591
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$AppBarListener;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method
