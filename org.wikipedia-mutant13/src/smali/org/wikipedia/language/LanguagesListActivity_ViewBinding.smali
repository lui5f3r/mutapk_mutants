.class public Lorg/wikipedia/language/LanguagesListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LanguagesListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/language/LanguagesListActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/language/LanguagesListActivity_ViewBinding;-><init>(Lorg/wikipedia/language/LanguagesListActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity_ViewBinding;->target:Lorg/wikipedia/language/LanguagesListActivity;

    const v0, 0x7f0901e9

    const-string v1, "field \'progressBar\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/language/LanguagesListActivity;->progressBar:Landroid/view/View;

    .line 28
    const-class v0, Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f0901e8

    const-string v2, "field \'emptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    iput-object v0, p1, Lorg/wikipedia/language/LanguagesListActivity;->emptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 29
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901ea

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lorg/wikipedia/language/LanguagesListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity_ViewBinding;->target:Lorg/wikipedia/language/LanguagesListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity_ViewBinding;->target:Lorg/wikipedia/language/LanguagesListActivity;

    .line 39
    iput-object v1, v0, Lorg/wikipedia/language/LanguagesListActivity;->progressBar:Landroid/view/View;

    .line 40
    iput-object v1, v0, Lorg/wikipedia/language/LanguagesListActivity;->emptyView:Lorg/wikipedia/views/SearchEmptyView;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/language/LanguagesListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
