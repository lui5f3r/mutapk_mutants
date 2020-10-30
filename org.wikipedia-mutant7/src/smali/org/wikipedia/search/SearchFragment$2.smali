.class Lorg/wikipedia/search/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment$2;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment$2;->this$0:Lorg/wikipedia/search/SearchFragment;

    iget-object v0, v0, Lorg/wikipedia/search/SearchFragment;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment$2;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/wikipedia/search/SearchFragment;->access$200(Lorg/wikipedia/search/SearchFragment;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 118
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment$2;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
